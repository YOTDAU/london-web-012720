const cats = [
  {
    name: "Jasper",
    breed: "Cat",
    age: 8 / 12,
    favouriteFoods: ["felix", "sardines"]
  },
  {
    name: "Archie",
    breed: "Exotic short hair",
    age: 2,
    favouriteFoods: ["some weird thai sausage type thing", "sardines"]
  },
  {
    name: "Curtain",
    breed: "Siamese",
    age: 2,
    favouriteFoods: ["some weird thai sausage type thing", "sardines"]
  },
  {
    name: "Daisy",
    breed: "Siamese",
    age: 2,
    favouriteFoods: ["some weird thai sausage type thing", "sardines"]
  }
];

// destructuring

// arrays

// const jasper = cats[0];
// const archie = cats[1];

const [jasper, archie, ...samsCats] = cats;
// const [first, , third] = cats;
// const [first, [samsCats]] = cats;

console.log(jasper, archie, samsCats);

// objects

// const name = jasper.name;
// const age = jasper.age;
// const breed = jasper.breed;

const { name, age, breed } = jasper;

name;
age;
breed;

const renderToy = ({ name, likes, img }) => {
  //   const { name, likes, img } = toy;
  // innerText = name
  // innerText = likes
  // src = img
};

// key value assignment shortcut

// const name = "Jess";
// const breed = "postmans cat";
// const age = 30;

const newCat = {
  name,
  breed,
  age
};

// QUESTIONS

// dynamic object keys

let cat = {
  name: "",
  breed: ""
};

const handleCatNameChange = event => {
  cat.name = event.target.value;
};
const handleCatAgeChange = event => {
  cat.age = event.target.value;
};

const handleFormChange = event => {
  cat[event.target.name] = event.target.value;
};

// ES6 Spread Operator
const handleFormChangeAndReturnNewCatObject = event => {
  return {
    ...cat,
    name: "sam",
    name: "bruno",
    [event.target.name]: event.target.value
  };
};

const jasperClone = Object.assign({}, jasper);
const jasperCloneSpread = {
  ...jasper
};

const newArray = cats;
const newSpreadArray = [...cats];
const newArraySlice = cats.slice();
console.log(
  newArray.length,
  cats.length,
  newSpreadArray.length,
  newArraySlice.length
);
// cats.push({});
console.log(
  newArray.length,
  cats.length,
  newSpreadArray.length,
  newArraySlice.length
);

const numbers = [1, 1, 4, 7, 4];
const uniqueNumbers = [...new Set(numbers)];

const uniq = array => [...new Set(array)];

console.log(uniqueNumbers);

// arrow functions

function myFunc() {}
const myOtherFunc = function() {};
const myArrFunc = () => {};
const myOneLineArrFunc = () => "hello";

// callbacks

const doSomeMaths = (number, maths) => {
  return maths(number);
};

const double = number => number * 2;

console.log(doSomeMaths(5, double));
console.log(doSomeMaths(5, num => num * num));

// QUESTIONS

// iterators

// HOF - higher order functions

// forEach;

cats.forEach(cat => {
  console.log(`hello ${cat.name}`);
  //   renderCat(cat)
});

// map;

const doubledAgeKittenAges = cats
  .map(cat => cat.age)
  .map(double)
  .filter(age => age < 1);
// const doubledAges = ages;

// filter;
// cats = [{},{},{}]
const onlyKittens = cats.filter(cat => {
  // return true or false
  return cat.age < 1;
});
// onlyKittens = [{}]

const deleteCat = cat => {
  cats = cats.filter(c => c.name !== cat.name);
};

// find;

const findByName = name => {
  return cats.find(cat => cat.name === name);
};

// reduce;

const totalAges = cats.reduce((cumulativeValue, cat) => {
  return cumulativeValue + cat.age;
}, 0);

const foods = cats.reduce((foodsSoFar, cat) => {
  return [...foodsSoFar, ...cat.favouriteFoods];
}, []);

console.log(foods);

console.log(uniq(cats.map(cat => cat.favouriteFoods).flat()));

// QUESTIONS

// currying and partial application

const createCatButtonHandler = cat => {
  return () => {
    console.log(cat);
  };
};

const renderCat = cat => {
  catButton.addEventListener("click", createCatButtonHandler(cat));
};

const mutliply = multiplier => {
  return number => multiplier * number;
};

const doubler = mutliply(2);
const tripler = mutliply(3);

doubler(5);
tripler(5);

mutliply(10)(5);

// QUESTIONS

// classes
