int gameStage;
int squarePosX;
int squarePosY;
int squareSize = 50;



//Game levels, in no particular order
GameOver gameOver;
GameWin gameWin;
Intro intro;
LevelOne levelOne;
LevelTwo levelTwo;
LevelThree levelThree;
Level1Complete level1Complete;
Level2Complete level2Complete;
Level3Complete level3Complete;
Boss boss;
Explanation explanation;


void setup() {
  size(800, 600);
  gameStage = 0;
  intro = new Intro();
   size(800, 600);
   
  
 
}

void draw() {
 
  switch(gameStage) {
    case 0:  //intro rules
      intro.draw();
    break;
    case 1:  //level 1
      explanation.draw();
    break;
    case 2:  //level 1
      levelOne.draw();
    break;
    case 3:  //level 1
      level1Complete.draw();
    break;
    case 4:  //level 2
      levelTwo.draw();
    break;
    case 5:  //level 1
      level2Complete.draw();
    break;
    case 6:  //level 3
      levelThree.draw();
    break;
    case 7:  //level 1
      level3Complete.draw();
    break;
    case 8:  //level 1
      boss.draw();
    break;
    case 9:
      gameWin.draw();
    break;
    case 10:  //game over
      gameOver.draw();
    break;
  }
    
}

void keyPressed() {
  switch(gameStage) {
    case 0:  //intro rules
      intro.keyPressed();
    break;
    case 1:  //level 1
     explanation.keyPressed();
    break;
    case 2:  //level 1
     levelOne.keyPressed();
    break;
    case 3:  //intro rules
      level1Complete.keyPressed();
    break;
    case 4:  //level 2
     levelTwo.keyPressed();
    break;
    case 5:  //intro rules
      level2Complete.keyPressed();
    break;
     case 6:  //level 3
     levelThree.keyPressed();
    break;
    case 7:  //intro rules
      level3Complete.keyPressed();
    break;
    case 8:  //intro rules
      boss.keyPressed();
    break;
    case 9:  //game win
      gameWin.keyPressed();
    break;
    case 10:  //game over
      gameOver.keyPressed();
    break;
  }
  
}
