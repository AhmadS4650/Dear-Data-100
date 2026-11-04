String[] drinks = {"Coffee","Tea","Coffee","Fanta","Iced Coffee","Tea","Tea","Coffee","Iced Coffee",
  "Redbull","Fanta","Coffee","Pepsi","Tea","Fanta","Iced Coffee","Pepsi","Tea","Fanta","Coffee",
  "Pepsi","Pepsi","Redbull","Coffee","Fanta"};
String[] types = {"Coffee","Tea","Fanta","Pepsi","Iced Coffee","Redbull"};

void setup() {
  size(640, 480);
  noLoop();
}

void draw() {
  background(255);
  int left = 80, right = 600, top = 60, bottom = 400;
  float bw = (right - left) / (float) types.length;

  fill(0); textAlign(CENTER); textSize(20);
  text("Dear Data 100 Project", width/2, 30);
  textSize(12);

  // y-axis gridlines and tick labels (0 to 7 drinks)
  for (int i = 0; i <= 7; i++) {
    float y = map(i, 0, 7, bottom, top);
    stroke(225); line(left, y, right, y);
    fill(0); textAlign(RIGHT); text(str(i), left - 8, y + 4);
  }

  // axes
  stroke(0);
  line(left, top, left, bottom);
  line(left, bottom, right, bottom);

  // bars: count each drink type
  for (int i = 0; i < types.length; i++) {
    int count = 0;
    for (String d : drinks) if (d.equals(types[i])) count++;
    float h = map(count, 0, 7, 0, bottom - top);
    float x = left + i * bw + bw * 0.15;
    fill(70 + i * 30, 120, 200 - i * 25);
    noStroke();
    rect(x, bottom - h, bw * 0.7, h);
    fill(0); textAlign(CENTER);
    text(str(count), x + bw * 0.35, bottom - h - 6);
    text(types[i], x + bw * 0.35, bottom + 20);
  }
  
  // axis labels
  text("Drink", (left + right) / 2, 450);
  pushMatrix();
  translate(25, (top + bottom) / 2);
  rotate(-HALF_PI);
  text("Number of drinks", 0, 0);
  popMatrix();
}
