package com.art.project.common;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import org.springframework.util.FileCopyUtils;
import net.coobird.thumbnailator.Thumbnails;

public class UploadFileUtils {


    // 썸네일의 가로 너비와 세로 높이
    static final int THUMB_WIDTH = 300;
    static final int THUMB_HEIGHT = 300;

    // 파일 업로드 메서드
    public static String fileUpload(String uploadPath, String fileName, byte[] fileData, String ymdPath)
            throws Exception {
        // 고유 식별자 생성
        UUID uid = UUID.randomUUID();

        // 새로운 파일 이름 생성
        String newFileName = uid + "_" + fileName;
        String imgPath = uploadPath + ymdPath;

        // 대상 파일 객체 생성하고 파일 복사
        File target = new File(imgPath, newFileName);
        FileCopyUtils.copy(fileData, target);

        // 썸네일 파일 이름 생성
        String thumbFileName = "s_" + newFileName;
        File image = new File(imgPath + File.separator + newFileName);

        // 썸네일 파일 객체 생성하고 썸네일 생성
        File thumbnail = new File(imgPath + File.separator + "s" + File.separator + thumbFileName);
        if (image.exists()) {
            thumbnail.getParentFile().mkdirs();
            Thumbnails.of(image).size(THUMB_WIDTH, THUMB_HEIGHT).toFile(thumbnail);
        }
        return newFileName;
    }

    // 파일 업로드 경로 생성 메서드
    public static String calcPath(String uploadPath) {
        Calendar cal = Calendar.getInstance();
        String yearPath = File.separator + cal.get(Calendar.YEAR);
        String monthPath = yearPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
        String datePath = monthPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.DATE));

        // 디렉토리 생성
        makeDir(uploadPath, yearPath, monthPath, datePath);
        makeDir(uploadPath, yearPath, monthPath, datePath + File.separator + "s");

        return datePath;
    }

    // 디렉토리 생성 메서드
    private static void makeDir(String uploadPath, String... paths) {
        if (new File(paths[paths.length - 1]).exists()) {
            return;
        }

        for (String path : paths) {
            File dirPath = new File(uploadPath + path);

            if (!dirPath.exists()) {
                dirPath.mkdir();
            }
        }
    }
}