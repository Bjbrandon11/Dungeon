public static double scaled=2;
Floor test;
Hitbox mBox;
void setup()
{
  size(832,832);
  test=new Floor();
  mBox= new Hitbox(mouseX,mouseY,0,0);
}
void draw()
{
  test.Draw();
  mBox.setPosition(mouseX,mouseY);
}