class Level3Complete {
  //instance variables
  PImage b;
  Level3Complete() {  
     b = loadImage("Boss.png");
  }
  
  void draw() {
    background(#ff0000);
    textSize(50);
    text("Welcome Mortal", 20, 300);
    text("This will be your resting place ", 30, 350);
    textSize(40);
    text(" I will burn you with my lava magic",20,450);
   image(b, 40,100,100,100);
  }
  
  void keyPressed() {
    //just go back to intro screen if key is pressed
    gameStage = 8;
    boss = new Boss();
  }
}
