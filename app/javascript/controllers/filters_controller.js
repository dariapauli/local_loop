import { Controller } from "@hotwired/stimulus";


export default class extends Controller {
  static targets = [
    selectCategory
    selectAgeGroup
    selectPrice
    selectDate
  ]
  connect() {
    console.log("Filters controller succesfully connected")
  }

  def filterCategory(event) {

  }

  def filterAgeGroup(event) {

  }

  def filterPrice(event) {

  }

  def filterDate(event) {

  }
}
