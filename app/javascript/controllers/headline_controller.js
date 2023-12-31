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
    edit: String,
    chat: String
  }

  connect() {
    const headerElement = this.element.querySelector('.header-all');
    const headertwoElement = this.element.querySelector('.htwo');
    const headerindexElement = this.element.querySelector('.header-index');

    if (this.hasNameValue) {
      this.activateTyped(headerindexElement, `Hey ${this.nameValue},<br>wanna do some<br>culture?`);
    } else if (this.hasTalkValue) {
      this.activateTyped(headerElement, this.talkValue);
    } else if (this.hasBookingsValue) {
      this.activateTyped(headerElement, this.bookingsValue);
    } else if (this.hasEventsValue) {
      this.activateTyped(headerElement, this.eventsValue);
    } else if (this.hasChatValue) {
      this.activateTyped(headertwoElement, this.chatValue);
    } else if (this.hasNewValue) {
      this.activateTyped(headerindexElement, this.newValue);
    } else if (this.hasEditValue) {
      this.activateTyped(headerindexElement, this.editValue);
    }
  }

  activateTyped(element, text) {
    new Typed(element, {
      strings: [text],
      typeSpeed: 40
    });
  }
}
