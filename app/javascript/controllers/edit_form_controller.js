import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="controller"
export default class extends Controller {

  static targets = ["passwords", "currentpass", "label"]

  connect() {
    console.log(this.element);
    console.log(this.labelTarget);
  }

  showPassword(event){
    const checkpass = event.target.checked;
    const passwords = this.passwordsTargets;
    const currentpass = this.currentpassTarget;
    const hint = this.currentpassTarget.nextElementSibling;
    const label = this.labelTarget;

    if (checkpass) {
      passwords.forEach((password) => {password.classList.remove('hidden')});
      label.innerHTML = 'Contraseña actual*';
      hint.textContent = "Ingresá tu contraseña actual";
    } else {
      passwords.forEach((password) => {password.classList.add('hidden')});
    }
  }
}
