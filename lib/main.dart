// The entrypoint for the **server** environment.
//
// The [main] method will only be executed on the server during pre-rendering.
// To run code on the client, use the @client annotation.

// Server-specific jaspr import.

import 'package:jaspr/server.dart';

// Imports the [App] component.
import 'app.dart';

// This file is generated automatically by Jaspr, do not remove or edit.
import 'jaspr_options.dart';

void main() {
  // Initializes the server environment with the generated default options.
  Jaspr.initializeApp(
  //options: defaultJasprOptions,
  );

  // Starts the app.
  //
  // [Document] renders the root document structure (<html>, <head> and <body>)
  // with the provided parameters and components.
  runApp(Document(
    base: '/ves_website/',
    title: 'Ves',
    
    styles: [
      // Special import rule to include to another css file.
      css.import('https://fonts.googleapis.com/css?family=Mynerve'),
      // Each style rule takes a valid css selector and a set of styles.
      // Styles are defined using type-safe css bindings and can be freely chained and nested.
      css('nav').styles(
        zIndex: ZIndex(1000),
        margin: Margin.zero,
        textAlign: TextAlign.right,
        backgroundColor: Color.rgb(0, 89, 61),
      ),
      css('html, body').styles(
        width: 100.percent,
        minHeight: 100.vh,
        padding: Padding.zero,
        margin: Margin.zero,
        fontFamily: const FontFamily.list([FontFamily('Mynerve')]),
        backgroundColor: Color.rgb(0, 89, 61),
      ),
      css('h1').styles(
        margin: Margin.unset,
        color: Color.rgb(250, 250, 250),
        fontSize: 4.rem,
      ),
      css('h2').styles(
        margin: Margin.unset,
        color: Color.rgb(209, 188, 147),
        fontSize: 3.rem,
    
      ),
      css('h3').styles(
        margin: Margin.unset,
        color: Color.rgb(209, 188, 147),
        fontSize: 2.rem,
    
      ),
      css('p').styles(
        color: Color.rgb(209, 188, 147),
      ),
      css('li').styles(
        color: Color.rgb(209, 188, 147),
      ),
      css('a').styles(
        color: Color.rgb(135, 211, 124),
      ),
      css('table').styles(
        padding: Padding.all(1.rem),
        alignContent: AlignContent.center,
        textAlign: TextAlign.center,
        textDecoration: TextDecoration(color: Color.rgb(209, 188, 147)),
      ),
      css('th, td, tr').styles(
        alignContent: AlignContent.center
      ),
    ],
    head: [
      link(rel: 'icon', type: 'image/ico', href: 'favicon.ico', attributes: {'sizes': '32x32'}), //FIX
      nav(  
        styles: Styles(
          position: Position.sticky(top: 0.vh),
          zIndex: ZIndex(1000),
          maxHeight: 10.vh,
          padding: Spacing.fromLTRB(5.vw, 3.vh, 5.vw, 3.vh),
          margin: Margin.zero,
          backgroundColor: Color.rgb(0, 89, 61),
        ),
        [
          a(
            href: '/ves_website/',
            styles: Styles(
              position: Position.absolute(left: 5.vw, top: 2.vh),
              color: Color.rgb(250, 250, 250),
              textAlign: TextAlign.left,
              fontSize: 2.rem,
              textDecoration: TextDecoration.none
            ),
            [text('Ves')],
          ),
          a(
            href: '/ves_website/about/',
            styles: Styles(
              //position: Position.absolute(right: 20.vw, top: 4.vh),
              padding: Spacing.only(right: 2.vw),
              color: Color.rgb(250, 250, 250),
              textAlign: TextAlign.right,
              fontSize: 1.rem,
              textDecoration: TextDecoration.none,
            ),
            [text('About')],
          ),        
          a(
            href: '/ves_website/contact/',
            styles: Styles(
              //position: Position.absolute(right: 10.vw, top: 4.vh),
              color: Color.rgb(250, 250, 250),
              textAlign: TextAlign.right,
              fontSize: 1.rem,
              textDecoration: TextDecoration.none,
            ),
            [text('Contact Us')],
          ),
        ],
      ),
    ],
    body: App(),
  ));
}
