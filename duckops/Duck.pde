class Duck {
  float x;
  float y;
  float xVelo;
  int radius;
  PImage duck;
  boolean red;
  boolean dead;
  //img

  Duck(boolean red, PImage duck, float x, float y, float xVelo) {
    this.x = x;
    this.y = y;
    this.xVelo = xVelo;
    this.duck=duck;
    this.radius = 50;
    this.red=red;
    this.dead = false;
  }

  boolean hit(float x, float y) {
    if(dead){
      return  false;
    }
    if (dist(this.x, this.y, x, y) < 50) {
      this.dead = true;
    }
    return this.dead;
  }


void draw() {
  if (dead) {
    return;
  }
  imageMode(CENTER);
  image(duck, x, y);
  // ellipse(x, y, radius * 2, radius * 2);
  if (x > width - radius) {
    x = width - radius;
    xVelo = -xVelo;
  }
  if (x < radius) {
    x = radius;
    xVelo = -xVelo;
  }
  x += xVelo;
  if (red==true) {
  }
}
}
