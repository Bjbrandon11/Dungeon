public class Room
{
  public int type;
  public static final int WIDTH=13;
  public static final int HEIGHT=13;
  public Block[][] map;
  public Room()
  {
    type=2;
    map=new Block[HEIGHT][WIDTH];
  }
  public Room(int t)
  {
    this();
    type=t;
  }
  public void generateRoom(Room[][] floor,int r,int c)
  {
    for(int y=0;y<map.length;y++)
      for(int x=0;x<map[y].length;x++)
        map[y][x]=new Block((int)(y*32*scaled),(int)(x*32*scaled),color(255,0,0));
    
    if(r+1<floor.length && floor[r+1][c]!=null)
      map[HEIGHT-1][WIDTH/2]=new Block((int)((HEIGHT-1)*scaled*32),(int)((WIDTH/2)*scaled*32),color(0,0,0));
    if(c+1<floor[r].length && floor[r][c+1]!=null)
      map[HEIGHT/2][WIDTH-1]=new Block((int)((HEIGHT/2)*scaled*32),(int)((WIDTH-1)*scaled*32),color(0,0,0));
    if(c-1>=0 && floor[r][c-1]!=null)
      map[HEIGHT/2][0]=new Block((int)((HEIGHT/2)*scaled*32),(int)((0)*scaled*32),color(0,0,0));
    if(r-1>=0 && floor[r][c-1]!=null)
      map[0][WIDTH/2]=new Block((int)((0)*scaled*32),(int)((WIDTH/2)*scaled*32),color(0,0,0));

  }
  public void Draw()
  {
    for(Block[] a:map)
      for(Block b:a)
        b.Draw();
  }
}