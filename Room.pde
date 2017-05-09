public class Room
{
  public static final int WIDTH=10;
  public static final int HEIGHT=10;
  public Block[][] map;
  public Room()
  {
    map=new Block[HEIGHT][WIDTH];
  }
  public Block[][] generateRoom()
  {
    return null;
  }
  public void Draw()
  {
    for(Block[] a:map)
      for(Block b:a)
        b.Draw();
  }
}