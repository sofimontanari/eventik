import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="controller"
export default class extends Controller {

  static targets = ["passwords", "currentpass"]

  connect() {
    console.log(this.element);
  }

  showPassword(event){
    const checkpass = event.target.checked;
    const passwords = this.passwordsTargets;
    const currentpass = this.currentpassTarget;

    if (checkpass) {
      passwords.forEach((password) => {password.classList.remove('hidden')});
      currentpass.classList.add('hidden');
    } else {
      passwords.forEach((password) => {password.classList.add('hidden')});
      currentpass.classList.remove('hidden');
    }
  }
}
