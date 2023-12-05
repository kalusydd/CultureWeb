import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="popup"
export default class extends Controller {
  static targets = ["list", "map"]

  connect() {
    console.log("hello");
    console.log(this.mapTarget);
  }

  checked(event) {
    const isChecked = event.target.checked;
    this.listTarget.style.display = isChecked ? 'none' : 'block';
    this.mapTarget.style.display = isChecked ? 'block' : 'none';
  }
}
