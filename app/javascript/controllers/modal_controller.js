import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
  static targets = ["modal"]

  connect() {
    console.log("hola modal");
    const modal = document.getElementById("beer-style-modal");
    if (modal) {
      modal.remove(); // Completely remove the modal from the DOM
    }
    console.log("modal removed")
  }
}
