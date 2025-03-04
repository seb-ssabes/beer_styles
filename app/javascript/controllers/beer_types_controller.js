import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["beerText", "beersWord"]

  connect() {
    console.log("Hola from Types");
    this.hoverTimeout = null;
  }

  beerTypeHover(e) {
    const type = e.currentTarget.dataset.beerTypeName;
    const text = this.beerTextTarget.classList;
    const icons = document.querySelectorAll(".beer-icon");
    const hoveredIcon = e.currentTarget.querySelector(".beer-icon");

    clearTimeout(this.hoverTimeout);

    text.remove("animate-slide-up");
    void this.beerTextTarget.offsetWidth;

    this.beerTextTarget.innerText = type;

    text.add("animate-slide-up");

    icons.forEach(icon => {
      if (icon !== hoveredIcon) {
        icon.classList.add("opacity-40");
        icon.classList.remove("dark-gray");
      } else {
        icon.classList.add("dark-gray");
      }
    })

    e.currentTarget.classList.add("hovered-border");
  }

  beerHoverLeave(e) {
    const text = this.beerTextTarget.classList;
    const icons = document.querySelectorAll(".beer-icon");
    const target = e.currentTarget;

    this.hoverTimeout = setTimeout(() => {
      this.beerTextTarget.innerText = "any Style";

      text.remove("animate-slide-up");
      void this.beerTextTarget.offsetWidth;

      text.add("animate-slide-up");

      target.classList.remove("hovered-border");
    }, 500);
    icons.forEach(icon => icon.classList.remove("opacity-40", "dark-gray"));
  }
}
