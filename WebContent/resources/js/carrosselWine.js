const slider = document.querySelectorAll('.slider');
const textSobre = document.querySelectorAll('.textSobre');
const textSubtitle = document.querySelectorAll('.textSubtitle');
const valor = document.querySelectorAll('.valor');
const vinho = document.querySelectorAll('.vinho02');
const textBottomSubtittle = document.querySelectorAll('.textBottomSubtittle');
const textBottomResenha = document.querySelectorAll('.TextBottomResenha');
/* const btnPrev = document.getElementById('prev-button'); */
const btnNext = document.getElementById('next-button');



let currentSlide = 0;

function hideSlider() {
	slider.forEach(item => item.classList.remove('on'))
	textSobre.forEach(item => item.classList.remove('on'))
	textSubtitle.forEach(item => item.classList.remove('on'))
	valor.forEach(item => item.classList.remove('on'))
	vinho.forEach(item => item.classList.remove('on'))
	textBottomSubtittle.forEach(item => item.classList.remove('on'))
	textBottomResenha.forEach(item => item.classList.remove('on'))
}

function showSlider() {
	slider[currentSlide].classList.add('on')
	textSobre[currentSlide].classList.add('on')
	textSubtitle[currentSlide].classList.add('on')
	valor[currentSlide].classList.add('on')
	vinho[currentSlide].classList.add('on')
	textBottomSubtittle[currentSlide].classList.add('on')
	textBottomResenha[currentSlide].classList.add('on')
}

function nextSlider() {
	hideSlider()
	if(currentSlide === slider.length -1){
		currentSlide = 0
	}else{
		currentSlide++
	}
	showSlider()
}

/*function prevSlider() {
	hideSlider()
	if(currentSlide === 0){
		currentSlide = slider.length -1
	}else{
		currentSlide--
	}
	showSlider()
} */

btnNext.addEventListener('click', nextSlider);
/*btnPrev.addEventListener('click', prevSlider); */

console.log(slider);
console.log(textSobre);