import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

void main() {
  presentation("Enrico", body: (i) {
    for (int j = 0; j < i; j++) {
      print('Hello for the ${j}th time');
    }
  });
  String? txt = example(8);
  print(txt);

  String txt2 = example(8) ?? "Return null!";
  print(txt2);
}

String? example(int x) {
  if (x < 7) {
    return "Hello, world!";
  }
}

void presentation(String name, {String? client, required Function(int) body}) {
  print("$name is sending 'Helo!' to you...");

  String wrapC = client ?? "No client";
  print("There is a client: ${check(client).toString()}");

  if (check(client)) {
    print("Welcome, $client!");
  }

  body(5);
}

bool check(String? client) {
  if (client != null) {
    return true;
  }

  return false;
}

void lists() {
  List things = ['Enrico', 19, true, 30000.95];

  List<String> names = ["Sundar Pichai", "Tim Cook", "Craig Federighi"];

  print(things.first);
  print(things[0]);

  print(names.first);
  print(names[0]);
}
