const initModalRented = () => {
  // get the button that opens the modal
  const buttons = document.querySelectorAll('#button-rented');
  // get the modal
  const modalsRented = document.querySelectorAll('#modal-rented');
  // get the span element that closes the modal
  const closingModals = document.querySelectorAll('.modal-rented-close');
  
  // When the user clicks on the button, open the modal
  buttons.forEach((button) => {
    button.addEventListener('click', () => {
      modalsRented.forEach((modal) => {
        modal.style.display = "block";
      });
    }); 
  });

  // When the user clicks on <span> (x), close the modal
  closingModals.forEach((close) => {
    close.addEventListener('click', () => {
      modalsRented.forEach((modal) => {
        modal.style.display = "none";
      });
    });
  }); 

  // When the user clicks anywhere inside the modal, close it 
  window.addEventListener('click', (event) => {
    modalsRented.forEach((modal) => {
      if (event.target == modal) {
        modal.style.display = "none";
      }
    });
  }); 
};

export { initModalRented };