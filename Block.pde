public class Block
{
  public static final int SIZE=32;
  PImage text;
  color c;
  Hitbox hBox;
  public Block(int x,int y, PImage t)
  {
    this(x,y);
    text=t;
  }
  public Block(int x,int y, color c)
  {
    this(x,y);
    this.c=c;
  }
  private Block(int x,int y)
  {
    hBox= new Hitbox(x,y,SIZE,SIZE);
  }
  public boolean Intersects(Hitbox other){return hBox.Intersects(other);}
  public void Draw()
  {
    if(text==null)
      hBox.Draw(c);
    else
      hBox.Draw(text);
  }
  
}