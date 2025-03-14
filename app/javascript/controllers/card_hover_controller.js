import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["ibuExplainer", "srmExplainer"]

  connect() {
    console.log("Hola from Card Hover")
  }

  ibuHover() {
    this.ibuExplainerTarget.classList.remove("opacity-0", "scale-95", "pointer-events-none");
    this.ibuExplainerTarget.classList.add("opacity-100", "scale-100", "pointer-events-auto");
  }

  ibuExit() {
    this.hideTimeout = setTimeout(() => {
      this.ibuExplainerTarget.classList.add("opacity-0", "scale-95", "pointer-events-none");
      this.ibuExplainerTarget.classList.remove("opacity-100", "scale-100", "pointer-events-auto");
    }, 200);
  }

  srmHover() {
    this.srmExplainerTarget.classList.remove("opacity-0", "scale-95", "pointer-events-none");
    this.srmExplainerTarget.classList.add("opacity-100", "scale-100", "pointer-events-auto");
  }

  srmExit() {
    this.hideTimeout = setTimeout(() => {
      this.srmExplainerTarget.classList.add("opacity-0", "scale-95", "pointer-events-none");
      this.srmExplainerTarget.classList.remove("opacity-100", "scale-100", "pointer-events-auto");
    }, 200);
  }

  keepOpen() {
    clearTimeout(this.hideTimeout);
  }
}
