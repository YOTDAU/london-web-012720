const tweetsContainer = document.querySelector("#tweets");

const renderTweets = tweets => {
  tweets.forEach(tweet => {
    renderTweet(tweet);
  });
};

const renderTweet = tweet => {
  const t = new Tweet(tweet);
  tweetsContainer.append(t.div);
};

renderTweets(tweets);
