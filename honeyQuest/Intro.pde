class Intro {
//instance variables
  //PImage bear;
  PImage in;
  AudioPlayer ap;
  
   Intro() {  
   //this.bear = loadImage(imageName);
       in = loadImage("introBackground.png");
       ap = minim.loadFile("lol.mp3");
       ap.cue(0);
       ap.play();
  }
  
  void draw() {
    background(80);
    fill(0);
    image(in, 0, 0, 800, 600);
    fill(#9c5d36);
    textSize(20);
    text("Use WASD to move", 305, 420);
  }
  
  void keyPressed() {
    //just go back to levelOne if key is pressed
    gameStage = 1;
    levelOne = new LevelOne();
    ap.pause ();
   
   
  }
  void mouseClicked(){
  
  }
}
