
const checkboxes = document.querySelectorAll('.check');

checkboxes.forEach(checkbox => {
    checkbox.addEventListener('change', () => {
        let checkedCount = 0;
        checkboxes.forEach(box => {
            if (box.checked) {
                checkedCount++;
            }
        });
        if (checkedCount > 2) {
            checkbox.checked = false;
            alert('Bạn chỉ được chọn tối đa 2 slot!');
        }
    });
});

const checkmeo = document.querySelectorAll('.meo');

checkmeo.forEach(checkboxmeo => {
    checkboxmeo.addEventListener('change', () => {
        let Count = 0;
        checkmeo.forEach(boxx => {
            if(boxx.checked) {
                Count++;
            }
        });
        if (Count > 2) {
            checkboxmeo.checked = false;
            alert('Bạn chỉ được chọn tối đa 2 slot!');
        }
    });
});

const emailInput = document.querySelector('#email');

emailInput.addEventListener('input', () => {
  const email = emailInput.value;
  const isValidEmail = email.endsWith('@fpt.edu.vn');

  if (!isValidEmail) {
    emailInput.classList.add('invalid');
    emailInput.setCustomValidity('Email must have @fpt.edu.vn last');
  } else {
    emailInput.classList.remove('invalid');
    emailInput.setCustomValidity('');
  }
});

