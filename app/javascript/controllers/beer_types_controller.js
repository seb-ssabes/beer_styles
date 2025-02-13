import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["beerText"]

  beerTypeHover(e) {
    const type = e.target.dataset.beerType;

    this.beerTextTarget.classList.remove("animate-slide-up");
    void this.beerTextTarget.offsetWidth;

    this.beerTextTarget.innerText = type;

    this.beerTextTarget.classList.add("animate-slide-up");
  }

  beerHoverLeave() {
    console.log("leaving")
    this.beerTextTarget.innerText = "any Beer Type";

    this.beerTextTarget.classList.remove("animate-slide-up");
    void this.beerTextTarget.offsetWidth;

    this.beerTextTarget.classList.add("animate-slide-up");
  }
}
