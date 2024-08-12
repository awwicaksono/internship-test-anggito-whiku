document.addEventListener('DOMContentLoaded', function() {
    const selectItemsPerPage = document.getElementById('items-per-page');
    const selectDateFilter = document.getElementById('date-filter');
    const prevButton = document.getElementById('prev-page');
    const nextButton = document.getElementById('next-page');
    const pageInfo = document.getElementById('page-info');
    const cardContainer = document.querySelector('.card-container');
    
    let currentPage = 1;
    let itemsPerPage = parseInt(selectItemsPerPage.value, 10);
    let totalData = 0;
    let dateFilter = selectDateFilter.value;

    function fetchCards() {
        fetch(`fetch_cards.php?itemsPerPage=${itemsPerPage}&page=${currentPage}&filter=${dateFilter}`)
            .then(response => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.json();
            })
            .then(data => {
                console.log('Data fetched:', data); // Log data for debugging
                totalData = data.total;
                renderCards(data.data);
                updatePaginationControls();
            })
            .catch(error => console.error('Error fetching data:', error));
    }

    function renderCards(cards) {
        cardContainer.innerHTML = '';

        cards.forEach(cardData => {
            const card = document.createElement('div');
            card.classList.add('card');
            card.innerHTML = `
                <img src="asset/image/phone.jpg" alt="Gambar berita" loading="lazy">
                <div class="card-content">
                    <div class="card-date">${new Date(cardData.date).toLocaleDateString()}</div>
                    <h2>${cardData.title}</h2>
                </div>
            `;
            cardContainer.appendChild(card);
        });
    }

    function updatePaginationControls() {
        const totalPages = Math.ceil(totalData / itemsPerPage);
        prevButton.disabled = currentPage === 1;
        nextButton.disabled = currentPage >= totalPages;
        pageInfo.textContent = `Page ${currentPage}`;
    }

    function updateCardsDisplay() {
        itemsPerPage = parseInt(selectItemsPerPage.value, 10);
        dateFilter = selectDateFilter.value;
        currentPage = 1; // Reset to first page
        fetchCards();
    }

    // Initial fetch
    fetchCards();

    // Event listeners
    selectItemsPerPage.addEventListener('change', updateCardsDisplay);
    selectDateFilter.addEventListener('change', updateCardsDisplay);

    prevButton.addEventListener('click', function() {
        if (currentPage > 1) {
            currentPage--;
            fetchCards();
        }
    });

    nextButton.addEventListener('click', function() {
        const totalPages = Math.ceil(totalData / itemsPerPage);
        if (currentPage < totalPages) {
            currentPage++;
            fetchCards();
        }
    });
});
