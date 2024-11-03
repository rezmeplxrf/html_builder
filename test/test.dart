import 'package:belatuk_html_builder/elements.dart';
import 'package:csslib/parser.dart';
import 'package:html/parser.dart' as html5;

void main() {
  final dom =
      css(selector: '#someid', style: {'color': 'blue', 'font-size': '12px'});
  var rendered = StringRenderer().render(dom);
  print(rendered);

  var parsed = html5.parse(rendered);

  final style = parsed.querySelector('style')!;

  print(style.nodes.first);
}
