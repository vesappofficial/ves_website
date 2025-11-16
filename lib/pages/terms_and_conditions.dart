import 'package:jaspr/jaspr.dart';

@client
class About extends StatelessComponent {
  const About({super.key});

  @override
  Component build(BuildContext context) {
    return body([
      h1([text('Terms and Conditions')]),
      p([text('These are the terms and conditions of the Ves website.')]),
    ]);
  }
}
