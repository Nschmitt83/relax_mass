const date_massage_form = document.querySelector('.booking_date');
const type_massage_form = document.querySelector('.massage_name');
const date_massage_modal = document.querySelector('.date_modal');
const type_massage_modal = document.querySelector('.massage_type_modal');



if (date_massage_form) {
  const bookReservation = () => {
    date_massage_form.addEventListener('change', (event) => {
      date_massage_modal.innerText = `${date_massage_form.value}`;
      console.log(date_massage_modal.innerText);
    })
  }
}
