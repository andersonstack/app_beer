double adjustScreen(double screenWidth, double screenHeight) {
  if (screenWidth < 600) {
    return 0.05;
  } else if (screenWidth < 1200) {
    return 0.03;
  }
  return 0.015;
}
