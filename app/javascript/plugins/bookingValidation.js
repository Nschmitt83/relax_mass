const select1 = document.getElementById('massage_name');
const flatpickr = document.getElementById('datetimepicker');
const select2 = document.getElementById('time_select');
if (select1){
  select1.addEventListener('change', (event) => {
    changeButtonState(event.currentTarget.value, 0);
  });

  flatpickr.addEventListener('change', (event) => {
    changeButtonState(event.currentTarget.value, 1);
  });

  select2.addEventListener('change', (event) => {
    changeButtonState(event.currentTarget.value, 2);
  });


  const changeButtonState = (value, N) => {
    const button = document.getElementById('validation-button');
    const check = value != ""

    let v_arr = button.dataset.validation.split(',');
    v_arr[N] = check ? '1' : '0';
    button.dataset.validation = v_arr.toString();

    if (button.dataset.validation.split(',').every(b => b == '1')) { button.disabled = false }
    else { button.disabled = true };
  };
};
