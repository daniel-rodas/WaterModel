/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



/**
 *
 * @author Rodas
 */
 
 WaterMolecule water;
 
 OxygenAtom oxy;
 ProtonParticle proton1;
        
 
 void setup()
 {
   
   size(1024, 768);
   water =  (WaterMolecule) WaterMoleculeFactory.getMolecule();
   oxy =  (OxygenAtom) water.getOxygenOne();
   
   setLayout(null);//allows placement anywhere
   AtomPApplet AtoPApplet = (AtomPApplet) oxy.getPApplet();
   AtoPApplet.init();
   AtoPApplet.setBounds(40,40,300,300);
   add(AtoPApplet);
   
   proton1 = (ProtonParticle) oxy.getProtonOne(); 
   proton1.printThisPApplet();
   ParticlePApplet ParPApplet = (ParticlePApplet) proton1.getPApplet();
   ParPApplet.init();
   ParPApplet.setBounds(240,240,100,100);
   ParPApplet.setup();

   add(ParPApplet);
   
   
   frameRate(30);
 }
 void draw()
{
  
  background(165,186,226);
//  water.talk();
//  proton1.draw();
  
}

