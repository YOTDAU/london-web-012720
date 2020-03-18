const TRAINERS_URL = "http://localhost:3000/trainers";
const POKEMONS_URL = "http://localhost:3000/pokemons";

const getTrainers = () => fetch(TRAINERS_URL).then(res => res.json());
const deletePokemon = pokemon =>
  fetch(`${POKEMONS_URL}/${pokemon.id}`, {
    method: "DELETE"
  });
const postPokemon = pokemon =>
  fetch(POKEMONS_URL, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      Accept: "application/json"
    },
    body: JSON.stringify({ pokemon })
  }).then(res => res.json());
const patchPokemon = pokemon =>
  fetch(`${POKEMONS_URL}/${pokemon.id}`, {
    method: "PATCH",
    headers: {
      "Content-Type": "application/json",
      Accept: "application/json"
    },
    body: JSON.stringify({ pokemon })
  }).then(res => res.json());
const postTrainer = trainer =>
  fetch(TRAINERS_URL, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      Accept: "application/json"
    },
    body: JSON.stringify(trainer)
  }).then(res => res.json());

const trainersContainer = document.querySelector("main");
const newTrainerForm = document.querySelector("#new-trainer");

newTrainerForm.addEventListener("submit", event => {
  event.preventDefault();
  const newTrainer = {
    name: event.target.elements.name.value
  };
  postTrainer(newTrainer).then(trainer => renderTrainer(trainer));
});

const renderTrainers = trainers => {
  trainers.forEach(trainer => renderTrainer(trainer));
};

const renderTrainer = trainer => {
  //     <div class="card" data-id="1"><p>Prince</p>
  // <button data-trainer-id="1">Add Pokemon</button>
  // </div>
  const trainerDiv = document.createElement("div");

  trainerDiv.className = "card";

  const speciesInput = document.createElement("input");
  speciesInput.placeholder = "species";
  const nameInput = document.createElement("input");
  nameInput.placeholder = "nickname";

  const addPokemonButton = document.createElement("button");
  addPokemonButton.innerText = "Add pokemon";

  if (trainer.pokemons.length >= 6) {
    addPokemonButton.disabled = true;
  }

  addPokemonButton.addEventListener("click", () => {
    const newPokemon = {
      trainer_id: trainer.id,
      nickname: nameInput.value,
      species: speciesInput.value
    };
    postPokemon(newPokemon).then(newPokemon => {
      const ul = trainerDiv.querySelector("ul");
      renderTrainerPokemon(newPokemon, ul, addPokemonButton);
      trainer.pokemons.push(newPokemon);
      if (trainer.pokemons.length >= 6) {
        addPokemonButton.disabled = true;
      }
    });
  });

  const trainerName = document.createElement("p");
  trainerName.innerText = trainer.name;

  trainerDiv.append(trainerName, speciesInput, nameInput, addPokemonButton);

  renderTrainerPokemons(trainer, trainerDiv, addPokemonButton);

  trainersContainer.append(trainerDiv);
};

const renderTrainerPokemons = (trainer, trainerDiv, addPokemonButton) => {
  // <ul>
  //     <li>Zachariah (Ditto) <button class="release" data-pokemon-id="141">Release</button></li>
  //     <li>Mittie (Farfetch'd) <button class="release" data-pokemon-id="149">Release</button></li>
  //     <li>Rosetta (Eevee) <button class="release" data-pokemon-id="150">Release</button></li>
  //     <li>Rod (Beedrill) <button class="release" data-pokemon-id="151">Release</button></li>
  // </ul>

  const ul = document.createElement("ul");

  trainer.pokemons.forEach(pokemon => {
    renderTrainerPokemon(pokemon, ul, addPokemonButton);
  });

  trainerDiv.append(ul);
};

const renderTrainerPokemon = (pokemon, ul, addPokemonButton) => {
  //     <li>Jacey (Kakuna) <button class="release" data-pokemon-id="140">Release</button></li>
  const li = document.createElement("li");

  li.innerText = `${pokemon.nickname} (${pokemon.species}) lvl: ${pokemon.level}`;

  const releaseButton = document.createElement("button");
  releaseButton.className = "release";
  releaseButton.innerText = "X";

  const levelButton = document.createElement("button");
  levelButton.innerText = "^";

  levelButton.addEventListener("click", () => {
    pokemon.level++;
    patchPokemon(pokemon).then(() => {
      li.innerText = `${pokemon.nickname} (${pokemon.species}) lvl: ${pokemon.level}`;

      li.append(releaseButton, levelButton);
    });
  });

  releaseButton.addEventListener("click", () => {
    deletePokemon(pokemon).then(() => {
      addPokemonButton.disabled = false;
      li.remove();
    });
  });

  li.append(releaseButton, levelButton);

  ul.append(li);
};

getTrainers().then(renderTrainers);
