// 모달창 팝업
const popTermBtn = document.querySelector(".pop-term-Btn");
const modalBg = document.getElementById("modalBg");
const modalContent = document.getElementById("modalContent");
const closeModalBtn = document.getElementById("closeModalBtn");

popTermBtn.addEventListener("click", () => {
	modalBg.style.display = "flex";
	document.body.style.overflow = 'hidden';
});

closeModalBtn.addEventListener("click", () => {
	closeModal();
});

modalBg.addEventListener("click", (event) => {
	if (event.target === modalBg) {
		closeModal();
	}
});

function closeModal() {
	modalBg.style.display = "none";
	document.body.style.overflow = 'auto';
}