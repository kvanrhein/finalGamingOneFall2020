class Gun {
  float x;
  float y;
  float angle;

  Gun (float x, float y) { 
    this.x=x;
    this.y=y;
    this.angle=0;
  }

  void draw() {
    pushMatrix();
    fill(#ff0000);
    translate(x,y);
    rotate(angle);
    //rectMode(CENTER);
    rect(0, 0-40, 10, 40);
    popMatrix();
  }
}
