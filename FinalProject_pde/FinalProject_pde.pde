//Player player1,player2;
Pitch p = new Pitch();
String winner;
public void setup() {
  size(700,700);
}
public void draw() {
  background(255);
  fill(0,139,0);
  text(frameRate, 20, 20);
  rect(0,0,20,20);
  rect(0,400,20,20);
  rect(400,0,20,20);
  rect(400,400,20,20);
  rect(0,550,700,150);
  p.display();
  p.throwPitch();
  p.keyPressed();
}
/*
public class HitBox{
  int numStop;
  public HitBox(){
    fill(255,0,0);
    rect(0,550,700,150);
  }
  public void hit(){
    
  }
  public void keyPressed(){
    
}
*/
public class Pitch{
  int x, y, speed;
  int r;
  color c;

  public Pitch() {
    x = 0;
    y = 625;
    r = 75;
    c = color(0, 255, 0);
    speed= 20;
  }
  public void throwPitch(){
    x += speed;
    checkWalls();
  }
  public void checkWalls() {
    if (x < r) {
      speed *= -1;
      x = r;
    }
    if (x > width - r){
      speed *= -1;
      x = width - r;
    }
  }
  public void display() {
    fill(c);
    ellipse(x, y, r * 2, r * 2);
  }
  public int keyPressed(){
    if (key == ' '){
      speed = 0;
      return x;
    }
    return 0;
  }
}
/*
public class Hitter{
 int rectNum;
 String result;
 public void hit(){
   
 }
 public float getNum(){
  return rectNum; 
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
*/
