import flatpickr from "flatpickr"
import "flatpickr/dist/themes/confetti.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"


flatpickr("#datetimepicker", {
  minDate: "today",
  inline: true,
  dateFormat: "Y-m-d",
  defaultDate: "today",
  "disable": [
        function(date) {
            // return true to disable
            return date.getDay() === 0 ;
        }
    ],
    "locale": {
        "firstDayOfWeek": 1 // start week on Monday
    }
})


flatpickr("#datepicker", {
  minDate: "today",
  inline: true,
  dateFormat: "Y-m-d",
})
