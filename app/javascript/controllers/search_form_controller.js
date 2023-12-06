import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-form"
export default class extends Controller {
  static targets = ["form"]

  connect() {
    console.log("meow")
  }

  submit(event) {
    console.log("CLEAR!!")
    //event.preventDefault();
  }
}
