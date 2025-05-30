import "package:quiz_app/models/question.dart";

final List<Question> questions = const [
  Question("What are the main building block of UI's in flutter?", [
    "Widgets", // correct
    "Chrome",
    "Firefox",
    "Classes",
  ]),
  Question("Which function is the entry point of every Dart program?", [
    "main()", // correct
    "start()",
    "init()",
    "runApp()",
  ]),
  Question(
    "Which widget is used to lay out children in a vertical or horizontal direction?",
    [
      "Row / Column", // correct
      "Stack",
      "Container",
      "Scaffold",
    ],
  ),
  Question("What is the purpose of the setState() method in Flutter?", [
    "To update the UI when data changes", // correct
    "To navigate to a new screen",
    "To fetch data from the internet",
    "To build the widget tree",
  ]),
  Question(
    "What keyword is used to define a constant value at compile time in Dart?",
    [
      "const", // correct
      "final",
      "var",
      "late",
    ],
  ),
  Question(
    "Which widget is commonly used as the root of an app’s screen structure?",
    [
      "Scaffold", // correct
      "AppBar",
      "Column",
      "MaterialApp",
    ],
  ),
  Question("What is the file extension for Dart source files?", [
    ".dart", // correct
    ".d",
    ".flutter",
    ".java",
  ]),
  Question(
    "Which Flutter widget would you use to handle user gestures like tapping?",
    [
      "GestureDetector", // correct
      "InkWell",
      "Text",
      "SafeArea",
    ],
  ),
  Question(
    "How do you display a list of scrollable widgets vertically in Flutter?",
    [
      "ListView", // correct
      "Row",
      "SingleChildScrollView",
      "Expanded",
    ],
  ),
  Question("What does hot reload do in Flutter development?", [
    "Updates code changes without restarting the app", // correct
    "Deletes temporary files",
    "Rebuilds the APK",
    "Recompiles the Dart SDK",
  ]),
];
