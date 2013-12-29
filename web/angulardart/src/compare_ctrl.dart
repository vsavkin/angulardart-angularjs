part of angulardart_samples;

@NgController(
    selector: "[compare-ctrl]",
    publishAs: 'ctrl'
)
class CompareCtrl {
  String firstValue;
  String secondValue;

  get valuesAreEqual => firstValue == secondValue;
}