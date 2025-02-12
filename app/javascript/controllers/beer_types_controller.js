import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  connect() {
    console.log("Hola")
  }

  beerTypeHover(e) {
    console.log(e.target.dataset.beerType);
  }
}
