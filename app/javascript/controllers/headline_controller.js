import { Controller } from "@hotwired/stimulus"
import Typed from 'typed.js';

// Connects to data-controller="headline"
export default class extends Controller {
  static values = {
    name: String
  }


  connect() {
    this.activateTyped(this.nameValue)
  }

  activateTyped(name){
    new Typed('.header-all', {
    strings: [`Hey ${name},<br>wanna do some<br>culture?`],
    typeSpeed: 40
  });

  }
}
