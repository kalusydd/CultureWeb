import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="categoryselect"
export default class extends Controller {
  static targets = ["input"]

  connect() {
    this.counter = 0
    this.clickedArray = []
    this.bigClick()
  }

  activate(event) {

      if (event.currentTarget.checked) {
        this.counter += 1
      } else {
        this.counter -= 1
      }
  }

  bigClick() {

    this.inputTargets.forEach(element => {

      element.addEventListener("click", (e) => {
        this.checkArray()
        let clickObject = {}
        clickObject.clicked = e.currentTarget.checked
        clickObject.id = e.currentTarget.value

      this.clickedArray.push(clickObject)
      console.log(this.clickedArray)


      })
    });
  }

  checkArray() {
    if(this.clickedArray.length === 3) {

      this.inputTargets.forEach(element => {
        console.log(element)
      })
    }
  }
}
