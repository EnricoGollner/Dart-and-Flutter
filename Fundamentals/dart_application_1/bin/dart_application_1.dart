import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main(){
  presentation("Enrico", body: (i) {
    for(int j = 0; j < i; j++){
      print('Hello for the ${j}th time');
    }
  });
}

void presentation(String name, {
  String? client,
  required Function(int) body
}){
  print("$name is sending 'Helo!' to you...");

  String wrapC = client ?? "No client";
  print("There is a client: ${check(client).toString()}");

  if(check(client)){
    print("Welcome, $client!");
  }

  body(5);

}

bool check(String? client){
  if(client != null){
    return true;
  }

  return false;
}