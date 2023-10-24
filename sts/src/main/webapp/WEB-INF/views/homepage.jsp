<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
<link rel="stylesheet" href="${path}/resources/css/mainStyle.css">
<link rel="stylesheet" href="${path}/resources/css/banner.css">
<script
	src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
<script src="https://kit.fontawesome.com/6779d7995e.js"
	crossorigin="anonymous"></script>
<body>
	<!-- -----------------< 메인배너 >----------------- -->
	<div>
		<div class="main-slider-container">
			<div class="main-slider">
				<div class="main-slide">
					<img src="${path}/resources/img/dartist_kimyoungjin.jpg">
				</div>
				<div class="main-slide">
					<img src="${path}/resources/img/noPaint.jpg">
				</div>
				<div class="main-slide">
					<img src="${path}/resources/img/leegunhee.jpg">
				</div>
				<div class="main-slide">
					<img src="${path}/resources/img/romanceFlowers.jpg">
				</div>
				<!-- 추가적인 이미지를 필요한 만큼 추가하세요 -->
			</div>
			<div class="main-slider-controls">
				<button class="main-prev-button"><</button>
				<a class="main-slide-counter"></a>
				<button class="main-play-pause-button">▶️</button>
				<button class="main-next-button">></button>
			</div>
		</div>
		<!-- -----------------< 캘린더 >----------------- -->
		<div class="calendar">
			<div class="calendar-container">
				<div class="calendar-header">
					<button class="prevMonth" id="prevMonth"><</button>
					<h3 class="currentMonth" id="currentMonth"></h3>
					<button class="nextMonth" id="nextMonth">></button>
				</div>
				<div class="calendar-grid" id="calendarGrid"></div>
			</div>
		</div>

		<!-- -----------------< 3버튼 >----------------- -->
		<div class="wrap">
			<ul class="tab-style tab-block">
				<li class="box"><input type="radio" id="tab1" name="tab"
					checked> <label for="tab1"
					onclick="showTabContent('.tab_cont', 0)">개인전</label></li>
				<li class="box"><input type="radio" id="tab2" name="tab">
					<label for="tab2" onclick="showTabContent('.tab_cont', 1)">단체전</label>
				</li>
				<li class="box"><input type="radio" id="tab3" name="tab">
					<label for="tab3" onclick="showTabContent('.tab_cont', 2)">공모
						소식</label></li>
			</ul>
			<!-- 슬라이드 -->
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div class="inner">
						<div class="con">
							<img src="${path}/resources/img/poster1.jpg">
							<h4>당신은 누구십니까?</h4>
							<p>2023.07.03 ~ 2023.09.07</p>
							<p>여성역사공유공간 서울여담채</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="inner">
						<div class="con">
							<img src="${path}/resources/img/poster2.jpg">
							<h4>펼침의 기호들</h4>
							<p>2023.08.10 ~ 2023. 08.21</p>
							<p>아트 포 랩 Art For Lab</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="inner">
						<div class="con">
							<img src="${path}/resources/img/poster3.jpg">
							<h4>나의 평안한 밤이 당신에게도</h4>
							<p>2023.08.18 ~ 2023.08.30</p>
							<p>갤러리 목</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="inner">
						<div class="con">
							<img src="${path}/resources/img/poster4.jpg">
							<h4>Green Motion</h4>
							<p>2023.08.22 ~ 2023.09.03</p>
							<p>청주미술창작스튜디오</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="inner">
						<div class="con">
							<img src="${path}/resources/img/poster5.jpg">
							<h4>사과 씨앗 같은것</h4>
							<p>2023.04.27 ~ 2024.02.12</p>
							<p>백남준 아트센터</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="inner">
						<div class="con">
							<img src="${path}/resources/img/poster6.jpg">
							<h4>Drunkard's Move</h4>
							<p>2023.08.23 ~ 2023.09.06</p>
							<p>대전테마예술창작센터</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="inner">
						<div class="con">
							<img src="${path}/resources/img/poster7.jpg">
							<h4>이상한 꿈 / 미제사건</h4>
							<p>2023.08.24 ~ 2023.08.30</p>
							<p>더 레퍼런스</p>
						</div>
					</div>
				</div>
			</div>
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
		</div>
	</div>
	<script>
    const swiper = new Swiper(".wrap", { // 프레임 요소명

      navigation: {
        nextEl: ".swiper-button-next", //다음 버튼 요소명
        prevEl: ".swiper-button-prev", //이전 버튼 요소명 
      }, 
      direction: "horizontal", // 스와이프방향
      spaceBetween: 0, 
      loop:true,
      centeredSlides:true, // 슬라이더 패널을 항상 가운데로 정렬
      speed: 1000, // 슬라이더 이동 속도 지정
      grabCursor: true, // 스와이프 시 마우스 포인터 모양 변경 
      slidesPerView:"auto", //css에 지정한 슬라이더의 크기를 반영
      effect:"coverflow", //이펙트 효과 지정
      slidesPerView: 4, // 한 번에 보여줄 슬라이드 개수

     coverflowEffect: {
      rotate: 20, //회전 각도 지정
      stretch: 100, //슬라이드 간의 당김 정도 지정
      depth: 300, //원근감 지정
      modifier: 1, // 중첩정도의 정도
      slideShadows: false, // 슬라이드의 그림자 생성 
     } 
 
    });
            /*-------------------<메인배너>--------------------*/
    const slider = document.querySelector(".main-slider");
	const slides = document.querySelectorAll(".main-slide");
	/*버튼 값주기*/ 
	const prevButton = document.querySelector(".main-prev-button");
	const nextButton = document.querySelector(".main-next-button");
	const playPauseButton = document.querySelector(".main-play-pause-button");
	/*슬라이더 버튼*/
	const slideCounter = document.querySelector(".main-slide-counter");

	let currentIndex = 0;
	/*버튼 재생정지*/ 
	let isPlaying = true;
	let intervalId;
	
	function nextSlide() {
	  currentIndex = (currentIndex + 1) % slides.length;
	  updateSliderPosition();
	  updateSlideCounter();
	}
	
	function prevSlide() {
	  currentIndex = (currentIndex - 1 + slides.length) % slides.length;
	  updateSliderPosition();
	  updateSlideCounter();
	}
	
	function updateSliderPosition() {
	  const offset = -currentIndex * 100;
	  slider.style.transform = 'translateX('+offset+'%)';
	}
	
	function updateSlideCounter() {
	  const currentNumber = currentIndex + 1;
	  slideCounter.textContent = currentNumber+"/"+slides.length;
	}
	
	function togglePlayPause() {
	  isPlaying = !isPlaying;
	  if (isPlaying) {
	    playPauseButton.textContent = "⏹";
	    intervalId = setInterval(nextSlide, 3000);
	  } else {
	    playPauseButton.textContent = "▶️";
	    clearInterval(intervalId);
	  }
	}
	
	prevButton.addEventListener("click", prevSlide);
	nextButton.addEventListener("click", nextSlide);
	playPauseButton.addEventListener("click", togglePlayPause);
	
	intervalId = setInterval(nextSlide, 4000); // 4초마다 슬라이드 변경
	
	updateSliderPosition();
	updateSlideCounter();
	
	// 캘린더
	
	const calendarGrid = document.getElementById("calendarGrid");
	const currentMonthElement = document.getElementById("currentMonth");
	const prevMonthButton = document.getElementById("prevMonth");
	const nextMonthButton = document.getElementById("nextMonth");
	
	let currentDate = new Date();
	
	function updateCurrentMonth() {
	    const options = { year: "numeric", month: "long" };
	    currentMonthElement.innerText = currentDate.toLocaleDateString("ko-KR", options);
	}
	
	prevMonthButton.addEventListener("click", () => {
	    currentDate.setMonth(currentDate.getMonth() - 1);
	    updateCurrentMonth();
	    renderCalendar();
	});
	
	nextMonthButton.addEventListener("click", () => {
	    currentDate.setMonth(currentDate.getMonth() + 1);
	    updateCurrentMonth();
	    renderCalendar();
	});
	
	updateCurrentMonth();
	
	const daysInMonth = new Date(currentDate.getFullYear(), currentDate.getMonth() + 1, 0).getDate();
	
	for (let i = 1; i <= daysInMonth; i++) {
	    const dayElement = document.createElement("div");
	    dayElement.className = "calendar-day";
	    dayElement.innerText = i;
	
	    if (i === new Date().getDate() && currentDate.getMonth() === new Date().getMonth()) {
	        dayElement.classList.add("today");
	    }
	
	    calendarGrid.appendChild(dayElement);
	}
	
	markDaysByInterval(7, "marked-day", currentDate); // 7일 간격으로 표시
	
	function markDaysByInterval(interval, className, currentDate) {
	    // Clear previously marked days
	    const markedDays = document.querySelectorAll(`.className`); // ${className}을 className이라 바꿈
	    markedDays.forEach((day) => {
	        day.classList.remove(className);
	    });
	
	    // Mark days at the specified interval
	    const daysInMonth = new Date(currentDate.getFullYear(), currentDate.getMonth() + 1, 0).getDate();
	    for (let i = 1; i <= daysInMonth; i++) {
	        if (i % interval === 1) {
	            const dayElement = document.querySelector(`.calendar-day:nth-child(`+ i + `)`);
	            dayElement.classList.add(className);
	        }
	    }
	}
	
	renderCalendar();
</script>
</body>
</html>