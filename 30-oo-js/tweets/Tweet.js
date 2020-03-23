class Tweet {
  constructor(tweet) {
    this.tweet = tweet;

    this.div = document.createElement("div");
    this.p = document.createElement("p");
    this.h4 = document.createElement("h4");
    this.likes = document.createElement("button");

    this.likes.addEventListener("click", this.likeTweet);

    this.div.append(this.p, this.h4, this.likes);

    this.render();
  }

  likeTweet = () => {
    this.tweet.likes++;
    this.render();
  };

  render() {
    this.h4.innerText = this.tweet.content;
    this.p.innerText = this.tweet.user;
    this.likes.innerText = `Likes: ${this.tweet.likes}`;
  }
}

// function likeTweet() {

// }

// const likeTweet = () => {

// }
