import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["beerStylesList", "infoCard", "beerTypeData"]

  connect() {
    console.log("Hola from Styles")
  }

  showList(e) {
    const beerTypeId = e.currentTarget.dataset.beerTypeId;
    const beerTypeName = e.currentTarget.dataset.beerTypeName;
    const beerTypeDescription = e.currentTarget.dataset.beerTypeDescription;

    this.beerTypeDataTarget.innerHTML = `
      <div class="flex flex-col items-center text-center">
        <h2 class="text-2xl font-bold">${beerTypeName}</h2>
        <p class="italic text-lg">${beerTypeDescription}</p>
      </div>
    `

    this.removeModalIfNeeded();

    fetch(`/beer_styles/beer_type_styles?beer_type_id=${beerTypeId}`)
      .then(response => response.text())
      .then(html => {
        this.beerStylesListTarget.innerHTML = html;
      })
      .catch(error => console.error('Error fetching beer styles:', error));
  }

  showBeerStyle(e) {
    const beerStyleId = e.currentTarget.dataset.styleId;
    console.log("Fetching details for beer style:", beerStyleId);

    fetch(`/beer_styles/${beerStyleId}`)
      .then(response => response.text())
      .then(html => {
        this.removeModalIfNeeded();
        this.infoCardTarget.innerHTML = html;

      })
      .catch(error => console.error('Error fetching beer style details:', error));
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
