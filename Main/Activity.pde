class Activity {
  private String title;
  private float happinessChange;
  
  Activity(String title, float happinessChange) {
    this.title = title;
    this.happinessChange = happinessChange;
  }
  
  
  void perform(Pet pet) {
    pet.changeHappiness(happinessChange);
  }
}
