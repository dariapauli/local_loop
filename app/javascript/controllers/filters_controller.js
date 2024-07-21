import { Controller } from "@hotwired/stimulus";


export default class extends Controller {
  static targets = [
    "selectCategory",
    "selectAgeGroup",
    "selectPrice",
    "showEvents"
  ]
  connect() {
    this.form = this.element.querySelector("form");
    this.form.addEventListener("change")
  }

  changeForm(event){
    event.preventDefault();
    this.form.requestSubmit();
  }

  filterCategory(event) {
    this.showEvents.target
  }

  filterAgeGroup(event) {
    console.log("miau")
  }

  filterPrice(event) {
    console.log("woof")
  }

}
