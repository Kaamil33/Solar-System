//class Star
//{
//  PVector sposition = new PVector();
//  color StarColor;
//  float size;
//  float tspeed;

//  void render()
//  {
//    push();
//    fill(StarColor);
//    translate(sposition.x, sposition.y);
//    circle(0, 0, size);
//    pop();
//  }

//  void update()
//  {

//    if (StarColor == color(255, 255, 0) && (((millis()/10)*tspeed)%2 == 0))
//      StarColor = color(0);
//    else
//      StarColor = color(255, 255, 0);

//    render();
//  }
//}
