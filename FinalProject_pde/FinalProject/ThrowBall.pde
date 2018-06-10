public class ThrowedBall{
  int x, y;
  int speed;
  int yReflect;
  int stopY;
  
  //Five outcomes:
  /*
  STRIKE
  SINGLE
  DOUBLE
  TRIPLE
  HOMERUN
  */
  
  public ThrowedBall(){
    x = 200;
    y = 200;
    stopY = 400;
  }
  
  //Standard animate.
  public void animate(){
    x += 0;
    y += 10;
  }
  public void animate(int outcome){
    if (outcome == 0){
      animate();
    }
    if (outcome == 1){
      x += 5;
      y -= 10;
    }
    if (outcome == 2){
      x += 6;
      y -= 15; 
    }
    if (outcome == 3){
      x += 7;
      y -= 20;
    }
    if (outcome == 4){
      x += 8;
      y -= 25;
    }
  }
    /*
    // Strike
    if (outcome == 0){
      x += 0;
      y += 4; 
    }
    //Single
    if (outcome == 1){
      int counter = 0;
      while (counter != 5){
        x += 0;
        y += 4;
        counter++;
      }
      x += 1;
      y -= 4;
    }
    //Double
    if (outcome == 2){
      int counter = 0;
      while (counter != 5){
        x += 0;
        y += 5;
        counter++;
      }
      x += 2;
      y -= 5;
    }
    //Triple
    if (outcome == 3){
      int counter = 0;
      while (counter != 5){
        x += 0;
        y += 6;
      }
      x += 3;
      y -= 6;
    }
    //Home run
    if (outcome == 4){
      int counter = 0;
      while (counter != 5){
        x += 0;
        y += 7;
      }
      x += 4;
      y -= 6;
    }
    */
  public void display(){
    fill(255);
    ellipse(x,y,20,20);
  }
}
