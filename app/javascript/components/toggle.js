function hideProprietaireStuff() {
  const locataire = document.querySelector(".btn-prop");
  const proprietaire = document.querySelector(".btn-loc");

  locataire.addEventListener("click", (event) => {
    const divLoc = document.querySelector(".loc");
    const divProp = document.querySelectorAll(".prop");
    divProp.forEach((item) => {
      console.log(item.innerText);
      item.style.display = "block";
    });
    divLoc.style.display = "none";
    locataire.disabled = true;
    proprietaire.disabled = false;
    locataire.classList.remove("enabled");
    locataire.classList.add("btn-primary");
    proprietaire.classList.add("enabled");
    proprietaire.classList.remove("btn-primary");

  });
}

export { hideProprietaireStuff };

function hideLocataireStuff() {
  const locataire = document.querySelector(".btn-prop");
  const proprietaire = document.querySelector(".btn-loc");

  proprietaire.addEventListener("click", (event) => {
    const divLoc = document.querySelector(".loc");
    const divProp = document.querySelectorAll(".prop");
    divProp.forEach((item) => {
      console.log(item.innerText);
      item.style.display = "none";
    });
    divLoc.style.display = "block";
    locataire.disabled = false;
    proprietaire.disabled = true;
    locataire.classList.add("enabled");
    locataire.classList.remove("btn-primary");
    proprietaire.classList.remove("enabled");
    proprietaire.classList.add("btn-primary");
  });
}

export { hideLocataireStuff };
