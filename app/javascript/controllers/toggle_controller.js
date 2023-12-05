import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="popup"
export default class extends Controller {
  static targets = ["list", "map", "attending", "organising"]

  connect() {
    console.log("hello");
    console.log(this.mapTarget);
  }

  checked(event) {
    const isChecked = event.target.checked;
    this.listTarget.style.display = isChecked ? 'none' : 'block';
    this.mapTarget.style.display = isChecked ? 'block' : 'none';
  }

  chat_checked(event) {
    const isChecked = event.target.checked;
    this.attendingTarget.style.display = isChecked ? 'none' : 'block';
    this.organisingTarget.style.display = isChecked ? 'block' : 'none';
  }
}
