import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="popup"
export default class extends Controller {
  static targets = ["list", "map", "attChatList", "orgChatList"]

  connect() {
    console.log("hello");
    // console.log(this.mapTarget);
  }

  checked(event) {
    const isChecked = event.target.checked;
    this.listTarget.style.display = isChecked ? 'none' : 'block';
    this.mapTarget.style.display = isChecked ? 'block' : 'none';
  }

  toggleChatList(event) {
    const isChecked = event.target.checked;
    this.attChatListTarget.style.display = isChecked ? 'none' : 'block';
    isChecked ? this.orgChatListTarget.classList.remove("d-none") : this.orgChatListTarget.classList.add("d-none")  ;
  }
}
