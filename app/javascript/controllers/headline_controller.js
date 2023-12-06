import { Controller } from "@hotwired/stimulus"
import Typed from 'typed.js';

export default class extends Controller {
  static values = {
    name: String,
    talk: String,
    bookings: String,
    events: String,
    talk: String,
    new: String,
    edit: String
  }

  connect() {
    const headerElement = this.element.querySelector('.header-all');

    if (this.hasNameValue) {
      this.activateTyped(headerElement, `Hey ${this.nameValue},<br>wanna do some<br>culture?`);
    } else if (this.hasTalkValue) {
      this.activateTyped(headerElement, this.talkValue);
    } else if (this.hasBookingsValue) {
      this.activateTyped(headerElement, this.bookingsValue);
    } else if (this.hasEventsValue) {
      this.activateTyped(headerElement, this.eventsValue);
    } else if (this.hasNewValue) {
      this.activateTyped(headerElement, this.newValue);
    } else if (this.hasEditValue) {
      this.activateTyped(headerElement, this.editValue);
    }
  }

  activateTyped(element, text) {
    new Typed(element, {
      strings: [text],
      typeSpeed: 40
    });
  }
}
