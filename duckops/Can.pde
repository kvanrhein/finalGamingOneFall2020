
//---------------------Can------------------
class Can {
  float x;
  float y;
  float xVelo;
  int radius;
  PImage can;
  boolean red;
  boolean dead;

  Can(boolean red, PImage can, float x, float y, float xVelo) {
    this.x = x;
    this.y = y;
    this.xVelo = xVelo;
    this.can=can;
    this.radius = 50;
    this.red=red;
    this.dead = false;
  }
  boolean hit(float x, float y) {
    if (dead) {
      return  false;
    }
    if (dist(this.x, this.y, x, y) < 40) {
      this.dead = true;
    }
    return this.dead;
  }

  void draw() {
    if (dead) {
      return;
    }
    imageMode(CENTER);
    image(can, x, y);
    //  rect(x, y, radius * 2, radius * 2);
    if (x > width - radius) {
      x = width - radius;
      xVelo = -xVelo;
    }
    if (x < radius) {
      x = radius;
      xVelo = -xVelo;
    }

    if (red==true) {
    }
    x += xVelo;
  }
}
