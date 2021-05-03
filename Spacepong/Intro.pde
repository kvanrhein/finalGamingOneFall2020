class Intro {
  //instance variables
  PImage room;
  Intro() {  
    room = loadImage("galaxy.png");
  }
  
  void draw() {
    background(room);
    textSize(100);
    fill(255);
    text("Start hit any key", 5, 200);
    textSize(20);
    text("Instructions:", 5,260);
    text(" You are the spaceship and are working to save your planet. Bounce the asteroid ",5,300);
    text("off of your spaceship to the opposing side 10 times and you proceed to the next ",5,340);
    text ("level. Go save the day!  Tip: Stay below the dashed lines",5,380);
    text(" Your spaceship is controlled by your cursor", 5, 420);
    
  }
  
  void keyPressed() {
    //just go back to levelOne if key is pressed
    gameStage = 1;
    levelOne = new LevelOne();   

  }

void mouseClicked() {
    //just go back to levelOne if key is pressed
    gameStage = 1;
    levelOne = new LevelOne();    
  }
}
