
public class ParticlePApplet  {
  
  int fillColor = 10;
  
  public void setup() {
    size(100,100);
  }

  public void draw() {
    background(fillColor + random(fillColor) );
//    ellipseMode(RADIUS);  // Set ellipseMode to RADIUS
//        fill(fillColor);  // Set fill to white
//        ellipse(mouseX,mouseY,random(width),random(height));  // Draw white ellipse using RADIUS mode
//   
   ellipseMode(CENTER);  // Set ellipseMode to CENTER
        fill(100);  // Set fill to gray
        ellipse(random(width),random(height), random(30),random(30));  // Draw gray ellipse using CENTER mode

  }
  
  public void crazyLinedraw()
  {
    line(mouseX,mouseY,random(width),random(height)); 
  }
  
  public void setFill()
  {
    fillColor = mouseX;
  }
  
//  float lifespan = 255;
//  
//  PShape part;
//  float partSize;
//  
////  PVector gravity = new PVector( 0, 0.1 );
//  PVector gravity = new PVector( 0, 0 );
//
//
//  ParticlePApplet() {
//    partSize = random(10,60);
//    part = createShape();
//    part.beginShape(QUAD);
//    part.noStroke();
//    part.texture(sprite);
//    part.normal(0, 0, 1);
//    part.vertex(-partSize/2, -partSize/2, 0, 0);
//    part.vertex(+partSize/2, -partSize/2, sprite.width, 0);
//    part.vertex(+partSize/2, +partSize/2, sprite.width, sprite.height);
//    part.vertex(-partSize/2, +partSize/2, 0, sprite.height);
//    part.endShape();
//    
//    rebirth(width/2,height/2);
//    lifespan = random(255);
//  }
//
//  PShape getShape() {
//    return part;
//  }
//  
//  void rebirth(float x, float y) {
//    float a = random(TWO_PI);
//    float speed = random(0.5,4);
//    PVector velocity = new PVector(cos(a), sin(a));
//    velocity.mult(speed);
//    lifespan = 255;   
//    part.resetMatrix();
//    part.translate(x, y); 
//  }
//  
//  boolean isDead() {
//    if (lifespan < 0) {
//     return true;
//    } else {
//     return false;
//    } 
//  }
//  
//
//  public void update() {
//    lifespan = lifespan - 1;
//    velocity.add(gravity);
//    
//    part.setTint(color(255,lifespan));
//    part.translate(velocity.x, velocity.y);
//  }

  
  
}


