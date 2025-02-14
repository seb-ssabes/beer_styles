import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["beerText"]

  connect() {
    console.log("Hola from Types")
  }

  beerTypeHover(e) {
    const type = e.target.dataset.beerType;
    const text = this.beerTextTarget.classList;
    const icons = document.querySelectorAll(".beer-icon")
    const hoveredIcon = e.currentTarget.querySelector(".beer-icon")

    text.remove("animate-slide-up");
    void this.beerTextTarget.offsetWidth;

    this.beerTextTarget.innerText = type;

    text.add("animate-slide-up");

    icons.forEach(icon => {
      if (icon !== hoveredIcon) {
        icon.classList.add("opacity-40");
      }
    })
  }

  beerHoverLeave() {
    const text = this.beerTextTarget.classList;
    const icons = document.querySelectorAll(".beer-icon");


    this.beerTextTarget.innerText = "any Beer Type";

    text.remove("animate-slide-up");
    void this.beerTextTarget.offsetWidth;

    text.add("animate-slide-up");

    icons.forEach(icon => icon.classList.remove("opacity-40"));
  }
}
