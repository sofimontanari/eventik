import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="controller"
export default class extends Controller {

  static targets = ["checkbox", "fields"]

  connect() {
    console.log(this.element);
    console.log(this.checkboxTarget);
    console.log(this.fieldsTargets);
  }

  show(event) {

    const checkbox = event.target.checked;
    const fields = this.fieldsTargets;

    if (checkbox) {
      fields.forEach( (field) => { field.classList.remove('hidden')} );
    } else {
      fields.forEach( (field) => {field.classList.add('hidden')} );
    }
  }
}
