class Planet
{
  ArrayList<Planet> children = new ArrayList<Planet>();
  PVector position = new PVector();
  float size;
  color shade;
  float angularVelocity;

  void update()
  {
    push();
    position.rotate(radians(angularVelocity));

    for (var child : children) {
      child.update();
    }

    pop();
  }
  void render()
  {
    push();
    translate(position.x, position.y);
    stroke(shade);
    strokeWeight(10);
    noFill();
    //fill(shade);
    circle(0, 0, size);


    for (var child : children)
    {
      stroke(shade);
      strokeWeight(3);
      line(0, 0, child.position.x, child.position.y);
      child.render();
    }
    pop();
  }
}
