import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["beerStylesList"]

  connect() {
    console.log("Hola from Styles")
  }

  showList(event) {
    const beerTypeId = event.target.getAttribute('data-beer-type')
    console.log("Selected Beer Type:", beerTypeId);


    fetch(`/beer_styles/beer_type_styles?beer_type_id=${beerTypeId}`)
      .then (response => response.json())
      .then (data => {
        this.beerStylesListTarget.innerHTML = '';
        data.forEach(style => {
          const styleElement = document.createElement('div')
          styleElement.innerText = style.name
          this.beerStylesListTarget.appendChild(styleElement)
        });
      })
      .catch(error => console.error('Error fetching beer styles:', error));
  }
}
