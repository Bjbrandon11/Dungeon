public class Hitbox
{
  int x,y,w,h;
  public Hitbox(int x,int y,int w,int h)
  {
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
  }
  public boolean Intersects(Hitbox other)
  {
    return (x < other.x + other.w &&
   x + w > other.x &&
   y < other.y + other.h &&
   h + y > other.y);
  }
  public void setPosition(int x,int y)
  {
    this.x=x;
    this.y=y;
  }
  public void Draw(PImage text)
  {
    PImage temp = text.copy();
    temp.resize(w,h);
    image(temp,x,y);
  }
  public void Draw(color c)
  {
    fill(c);
    rect(x,y,w,h);
  }
}