const tweetsContainer = document.querySelector("#tweets");

const renderTweets = tweets => {
  tweets.forEach(tweet => {
    renderTweet(tweet);
  });
};

const renderTweet = tweet => {
  const div = schlep.createElement("div", {
    children: [
      schlep.createElement("p", { innerText: tweet.user }),
      schlep.createElement("h4", { innerText: tweet.content }),
      schlep.createElement("button", {
        innerText: `Likes: ${tweet.likes}`,
        onClick: event => {
          tweet.likes++;
          event.target.innerText = `Likes: ${tweet.likes}`;
        }
      })
    ]
  });
  tweetsContainer.append(div);
};

renderTweets(tweets);
