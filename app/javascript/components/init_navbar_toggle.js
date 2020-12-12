const initNavbarToggle = () => {
  const x = document.getElementById("myTopnav");
  x.addEventListener('click', () => {
    if (x.className === "topnav") {
      x.className += " responsive";
    } else {
      x.className = "topnav";
    }
  });

};

export { initNavbarToggle };
