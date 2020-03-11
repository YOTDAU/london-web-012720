const wait = (time, callback) => {
  const start = Date.now();
  console.log("waiting for", time);
  while (start + time > Date.now()) {}
  console.log("done waiting");
  callback();
};

const waitAsync = (time, callback) => {
  setTimeout(() => {
    callback();
  }, time);
};

// wait(500, () => console.log("done 1"));
// wait(500, () => console.log("done 6"));
// wait(500, () => console.log("done 7"));
// wait(500, () => console.log("done 8"));
console.log("more code evnets etc");

waitAsync(2000, () => console.log("done 2"));
waitAsync(2000, () => console.log("done 3"));
waitAsync(2000, () => console.log("done 4"));
waitAsync(2000, () => console.log("done 5"));

const makeRequest = () => {
  return new Promise((resolve, reject) => {
    XH(() => {
      if (Math.random() < 0.5) {
        resolve(new Response(body, 200));
      } else {
        reject('{"message":"Response code 500"}');
      }
    }, 1000);
  });
};

const promise = makeRequest();

promise
  .then(json => JSON.parse(json))
  .then(data => console.log(data))
  .then(() => makeRequest())
  .then(json => JSON.parse(json))
  .then(data => console.log(data))
  .catch(error => console.error("pps", error));

// promise
//   .then(function(json) {
//     return JSON.parse(json);
//   })
//   .then(function(data) {
//     return console.log(data);
//   })
//   .then(function(json) {
//     return JSON.parse(json);
//   })
//   .then(function(data) {
//     return console.log(data);
//   });

const redditPromise = fetch("https://www.reddit.com/r/javascript.json");

const jsonifyResponse = response => response.json();

// const jsonifyResponse = response => {
//   return response.json();
// };

// function jsonifyResponse(response) {
//   return response.json();
// }

const renderPost = post => {
  const postEl = document.createElement("div");
  postEl.innerText = post.data.title;
  document.body.append(postEl);
};

const renderRedditPosts = postData => {
  console.log(postData);
  postData.data.children.forEach(renderPost);
};

redditPromise.then(jsonifyResponse).then(data => renderRedditPosts(data));

fetch("https://www.reddit.com/r/coys.json")
  .then(res => res.json())
  .then(data => renderRedditPosts(data));

// fetch("https://www.reddit.com/r/coys.json")
// .then(res => res.json())
// .then(renderRedditPosts);
