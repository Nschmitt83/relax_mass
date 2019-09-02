import flatpickr from "flatpickr"
import "flatpickr/dist/themes/confetti.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

const bookingForm = document.getElementById("booking-form-div")

if (bookingForm) {
  console.log(bookingForm);
  const bookings = JSON.parse(bookingForm.dataset.bookings);
  console.log(bookings);



flatpickr("#datetimepicker", {
  minDate: "today",
  inline: true,
  enableTime: true,
  dateFormat: "Y-m-d H:i",
  minTime: "09:00",
  maxTime: "16:59",
  "disable": bookings,
})
}

flatpickr("#datepicker", {
  minDate: "today",
  inline: true,
  dateFormat: "Y-m-d",
})
