
Hitbox mBox;
void setup()
{
  size(320,320);
  mBox= new Hitbox(mouseX,mouseY,0,0);
}
void draw()
{
  mBox.setPosition(mouseX,mouseY);
  test.Draw();
}