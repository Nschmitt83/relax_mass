const bookingDates = document.getElementById("bookings-dates");

const timeSelect = document.getElementById("time_select");

if (bookingDates){
  const bookings = JSON.parse(bookingDates.dataset.bookings_dates);

  const allHours = ["9H", "10H", "11H", "12H", "13H", "14H", "15H", "16H", "17H", "18H", "19H", "20H"];


  const dateInput = document.getElementById("datetimepicker");

  dateInput.addEventListener("change", (event) => {
    const dateSelected = dateInput.value;
    const bookingsHours = // you can finish the sentence on the other line
    bookings.filter(date => date.substring(0, 10) === dateSelected )// Filter by date
            .map(d => d.substring(11, 13) + "H"); // fetch hours
    const hours = allHours.filter(x => !bookingsHours.includes(x)); // allhours - bookingshours
    const saved_value = timeSelect.value;
    timeSelect.innerHTML = '<option value="">Choisissez votre horaire</option>';
    hours.forEach((h) => {
      const opt  = document.createElement('option');
      // create text node to add to option element (opt)
      opt.appendChild( document.createTextNode(h) );
      opt.value = h;
      timeSelect.appendChild(opt);
      timeSelect.value = hours.includes(saved_value) ? saved_value : "";
    });
  });
};
