import 'package:jaspr/jaspr.dart';


//import 'package:jaspr_tailwind/builder.dart';


// By using the @client annotation this component will be automatically compiled to javascript and mounted
// on the client. Therefore:
// - this file and any imported file must be compilable for both server and client environments.
// - this component and any child components will be built once on the server during pre-rendering and then
//   again on the client during normal rendering.
@client
class Home extends StatefulComponent {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
    // Run code depending on the rendering environment.
    if (kIsWeb) {
      print("Hello client");
      // When using @client components there is no default `main()` function on the client where you would normally
      // run any client-side initialization logic. Instead you can put it here, considering this component is only
      // mounted once at the root of your client-side component tree.
    } else {
      print("Hello server");
    }
  }

  
  @override
  Component build(BuildContext context) {
    return section([
      section(
        styles: Styles(
          minHeight: 95.vh,
          alignContent: AlignContent.center, 
          textAlign: TextAlign.center, 
          backgroundImage: ImageStyle.url('/ves_website/images/unrender.png'),
          backgroundSize: BackgroundSize.cover,
          ),[
        h1([text('Welcome')]),
        p(styles: Styles(color: Colors.white), [text('Meet Ves, your burnout bestie! 🌿✨')]),
        br(),
        a(
            href: '/ves_website/waitlist/',
            styles: Styles(
              display: Display.block,
              minWidth: 50.vw,
              minHeight: 4.rem,
              radius: BorderRadius.circular(2.vw),
              alignContent: AlignContent.center,
              color: Color.rgb(250, 250, 250),
              textAlign: TextAlign.center,
              fontSize: 1.rem,
              textDecoration: TextDecoration.none,
              backgroundColor: Color.rgb(10, 18, 42)
            ),
            [text('   Join the Waitlist   ')],
          ),
        ]
      ),
      
      section(
        styles: Styles(
          minHeight: 95.vh,
          alignContent: AlignContent.center,
          backgroundColor: Color.rgb(10, 18, 42),
        ), 
        [
          br(),
          h3(styles: Styles(textAlign: TextAlign.center), [text('Features Coming Soon')]),

          table(
            styles: Styles(
              minWidth: 80.vw,
              minHeight: 80.vh,
              margin: Margin.only(left: 10.vw, right: 10.vw),
              color: Color.rgb(209, 188, 147),
              textAlign: TextAlign.center,
            ), 
            [
              tr([ //table header row
                // ignore: sort_children_properties_last
                th([text('Feature')], scope: 'col', styles: Styles(width: 15.vw)),
                // ignore: sort_children_properties_last
                th([text('Description')], scope: 'col',styles: Styles(width: 50.vw)),
                // ignore: sort_children_properties_last
                th([text('Availablity')], scope: 'col', styles: Styles(width: 15.vw)),
              ]),
              tr([//table data row 1
                td([text('Burnout Calculator')]),
                td([text('Ves predicts your burnout risk level based on your lifestyle and work habits.')]),
                td([text('Coming Soon')])
              ]),
              tr([ //table data row 2
               td([text('Smart Scheduling')]),
                td([text('Get personalized recommendations for breaks and activities to help you stay balanced throughout your day.')]),
                td([text('Coming Soon')])
              ]),
              tr([//table data row 3
                td([text('Relaxation Techniques')]),
                td([text('Access guided meditations, breathing exercises, and mindfulness practices to unwind.')]),
               td([text('Coming Soon')])
              ]),
            ]
          )
        ]
      ) 
    ]);
  }
}
