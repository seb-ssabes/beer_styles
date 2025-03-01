import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["beerStylesList", "infoCard", "beerTypeData", "contentContainer"]

  connect() {
    console.log("Hola from Styles")
  }

  showList(e) {
    const beerTypeId = e.currentTarget.dataset.beerTypeId;
    const beerTypeName = e.currentTarget.dataset.beerTypeName;
    const beerTypeDescription = e.currentTarget.dataset.beerTypeDescription;
    const isFirstClick = !this.beerTypeDataTarget.innerHTML.trim();


    if (!isFirstClick) {
      this.beerTypeDataTarget.classList.add("opacity-0", "scale-95");
      this.beerStylesListTarget.classList.add("opacity-0", "scale-95");
    }

    const delay = isFirstClick ? 0 : 1600;

    setTimeout(() => {
      this.beerTypeDataTarget.innerHTML = `
        <div class="flex flex-col items-center text-center">
        <h2 class="text-2xl font-bold">${beerTypeName}</h2>
          <p class="italic text-lg">${beerTypeDescription}</p>
          </div>
      `;

      this.removeModalIfNeeded();

      fetch(`/beer_styles/beer_type_styles?beer_type_id=${beerTypeId}`)
      .then(response => response.text())
      .then(html => {
        this.beerStylesListTarget.innerHTML = html;

        this.contentContainerTarget.classList.remove("shrink");

        this.infoCardTarget.classList.remove("show");

        this.beerTypeDataTarget.classList.remove("opacity-0", "scale-95");
        this.beerStylesListTarget.classList.remove("opacity-0", "scale-95");
      })
      .catch(error => console.error('Error fetching beer styles:', error));
    }, delay);
  }

  showBeerStyle(e) {
    const beerStyleId = e.currentTarget.dataset.styleId;

    this.contentContainerTarget.classList.add("shrink");

    fetch(`/beer_styles/${beerStyleId}`)
      .then(response => response.text())
      .then(html => {
        this.removeModalIfNeeded();
        this.infoCardTarget.innerHTML = html;
        setTimeout(() => {
          this.infoCardTarget.classList.add("show");
        }, 1000);
      })
      .catch(error => console.error('Error fetching beer style details:', error));

    this.infoCardTarget.classList.remove("hidden", "opacity-0");
  }

  removeModalIfNeeded() {
    const existingModal = document.getElementById("beer-style-modal");
    if (existingModal) {
      existingModal.remove();
    }
  }

  closeModal(e) {
    e.preventDefault();
    this.removeModalIfNeeded();
  }
}
