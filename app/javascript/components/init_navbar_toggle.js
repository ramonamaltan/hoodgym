const initNavbarToggle = () => {
  const btnHamburger = document.getElementById("btnHamburger");
  const hamburgerIcon = document.getElementById("hamburgerIcon");
  const closeHamburger = document.getElementById("closeHamburger");
  btnHamburger.addEventListener('click', () => {
    console.log('open');
    if (hamburgerIcon.classList.contains('block')) {
      // don't show hamburgerIcon
      hamburgerIcon.classList.remove('block');
      hamburgerIcon.classList.add('none');
      // show x
      closeHamburger.classList.remove('none');
      closeHamburger.classList.add('block');
    } else {
      // show hamburgIcon
      hamburgerIcon.classList.add('block');
      hamburgerIcon.classList.remove('none');
      // hide x
      closeHamburger.classList.remove('block');
      closeHamburger.classList.add('none');
    }
  });

};

export { initNavbarToggle };
