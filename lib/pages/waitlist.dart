import 'package:jaspr/jaspr.dart';
import 'package:jaspr/ui.dart';
import 'dart:io';
@client
class Waitlist  extends StatelessComponent {
  const Waitlist({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      styles: Styles(
        minHeight: 90.vh,
        alignContent: AlignContent.center,
        backgroundImage: ImageStyle.url('/ves_website/images/Leaves.png'),
        backgroundSize: BackgroundSize.sides(Unit.auto, 100.vh),
      ),
      [Column(mainAxisAlignment: JustifyContent.center, children:[
        h3(styles: Styles(textAlign: TextAlign.center), [text('Join the Waitlist')]),
        br(),
        Column(crossAxisAlignment: AlignItems.center, children: [
          iframe(src: 'https://docs.google.com/forms/d/e/1FAIpQLSdNUIDSbij9s5dqkAQDpHHidVphXMfq4-bOpbL8Sr6L3v2fpA/viewform?embedded=true', attributes: {'width': 'auto', 'height': 'auto', 'frameborder': '0', 'marginheight': '0', 'marginwidth': '0'}, 
            styles: Styles(
              position: Position.sticky(bottom: 10.vh),
              minWidth: 50.vw,
              minHeight: 70.vh,
              radius: BorderRadius.circular(2.vw),
              backgroundColor: Color.rgb(209, 188, 147)
              ),
              [text('Loading…')],
          ) 
        ])
      ])]
    );
  }
}
