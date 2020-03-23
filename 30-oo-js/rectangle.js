class Rectangle {
  width = 10;
  height = 10;
  x;
  y;

  constructor(x, y, width, height) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
    Rectangle.all.push(this);
  }

  get area() {
    return this.width * this.height;
  }

  static overlapping(rect1, rect2) {
    return Math.random() < 0.5;
  }
}

Rectangle.all = [];

const rect = new Rectangle(0, 0, 10, 20);
const rect2 = new Rectangle(9, 0, 10, 20);

console.log(Rectangle.overlapping(rect, rect2));

console.log(Rectangle.all);
