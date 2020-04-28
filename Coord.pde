public class text{
  public int x,y;
  String content;
  public text(int x,int y,String content){
    this.x=x;
    this.y=y;
    this.content=content;
  }
  void draw(){
    textSize(15);
    text(content, x, y); 
  }
}
