let slideIndex = 0;
showSlides();

function showSlides() {
    let i;
    let slides = document.getElementsByClassName("slides")[0];
    let slidesContainer = document.getElementsByClassName("slider")[0];
    for (i = 0; i < slides.children.length; i++) {
        slides.children[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.children.length) {slideIndex = 1}    
    slides.children[slideIndex-1].style.display = "block";  
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}

function moveSlide(n) {
    slideIndex += n;
    let slides = document.getElementsByClassName("slides")[0].children;
    if (slideIndex > slides.length) {slideIndex = 1}
    if (slideIndex < 1) {slideIndex = slides.length}
    for (let i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    slides[slideIndex-1].style.display = "block";  
}