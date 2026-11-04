// Affiche la date et l'heure de chargement de la page
document.getElementById("date").textContent =
  "Page chargée le " + new Date().toLocaleString("fr-FR");

// Animation : les étapes du pipeline s'allument l'une après l'autre
const steps = document.querySelectorAll(".step");
let i = 0;
setInterval(() => {
  steps.forEach(s => s.classList.remove("active"));
  steps[i].classList.add("active");
  i = (i + 1) % steps.length;
}, 1000);