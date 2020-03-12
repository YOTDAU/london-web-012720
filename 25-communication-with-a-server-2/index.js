const API_URL = "http://localhost:3000/books";

const getBooksButton = document.querySelector("button");
const booksList = document.querySelector("#books");
const bookForm = document.querySelector("form");

const renderBook = book => {
  const bookLi = document.createElement("li");

  bookLi.innerText = `${book.title} by ${book.author}`;

  bookLi.addEventListener("click", () => {
    fetch(`${API_URL}/${book.id}`, {
      method: "DELETE"
    }).then(() => bookLi.remove());
  });

  booksList.append(bookLi);
};

const renderBooks = books => {
  books.forEach(book => {
    renderBook(book);
  });

  //   const bookEls = books.map(book => {
  //     const bookLi = document.createElement("li");

  //     bookLi.innerText = book.title;

  //     return bookLi;
  //   });

  //   booksList.append(...bookEls);
};

bookForm.addEventListener("submit", event => {
  event.preventDefault();
  // get values
  const newBook = {
    title: event.target.elements.title.value,
    author: event.target.elements.author.value
  };

  // post values to API
  const configObject = {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      Accept: "application/json"
    },
    body: JSON.stringify(newBook)
  };
  fetch(API_URL, configObject)
    .then(res => res.json())
    .then(book => {
      renderBook(book);
    });

  //   clear form
  // render book
});

getBooksButton.addEventListener("click", () => {
  fetch(API_URL)
    .then(res => res.json())
    .then(books => {
      booksList.innerHTML = "";
      renderBooks(books);
    });
});
