const actual_payment_modal = document.querySelector('.Checkout.is-desktop');
const wanted_payment_modal = document.querySelector('.wanted_payment_modal');

if(actual_payment_modal) {
  actual_payment_modal.addEventListener('change', (event) => {
    wanted_payment_modal.innerText = `${actual_payment_modal.value}`;
  })
}

// console.log(actual_payment_modal.value);
// console.log(wanted_payment_modal.value);
