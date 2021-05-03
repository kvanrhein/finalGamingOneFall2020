class Explanation {
  //instance variables
 PImage s;
  Explanation() {  
    s = loadImage("slime.png");
  }
  
  void draw() {
    background(80);
    textSize(20);
    text("Welcome to the dungeon",80 ,300);
    text(" Im a slime thats here to help you navigate in this awful place", 100, 350);
    textSize(18);
    text("First:Skeletons have teleportation magic and will teleport you and the key randomly ", 30,400);
    textSize(20);
    text("Second: Minions have magic that will instakill you so DONT TOUCH EM ", 30, 450);
    image(s, 40,100,100,100);
  }
  
  void keyPressed() {
    //just go back to levelOne if key is pressed
    gameStage = 2;
    levelOne = new LevelOne(); 
    
  }
}
  
  
  
  
  
  
  
  
