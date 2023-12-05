import { Controller } from "@hotwired/stimulus"
import Typed from 'typed.js';

export default class extends Controller {
  static values = {
    name: String,
    talk: String
  }

  connect() {
    const headerElement = this.element.querySelector('.header-all');

    if (this.hasNameValue) {
      this.activateTyped(headerElement, `Hey ${this.nameValue},<br>wanna do some<br>culture?`);
    } else if (this.hasTalkValue) {
      this.activateTyped(headerElement, this.talkValue);
    }
  }

  activateTyped(element, text) {
    new Typed(element, {
      strings: [text],
      typeSpeed: 40
    });
  }
}
