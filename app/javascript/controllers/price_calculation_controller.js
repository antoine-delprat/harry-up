import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="price-calculation"
export default class extends Controller {
  static targets = ["start", "end", "final"]

  calculation() {
    if ((this.startTarget.value != null && this.endTarget.value != null) && (Date.parse(this.startTarget.value) < Date.parse(this.endTarget.value))) {
      const estimation = ((Date.parse(this.endTarget.value) - Date.parse(this.startTarget.value)) / 86400000) * parseInt(this.finalTarget.dataset.value);
      this.finalTarget.innerText = `${estimation} $`
    }
    else if ((this.startTarget.value != null && this.endTarget.value != null) && (Date.parse(this.startTarget.value) > Date.parse(this.endTarget.value))) {
      this.finalTarget.innerText = `pick valid dates 👀`
    }
  }
}
