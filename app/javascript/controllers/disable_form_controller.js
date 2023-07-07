import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="controller"
export default class extends Controller {
  static targets = ["formFields"];

  connect() {
    this.toggleFormFields();
  }

  toggleFormFields() {
    const supplierCheckbox = document.getElementById("supplier");
    const formFields = this.formFieldsTarget;

    if (supplierCheckbox.checked) {
      formFields.classList.remove("hidden");
    } else {
      formFields.classList.add("hidden");
    }
  }
}
