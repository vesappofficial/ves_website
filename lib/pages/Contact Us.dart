import 'package:jaspr/jaspr.dart';
import 'package:jaspr/ui.dart';
import 'dart:io';
@client
class Contact extends StatelessComponent {
  const Contact({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      styles: Styles(
        minHeight: 95.vh,
         alignContent: AlignContent.center,
          //backgroundColor: Color.rgb(10, 18, 42),
      ),
      [Grid(columns: 3, spread: true, children: [
        Column(children: [
          img(src: '/images/sidebarLeft.png', styles: Styles(width: 25.vw))
        ]),
        Column(mainAxisAlignment: JustifyContent.center, children:[
          h3(styles: Styles(textAlign: TextAlign.center), [text('Contact Us')]),
          p(
            styles: Styles(
              margin: Margin.symmetric(vertical: 10.vh, horizontal: 10.vw),
              textAlign: TextAlign.center,
            ),
           [
              text('Find us on social media: '),
              br(),
              a(href: 'https://www.instagram.com/ves.app/', [text('Instagram')],),
              br(),
              a(href: 'https://www.tiktok.com/@ves.app', [text('TikTok')],),
              br(),
              a(href: 'https://youtube.com/@vesapp', [text('YouTube')]),
              br(),
              text('or join our '),
              a(href: 'https://discord.gg/YCCMJdJs', [text('Discord server')],),
              text('.')
           ],),
           Column(crossAxisAlignment: AlignItems.center, children: [
       iframe(src: 'https://docs.google.com/forms/d/e/1FAIpQLSdP5Im9HmDCapPB-f5pLTzADbWye7vF7JTYSl9shnHwodkB0g/viewform?embedded=true', attributes: {'width': 'auto', 'height': 'auto', 'frameborder': '0', 'marginheight': '0', 'marginwidth': '0'}, styles: Styles(
        //position: Position.sticky(right: 20.vw),
        width: 50.vw,
        height: 80.vh,
        radius: BorderRadius.circular(2.vw),
        backgroundColor: Color.rgb(209, 188, 147)
       ), [
         text('Loading…'),
       ],
       ) 
       ])
        ],),
        Column(children: [
          img(src: '/images/sidebarRight.png', styles: Styles(width: 25.vw))
        ])
      ]
    ), 
    ]
    );
  }
}
