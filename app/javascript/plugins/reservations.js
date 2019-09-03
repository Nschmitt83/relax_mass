const date_massage_form = document.querySelector('.booking_date');
const type_massage_form = document.querySelector('#booking_massage');
const date_massage_modal = document.querySelector('.date_modal');
const type_massage_modal = document.querySelector('.massage_type_modal');

if(date_massage_form) {
  date_massage_form.addEventListener('change', (event) => {
    date_massage_modal.innerText = `${date_massage_form.value}`;
    type_massage_modal.innerText = `${type_massage_form.value}`;
  })
}

// console.log(type_massage_form.value);
