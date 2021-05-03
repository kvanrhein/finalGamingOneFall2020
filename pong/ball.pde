class Ball {
  float x;
  float y;
  float xVelo;
  float yVelo;
  int c;
  int radius;
  boolean dead;
  
  Ball(float x, float y, float xVelo, float yVelo) {
    this.x = x;
    this.y = y;
    this.xVelo = xVelo;
    this.yVelo = yVelo;
    this.radius = 20;
    this.dead = false;
    
}
  
  void draw() {
    
    if(dead==false) {
    fill(#23eb23);
    ellipse(x, y, radius * 1, radius * 1);
    update();
    }
    
}
   
  void update() {
    if (x > width - radius) {
      x = width - radius;
      xVelo = -xVelo;
    }
    if (x < radius) {
      x = radius;
      xVelo = -xVelo;
    }
    
    if (y > height - radius) {
      y = height - radius;
      dead = true;
      lives--;
      
  }
    
    if (y < radius) {
      y = radius;
      yVelo = -yVelo;
    }
        
    if (!keyPressed) {
        x += xVelo;
        y += yVelo;
    }  
   
}
  
  void bounceVertical() {
    yVelo = -yVelo;
  }
  
  void bounceHorizontal() {
    xVelo = -xVelo;
  }
}
