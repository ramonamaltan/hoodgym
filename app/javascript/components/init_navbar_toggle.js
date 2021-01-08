const initNavbarToggle = () => {
  const btnHamburger = document.getElementById("btnHamburger");
  const hamburgerIcon = document.getElementById("hamburgerIcon");
  const closeHamburger = document.getElementById("closeHamburger");
  btnHamburger.addEventListener('click', () => {
    console.log('open');
    // toggle hamburgerIcon
    hamburgerIcon.classList.toggle('block');
    hamburgerIcon.classList.toggle('none');
    // toggle x
    closeHamburger.classList.toggle('none');
    closeHamburger.classList.toggle('block');
  });

};

export { initNavbarToggle };
