import processing.core.PApplet;
import processing.core.PVector; 
import processing.core.*;

public class ParticlePApplet extends PApplet {
  
  public void setup() {
    size(400,200);
  }

  public void draw() {
ellipseMode(RADIUS);  // Set ellipseMode to RADIUS
fill(255);  // Set fill to white
ellipse(50, 50, 30, 30);  // Draw white ellipse using RADIUS mode

ellipseMode(CENTER);  // Set ellipseMode to CENTER
fill(100);  // Set fill to gray
ellipse(50, 50, 30, 30);  // Draw gray ellipse using CENTER mode

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


