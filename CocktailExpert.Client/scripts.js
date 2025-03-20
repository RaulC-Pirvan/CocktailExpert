function fetchData() {
  fetch("http://127.0.0.1:5000/data/get")
    .then((response) => {
      if (!response.ok) {
        throw new Error("Network response was not ok.");
      }
      return response.json();
    })
    .then((data) => {
      console.log(data);
      document.getElementById(
        "result"
      ).textContent = `Message: ${data.message}`;
    })
    .catch((error) => {
      console.error("There was a problem with the fetch operation: ", error);
      document.getElementById("result").textContent = "Failed to fetch data.";
    });
}

document.getElementById("fetchData").addEventListener("click", fetchData);

document.addEventListener("DOMContentLoaded", function () {
  document.getElementById("year").textContent = new Date().getFullYear();
  console.log("Current year: " + new Date().getFullYear());
});

document.addEventListener("DOMContentLoaded", function () {
  const ingredientButtons = document.querySelectorAll(".ingredient-container");
  const cocktailsSection = document.querySelector(".cocktail-card-content")
  const resetButton = document.querySelector(".accent-button");

  ingredientButtons.forEach((button) => {
    button.addEventListener("click", function () {
      const ingredientName = button.querySelector("p").textContent;

      const existingIngredient = cocktailsSection.querySelector(
        `[data-ingredient="${ingredientName}"]`
      );

      if (existingIngredient) {
        cocktailsSection.removeChild(existingIngredient);
        button.classList.remove("selected");
      } else {
        const selectedIngredient = button.cloneNode(true);

        selectedIngredient.setAttribute("data-ingredient", ingredientName);
        selectedIngredient.classList.add("selected");

        cocktailsSection.appendChild(selectedIngredient);

        button.classList.add("selected");
      }
    });
  });

  resetButton.addEventListener("click", function () {
    cocktailsSection.innerHTML = "";

    ingredientButtons.forEach((button) => {
      button.classList.remove("selected");
    });
  });
});
