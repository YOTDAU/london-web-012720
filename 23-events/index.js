// FUNCTIONS

// function()

function sum(num1, num2) {
  return num1 + num2;
}

const sumAgain = function(num1, num2) {
  return num1 + num2;
};

// () =>

const sumArrow = (num1, num2) => {
  return num1 + num2;
};

const sumImpliedReturnArrow = (num1, num2) => num1 + num2;
const double = num => num * 2;
const three = () => 3;

const array = [1, 2, 34];
array.map(function(number) {
  return number * 2;
});
array
  .map(number => number * 2)
  .map(number => number * 2)
  .map(number => number * 2);

// EVENT LISTENERS

document.querySelector("a").addEventListener("click", e => {
  e.target.href = "https://bing.com";
});

const addNoiseButton = document.querySelector("ul > li:last-child > button");
const newNoiseInput = document.querySelector("ul > li:last-child > input");
const noises = document.querySelector("ul");

const createNewNoise = newNoiseText => {
  const newLi = document.createElement("li");
  newLi.innerText = newNoiseText;
  noises.append(newLi);
};

addNoiseButton.addEventListener("click", () => {
  createNewNoise(newNoiseInput.value);
});

const userForm = document.querySelector("form");

const handleFormSubmit = event => {
  event.preventDefault();
  const userObject = {
    firstname: event.target.elements.firstname.value,
    lastname: event.target.elements.lastname.value,
    nickname: event.target.elements.nickname.value,
    middlename: event.target.elements.middlename.value
  };

  const keys = ["firstname", "lastname", "nickname", "middlename"];

  const otherUserObject = {};

  keys.forEach(key => {
    otherUserObject[key] = event.target.elements[key].value;
  });
  console.log("send this to server", userObject, otherUserObject);
};

userForm.addEventListener("submit", handleFormSubmit);

document.addEventListener("scroll", () => {
  if (document.body.scrollHeight - window.innerHeight - window.scrollY === 0) {
    console.log("reached the bottom");
  }
});

const keyEl = document.querySelector("#key");

document.addEventListener("keydown", e => {
  keyEl.innerText = `Key pressed: ${e.key}`;
});

const mousePosEl = document.querySelector("#mousePos");

document.addEventListener("mousemove", e => {
  mousePosEl.innerText = `Mouse pos: x: ${e.x} y: ${e.y}`;
});

document.addEventListener("mouseover", e => {
  if (e.target.style) {
    e.target.style.backgroundColor = "pink";
  }
});
document.addEventListener("mouseout", e => {
  if (e.target.style) {
    e.target.style.backgroundColor = "";
  }
});
