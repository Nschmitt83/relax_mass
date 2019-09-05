import flatpickr from "flatpickr"
import "flatpickr/dist/themes/confetti.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"


flatpickr("#datetimepicker", {
  minDate: "today",
  inline: true,
  // enableTime: true,
  dateFormat: "Y-m-d",
  // minTime: "09:00",
  // maxTime: "16:59",

})


flatpickr("#datepicker", {
  minDate: "today",
  inline: true,
  dateFormat: "Y-m-d",
})
