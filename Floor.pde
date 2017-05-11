public class Floor
{
  Room cRoom;
  Room[][] map;
  public static final int FLOORSIZE=10;
  public Floor()
  {
    map =  new Room[FLOORSIZE][FLOORSIZE];
    generateFloor();
    for(int r=0;r<map.length;r++)
      for(int c=0;c<map[r].length;c++)
        if(map[r][c]!=null)
          map[r][c].generateRoom(map,c,r);
  }
  private void generateFloor()
  {
    cRoom=map[FLOORSIZE/2][FLOORSIZE/2]=new Room(0);
    cRoom=map[FLOORSIZE/2-1][FLOORSIZE/2]=new Room();
    
  }
  public void Draw()
  {
    cRoom.Draw();
  }
  
}