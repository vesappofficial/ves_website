import 'package:jaspr/jaspr.dart';
import 'package:jaspr/ui.dart';

// By using the @client annotation this component will be automatically compiled to javascript and mounted
// on the client. Therefore:
// - this file and any imported file must be compilable for both server and client environments.
// - this component and any child components will be built once on the server during pre-rendering and then
//   again on the client during normal rendering.
@client
class About extends StatelessComponent {
  const About({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      styles: Styles(
        //minHeight: 90.vh,
        maxWidth: 90.vw,
        padding: Spacing.fromLTRB(0.vh, 10.vh, 10.vw, 5.vh),
        color: Color.rgb(209, 188, 147),
        textAlign: TextAlign.right, 
      ),
      [
        Grid(columns: 2, spread: true, children: [
          Column(children:[
            img(src: '/images/sidebar.png', 
              alt: 'Ves being a chaotic weasel boi', 
              styles: Styles(
                position: Position.fixed(bottom: 0.vh, left: 0.vw),
                width: 40.vw,
                overflow: Overflow.hidden
              ),
            ),  
          ]),

          Column(children:[
            h3([text('About')]),
            br(),
            text('3:11 p.m., May 10, 2025, was the first time I passed out.'),
            br(),
            br(),
            text('Diagnosis? Overwork. That’s not surprising. It was the end of AP exam week, and with seven exams, a track qualifier meet, and my refusal to slow down, my body hit its limit.'),
            br(),
            br(),
            text('But I didn’t. Neither did life. I even repeated the whole shebang the next year, with one slight change.'),
            br(),
            br(),
            text('I made Ves.'),
            br(),
            br(),
            text('Being an overdoer is a bit of a problem. We run on fumes, pretend it’s fine, and then wonder why our bodies struggle. Fixing that is hard. None of us have the time or the brain cells left to figure out when we need to actually breathe. And no one sees our lives well enough to tell us to stop before we crash.'),
            br(),
            br(),
            text('Ves pulls together those branches of your life and takes just a few seconds to nudge you toward balance. It looks at the whole forest of your life and finds the moments where you can slow down and actually recover.'),
            br(),
            br(),
            text('It’s for the students running on four hours of sleep. For the ones whose only free time is the shower. For the ones who need balance.'),
            br(),
            br(),
            text('Our Ves.')
          ])
        ])
      ]
    );
  }
}
