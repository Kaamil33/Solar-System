//class Planet
//{
//  PVector position = new PVector();
//  float size;
//  color shade;
//  float angularVelocity;

//  ArrayList<Planet> children = new ArrayList<Planet>();

//  void update()
//  {
//    push();
//    position.rotate(radians(angularVelocity));


//    for (var i=0; i < children.size(); ++i) {
//      var child = children.get(i);
//      rotate(radians(children.get(i).angularVelocity +=1 ));
//      strokeWeight(5);
//      line(0, 0, child.position.x, child.position.y);

//      child.update();

//    }
//    pop();
//  }
//  void render()
//  {
//    push();
//    translate(position.x, position.y);
//    stroke(shade);
//    strokeWeight(10);
//    noFill();
//    circle(0, 0, size);

//    for (var i=0; i < children.size(); ++i) {
//      var child = children.get(i);
//      //rotate(radians(children.get(i).angularVelocity +=1 ));
//      //strokeWeight(5);
//      //line(0, 0, child.position.x, child.position.y);

//      child.render();

//    }
//    pop();
//  }
//}

//Planet sun;
//Planet earth;
//Planet moon;
//Planet mars;

//void setup()
//{
//  size(1280, 720);
//  sun = new Planet();
//  sun.size = 150;
//  sun.shade = color(255, 255, 0);
//  sun.position.x = width/2;
//  sun.position.y = height/2;
//  sun.angularVelocity = 0;

//  earth = new Planet();
//  earth.size = 75;
//  earth.shade = color(0, 255, 0);
//  earth.position.x = 250;
//  earth.angularVelocity = 1;
//  sun.children.add(earth);

//  moon = new Planet();
//  moon.size = 50;
//  moon.shade = color(255, 255, 255);
//  moon.position.x = 150;
//  moon.angularVelocity = 1.2;
//  earth.children.add(moon);

//  mars = new Planet();
//  mars.size = 50;
//  mars.shade = color(255, 160, 0);
//  mars.position.x = 150;
//  mars.angularVelocity = .5;
//  sun.children.add(mars);
//}

//void draw ()
//{
//  background(0);
//  sun.render();
//  sun.update();

//}
