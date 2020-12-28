const initModalRented = () => {
  // get the button that opens the modal
  const btnRentedByYou = document.getElementById('button-rented');
  // get the modal
  const modalRented = document.getElementById('modal-rented');
  // get the span element that closes the modal
  const closeModal = document.querySelector('.modal-rented-close');
  
  // When the user clicks on the button, open the modal
  btnRentedByYou.onclick = function() {
    modalRented.style.display = "block";
  }

  // When the user clicks on <span> (x), close the modal
  closeModal.onclick = function () {
    modalRented.style.display = "none"
  }
  // When the user clicks anywhere outside of the modal, close it 
  window.onclick = function(event) {
    if (event.target == modalRented) {
      modalRented.style.display = "none"
    }
  }
};

export { initModalRented };
