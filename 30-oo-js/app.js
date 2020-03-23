// game

class Entity {
  constructor(x, y, sprite) {
    this.x = x;
    this.y = y;
    this.sprite = sprite;
  }

  move(x, y) {
    this.x += x;
    this.y += y;
  }
  update = () => {
    //   canvas.render(this.sprite, this.x, this.y)
  };
}

// player

class Player extends Entity {
  moveFixed = () => {
    //   preserves lexical this
    // console.log(this);
    this.x += 10;
    this.y += 10;
  };
}

const player = new Player(500, 300, "player.png");

console.log(player);

player.move(10, -60);
console.log(player);

setTimeout(player.moveFixed, 1);
setTimeout(() => console.log(player), 2);

class Enemy extends Entity {
  constructor(x, y) {
    super(x, y, "enemy.png");
  }

  move(x, y) {
    //   playFootstepSound()
    super.move(x, y);
  }
}

// enemy
// enemy

const enemy1 = new Enemy(200, 150);
