protected class Drawing{
  int w,h,x,y;
  PImage image;
  public Drawing(PImage image,int x, int y,int w,int h){
    this.image = image;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  public void draw(){
    image(image, x, y, w, h);
  }
}
