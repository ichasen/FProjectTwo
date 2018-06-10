import processing.sound.*;

//Pitch class: Has ball too
public class PitchMeter{
  
  int x, y;
  int speed = 10;
  
  color ballC;
   
  final float[] weakCoors = {0,300};
  final float[] normalCoors = {301,450};
  final float[] goldenCoors = {451,500};
  final float[] strongCoors = {501,600};
  
  public PitchMeter(){
    x = 625;
    ballC = color(255,165,0); //Orange
  }
  public void throwPitch(){
      y += speed;
      checkWalls();
      //System.out.println("Hello.");
  }
   
  public void checkWalls(){
    if (y < 75){
      speed *= -1;
      y = 75;
    }
    if (y > 600){
      speed *= -1;
      y = 600;
    }
  }
  
  
  public void display(){

     fill(255);
    //Pitch ball 
    ellipse(200,200,20,20);
    int i = 200;
   
       //WeakCoors
       fill(255,255,0); //Yellow
       rect(600,0,100,300);
    
    //Normal Coors
       fill(0,255,0); //Green
       rect(600,301,100,150);
    
    //Golden Coors
       fill(212,175,55); //Metallic Gold
       rect(600,451,100,50);
    
    //Too strong coors
       fill(255,0,0);
       rect(600,501,100,100);
     
          fill(ballC);
     ellipse(x, y, 50, 50);
     throwPitch();
  }
  
  public String calcPitch(int y){
    if (isWeak(y)){
      return "weak";
    }
    if (isRegular(y)){
      return "reg";
    }
    if (isGolden(y)){
      return "gold";
    }
    return "strong";
  }

  public boolean isKeyPressed(){
    return (keyPressed() >= 0);
  }
  public int keyPressed(){
    if (key == 'p'){
      speed = 0;
      return y;
    }
    return -1;
  }
   
  boolean isWeak(int y){
    return (y >= weakCoors[0] && y <= weakCoors[1]);
  }
  boolean isRegular(int y){
     return (y >= normalCoors[0] && y <= normalCoors[1]);
  }
  boolean isGolden(int y){
     return (y >= goldenCoors[0] && y <= goldenCoors[1]);
  }
  boolean isStrong(int y){
    return (y >= strongCoors[0] && y <= strongCoors[1]); 
  }
}
  
      
      
      
