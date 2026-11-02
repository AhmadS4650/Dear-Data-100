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
}
