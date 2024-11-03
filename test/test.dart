import 'package:belatuk_html_builder/elements.dart';
import 'package:csslib/parser.dart';
import 'package:html/parser.dart' as html5;

void main() {
  final dom = css(selector: '#someid', style: {'color': 'blue'});
  var rendered = StringRenderer().render(dom);

  var parsed = html5.parse(rendered);

  final style = parsed.querySelector('style')!;
  print(style.text);
  final result = parse(style.text);
  print(result.toDebugString());
}
