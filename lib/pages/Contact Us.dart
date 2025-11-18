import 'package:jaspr/jaspr.dart';

@client
class Contact extends StatelessComponent {
  const Contact({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      [
      h3(styles: Styles(textAlign: TextAlign.center), [text('Contact Us')]),
      p(
        styles: Styles(
          margin: Margin.symmetric(vertical: 2.vh, horizontal: 10.vw),
          textAlign: TextAlign.center,
        ),
        [
          text('For inquiries, please email us at '),
          a(href: 'mailto:ves.app.official@gmail.com', [text('ves.app.official@gmail.com'),]), 
          text('. We look forward to hearing from you!'),
          br(),
          text('Find us on social media: '),
          br(),
          a(href: 'https://www.instagram.com/ves.app/', [text('Instagram')],),
          br(),
          a(href: 'https://www.tiktok.com/@ves.app', [text('TikTok')],),
          br(),
          a(href: 'https://youtube.com/@vesapp', [text('YouTube')]),
        ])
      ]
    );
  }
}