import { Controller } from "@hotwired/stimulus";

export default class extends Controller {

  connect() {

  }

  updateEvents(event) {
    const url = new URL (window.location.href)
    const resetUrl = new URL (window.location)
    if (event.currentTarget.name === "category") {
      url.searchParams.delete("category")
      url.searchParams.set("category", event.currentTarget.value)
    } else if (event.currentTarget.name === "age_group") {
      url.searchParams.delete("age_group")
      url.searchParams.set("age_group", event.currentTarget.value)
    } else if (event.currentTarget.name === "price") {
      url.searchParams.delete("price")
      url.searchParams.set("price", event.currentTarget.value)
    } else if (event.currentTarget.name === "button") {
      resetUrl
    }

    fetch(`${url.href}`,
      {
        headers: { "Accept": "application/json" }
      }
    )
      .then(response => response.json())
      .then((data) => {
        this.element.outerHTML = data.filtered_events
      })
  }

}
