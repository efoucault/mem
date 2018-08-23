function displayRecapBooking() {
  const recap = document.querySelector(".btn-recap");
  const message = document.querySelector(".btn-message");
  const review = document.querySelector(".btn-review");

  console.log(recap)
  recap.addEventListener("click", (event) => {
    const divRecap = document.querySelector(".recap");
    const divMessage = document.querySelector(".message");
    const divReview = document.querySelector(".review");

    divRecap.style.display = "block";
    divMessage.style.display = "none";
    divReview.style.display = "none";

    recap.disabled = true;
    message.disabled = false;
    review.disabled = false;
    recap.classList.remove("enabled");
    recap.classList.add("btn-primary");
    message.classList.add("enabled");
    message.classList.remove("btn-primary");
    review.classList.add("enabled");
    review.classList.remove("btn-primary");
  });
}

export { displayRecapBooking };

function displayMessageBooking() {
  const recap = document.querySelector(".btn-recap");
  const message = document.querySelector(".btn-message");
  const review = document.querySelector(".btn-review");

  message.addEventListener("click", (event) => {
    const divRecap = document.querySelector(".recap");
    const divMessage = document.querySelector(".message");
    const divReview = document.querySelector(".review");

    divRecap.style.display = "none";
    divMessage.style.display = "block";
    divReview.style.display = "none";

    recap.disabled = false;
    message.disabled = true;
    review.disabled = false;
    recap.classList.add("enabled");
    recap.classList.remove("btn-primary");
    message.classList.remove("enabled");
    message.classList.add("btn-primary");
    review.classList.add("enabled");
    review.classList.remove("btn-primary");
  });
}

export { displayMessageBooking };

function displayReviewBooking() {
  const recap = document.querySelector(".btn-recap");
  const message = document.querySelector(".btn-message");
  const review = document.querySelector(".btn-review");

  review.addEventListener("click", (event) => {
    const divRecap = document.querySelector(".recap");
    const divMessage = document.querySelector(".message");
    const divReview = document.querySelector(".review");

    divRecap.style.display = "none";
    divMessage.style.display = "none";
    divReview.style.display = "block";

    recap.disabled = false;
    message.disabled = false;
    review.disabled = true;
    recap.classList.add("enabled");
    recap.classList.remove("btn-primary");
    message.classList.add("enabled");
    message.classList.remove("btn-primary");
    review.classList.add("enabled");
    review.classList.add("btn-primary");
  });
}

export { displayReviewBooking };
