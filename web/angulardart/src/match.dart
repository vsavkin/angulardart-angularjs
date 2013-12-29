part of angulardart_samples;

@NgDirective(
    selector: '[vs-match]'
)
class Match implements NgAttachAware{
  @NgAttr("vs-match") String pattern;
  Element el;

  Match(this.el);

  attach(){
    final exp = new RegExp(pattern);
    el.onKeyUp.listen((_) =>
      exp.hasMatch(el.value) ? el.classes.add("match") : el.classes.remove("match"));
  }
}