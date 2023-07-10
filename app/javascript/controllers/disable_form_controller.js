import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="controller"
export default class extends Controller {
  static targets = ["fields", "checkbox"];

  connect() {
    this.hide();
  }

  hide() {

    const checkbox = document.getElementById('user_supplier');
    const fields = this.fieldsTargets;

    if (checkbox.checked) {
      fields.forEach(field => field.classList.remove('hidden'));
    } else {
      fields.forEach(field => field.classList.add('hidden'));
    }
  }
}
