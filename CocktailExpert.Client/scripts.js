document.addEventListener("DOMContentLoaded", function () {
  const ingredientButtons = document.querySelectorAll(".ingredient-container");
  const cocktailsSection = document.querySelector(".cocktail-card-content");
  const resetButton = document.querySelector(".accent-button");

  // Fetch current ingredient states from the backend
  function fetchIngredients() {
    fetch("http://127.0.0.1:5000/data/get")
      .then((response) => response.json())
      .then((data) => {
        if (data.ingredients) {
          updateUI(data.ingredients);
        }
      })
      .catch((error) => console.error("Error fetching ingredients:", error));
  }

  // Update the UI based on fetched ingredient states
  function updateUI(ingredientList) {
    ingredientButtons.forEach((button) => {
      const ingredientName = button.querySelector("p").textContent;
      const state = ingredientList.find((item) => item.includes(ingredientName));

      if (state && state.startsWith("enabled")) {
        button.classList.add("selected");
      } else {
        button.classList.remove("selected");
      }
    });
  }

  // Send updated ingredient states to the backend
  function updateIngredients() {
    const selectedIngredients = Array.from(ingredientButtons).map((button) => {
      const ingredientName = button.querySelector("p").textContent;
      return button.classList.contains("selected")
        ? `enabled ${ingredientName}`
        : `disabled ${ingredientName}`;
    });

    fetch("http://127.0.0.1:5000/data/update", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ ingredients: selectedIngredients }),
    })
      .then((response) => response.json())
      .then((data) => console.log("Updated successfully:", data))
      .catch((error) => console.error("Error updating ingredients:", error));
  }

  // Handle ingredient selection toggling
  ingredientButtons.forEach((button) => {
    button.addEventListener("click", function () {
      button.classList.toggle("selected");
      updateIngredients();
    });
  });

  // Reset button functionality
  resetButton.addEventListener("click", function () {
    ingredientButtons.forEach((button) => button.classList.remove("selected"));
    updateIngredients();
  });

  // Initial fetch on page load
  fetchIngredients();
});
