const messages = document.querySelectorAll(".message");

messages.forEach(element => element.remove());

document.querySelector("body").append(messages[0]);
document.querySelector("body").append(messages[1]);

const navBar = document.createElement("nav");

document.body.append(navBar);
navBar.innerText = "welcome to my app";
// navBar.innerHTML = "<button>welcome to my app</button>";

const navbutton = navBar.querySelector("button");

console.log(navbutton);
