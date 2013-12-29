part of angulardart_samples;

@NgFilter(name: 'isBlank')
class IsBlank {
  call(value) => value.isEmpty;
}