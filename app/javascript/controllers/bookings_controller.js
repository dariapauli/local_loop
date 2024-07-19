import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["eventList", "participationList", "participationBox", "eventsBox"]

  connect() {
    this.participationBoxTarget.classList.add("d-none")
  }

  hideColumnParticipation(event) {
    this.participationListTarget.classList.remove("active")
    this.participationBoxTarget.classList.add("d-none")
    this.eventListTarget.classList.add("active")
    this.eventsBoxTarget.classList.remove("d-none")
  }

  hideColumnCreation(event) {
    this.eventsBoxTarget.classList.add("d-none")
    this.participationBoxTarget.classList.remove("d-none")
    this.participationListTarget.classList.add("active")
    this.eventListTarget.classList.remove("active")
  }

}
