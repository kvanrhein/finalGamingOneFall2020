class Plate {
  float x;
  float y;
  float xVelo;
  int radius;
  PImage plate;
  boolean red;
   boolean dead;

  Plate(boolean red, PImage plate, float x, float y, float xVelo) {
    this.x = x;
    this.y = y;
    this.xVelo = xVelo;
    this.plate=plate;
    this.radius = 50;
    this.red=red;
    this.dead = false;
  }
   boolean hit(float x, float y) {
    if(dead){
      return  false;
    }
    if (dist(this.x, this.y, x, y) < 60) {
      this.dead = true;
    }
    return this.dead;
  }

  void draw() {
      if (dead) {
    return;
  }
    imageMode(CENTER);
    image(plate, x, y);
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
    if(red==true){
    
    }
  }
}
