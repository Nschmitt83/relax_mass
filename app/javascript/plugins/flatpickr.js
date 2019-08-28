import flatpickr from "flatpickr"
import "flatpickr/dist/themes/confetti.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr("#datepicker", {
  minDate: "today",
  inline: true,
  enableTime: true,
  dateFormat: "Y-m-d H:i"
})

