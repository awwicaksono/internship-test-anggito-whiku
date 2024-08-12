document.addEventListener('scroll', function() {
    const scrolled = window.pageYOffset;
    const bannerImage = document.querySelector('.banner img');
    const bannerText = document.querySelector('.banner-content');

    // Efek parallax untuk gambar dan teks
    bannerImage.style.transform = `translateY(${scrolled * 0.3}px)`;
    bannerText.style.transform = `translate(-50%, calc(-50% + ${scrolled * 0.15}px))`;
});
