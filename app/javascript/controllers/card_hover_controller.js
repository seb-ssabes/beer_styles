import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["ibuExplainer", "srmExplainer"]

  connect() {
    console.log("hola from Card Hover")
  }

  ibuHover() {
    this.ibuExplainerTarget.classList.remove("opacity-0", "scale-95");
    this.ibuExplainerTarget.classList.add("opacity-100", "scale-100");
  }

  ibuExit() {
    this.ibuExplainerTarget.classList.add("opacity-0", "scale-95");
    this.ibuExplainerTarget.classList.remove("opacity-100", "scale-100");
  }

  srmHover() {
    this.srmExplainerTarget.classList.remove("opacity-0", "scale-95");
    this.srmExplainerTarget.classList.add("opacity-100", "scale-100");
  }

  srmExit() {
    this.srmExplainerTarget.classList.add("opacity-0", "scale-95");
    this.srmExplainerTarget.classList.remove("opacity-100", "scale-100");
  }
}
