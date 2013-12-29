part of angulardart_samples;

@NgComponent(
    selector: "toggle",
    publishAs: 't',
    template: "<button ng-click='t.toggle()'>{{t.button}}</button><content ng-if='t.showContent'/>"
)
class Toggle {
  @NgAttr("button")
  String button;

  bool showContent = false;
  toggle() => showContent = !showContent;
}