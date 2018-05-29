Player player1,player2;
String winner;
public void setup() {
  size(1000,800);
}
public void draw() {
  background(255);
  fill(139,0,0);
  text(frameRate, 20, 20);
  rect(0,0,20,20);
  rect(0,600,20,20);
  rect(600,0,20,20);
  rect(600,600,20,20);
}

public class Pitch{
  int speed;
  public Pitch(int s){
    speed = s;
  }
  public void throw(){
    
  }
  public int getSpeed(){
    return speed;
  }
}

public class Hitter{
 float time;
 String result;
 public void hit(){
   
 }
 public float getTiming(){
  return time; 
 }
}

public class Player{
 int score;
 int baseNumber;
 public int getScore(){
   return score;
 }
 public int updateBase(int increment){
   baseNumber += increment;
 }
 public void updateScore(int newScore){
   score = newScore;
 }
 public void hitInning(){
   
 }
 public void pitchInning(){
   
 }
}
