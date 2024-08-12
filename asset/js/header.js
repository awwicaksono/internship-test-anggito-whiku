document.addEventListener('DOMContentLoaded', function() {
    const header = document.querySelector('header');
    let lastScrollTop = 0; // Posisi scroll terakhir

    window.addEventListener('scroll', function() {
        const currentScroll = window.pageYOffset || document.documentElement.scrollTop;

        if (currentScroll > lastScrollTop) {
            // Scroll ke bawah
            header.style.top = "-60px"; // Sesuaikan dengan tinggi header
        } else {
            // Scroll ke atas
            header.style.top = "0";
        }

        lastScrollTop = currentScroll <= 0 ? 0 : currentScroll; // Untuk posisi scroll yang kecil
    });
});
