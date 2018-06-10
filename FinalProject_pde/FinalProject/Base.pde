public class Base{
  
  int x,y;
  int baseNum;
  color c;
  public Base(int _baseNum, int _x, int _y){
    c = color(255);
    x = _x;
    y = _y;
    baseNum = _baseNum;
  }
  public void display(){
    fill(c);
    rect(x,y,40,40);
  }
}
