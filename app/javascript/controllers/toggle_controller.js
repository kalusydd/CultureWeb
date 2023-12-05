import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="popup"
export default class extends Controller {
  static targets = ["list", "mapstyle"]

  connect() {
    console.log("hello");
    // this.mapTarget.style.display = 'none'
  }

  checked(event) {
    const isChecked = event.target.checked;
    this.listTarget.style.display = isChecked ? 'none' : 'block';
    this.mapstyleTarget.classList.toggle("d-none")

    // this.listTarget.classList.toggle("map")
    // this.mapTarget.classList.toggle("list")
  }
}
