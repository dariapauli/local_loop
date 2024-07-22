import { Controller } from "@hotwired/stimulus";

export default class extends Controller {

  connect() {

  }

  updateEvents(event) {
    const url = new URL (window.location.href)
    if (event.currentTarget.name === "category") {
      url.searchParams.delete("category")
      url.searchParams.set("category", event.currentTarget.value)
    } else if (event.currentTarget.name === "age_group") {
      url.searchParams.delete("age_group")
      url.searchParams.set("age_group", event.currentTagret.value)
    } else {
      info = "No filters selected"
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
