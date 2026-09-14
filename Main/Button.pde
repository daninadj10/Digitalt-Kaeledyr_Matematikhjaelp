class Button {
  Activity activity;
  
  Button(Activity activity) {
    this.activity = activity;
  }
  
  void click(Pet pet) {
    activity.perform(pet);
  }
}
