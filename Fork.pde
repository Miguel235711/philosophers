public class fork extends Drawing{
  public fork(int x, int y){
    super(fork,x,y,20,40);
  }
  public void drawWithTint(){
    tint(228, 56, 56);
    draw();
    noTint();
  }
}
