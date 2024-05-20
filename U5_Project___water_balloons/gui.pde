/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:window1:259097:
  appc.background(230);
} //_CODE_:window1:259097:

public void GreenStrength(GCustomSlider source, GEvent event) { //_CODE_:strengthT1:485376:
  st1 = strengthT1.getValueI();
} //_CODE_:strengthT1:485376:

public void GreenSpeed(GCustomSlider source, GEvent event) { //_CODE_:speedT1:799414:
  sp1 = speedT1.getValueI();
} //_CODE_:speedT1:799414:

public void GreenAgility(GCustomSlider source, GEvent event) { //_CODE_:agilityT1:409325:
  ag1 = agilityT1.getValueI();
} //_CODE_:agilityT1:409325:

public void GreenEndurance(GCustomSlider source, GEvent event) { //_CODE_:enduranceT1:685171:
  ed1 = enduranceT1.getValueI();
} //_CODE_:enduranceT1:685171:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  window1 = GWindow.getWindow(this, "Window title", 0, 0, 400, 600, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw1");
  label1 = new GLabel(window1, 17, 10, 101, 20);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("GREEN TEAM");
  label1.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  label1.setOpaque(false);
  strengthT1 = new GCustomSlider(window1, 17, 55, 100, 56, "grey_blue");
  strengthT1.setShowValue(true);
  strengthT1.setLimits(1, 1, 10);
  strengthT1.setStickToTicks(true);
  strengthT1.setShowTicks(true);
  strengthT1.setNumberFormat(G4P.INTEGER, 0);
  strengthT1.setOpaque(false);
  strengthT1.addEventHandler(this, "GreenStrength");
  speedT1 = new GCustomSlider(window1, 15, 132, 100, 56, "grey_blue");
  speedT1.setShowValue(true);
  speedT1.setLimits(1, 1, 10);
  speedT1.setStickToTicks(true);
  speedT1.setShowTicks(true);
  speedT1.setNumberFormat(G4P.INTEGER, 0);
  speedT1.setOpaque(false);
  speedT1.addEventHandler(this, "GreenSpeed");
  agilityT1 = new GCustomSlider(window1, 13, 210, 100, 56, "grey_blue");
  agilityT1.setShowValue(true);
  agilityT1.setLimits(1, 1, 10);
  agilityT1.setStickToTicks(true);
  agilityT1.setShowTicks(true);
  agilityT1.setNumberFormat(G4P.INTEGER, 0);
  agilityT1.setOpaque(false);
  agilityT1.addEventHandler(this, "GreenAgility");
  enduranceT1 = new GCustomSlider(window1, 12, 293, 100, 56, "grey_blue");
  enduranceT1.setShowValue(true);
  enduranceT1.setLimits(1, 1, 10);
  enduranceT1.setStickToTicks(true);
  enduranceT1.setShowTicks(true);
  enduranceT1.setNumberFormat(G4P.INTEGER, 0);
  enduranceT1.setOpaque(false);
  enduranceT1.addEventHandler(this, "GreenEndurance");
  label3 = new GLabel(window1, 27, 117, 76, 13);
  label3.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label3.setText("Speed");
  label3.setOpaque(false);
  label4 = new GLabel(window1, 22, 188, 80, 20);
  label4.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label4.setText("Agility");
  label4.setOpaque(false);
  label5 = new GLabel(window1, 21, 269, 80, 20);
  label5.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label5.setText("Endurance");
  label5.setOpaque(false);
  label2 = new GLabel(window1, 27, 40, 80, 14);
  label2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label2.setText("Strength");
  label2.setOpaque(false);
  window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow window1;
GLabel label1; 
GCustomSlider strengthT1; 
GCustomSlider speedT1; 
GCustomSlider agilityT1; 
GCustomSlider enduranceT1; 
GLabel label3; 
GLabel label4; 
GLabel label5; 
GLabel label2; 
