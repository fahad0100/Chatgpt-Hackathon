import 'dart:convert';
import 'package:http/http.dart' as http;

methodCreateResume({String? data}) async {
  Uri url =
      Uri.parse('https://experimental.willow.vectara.io/v1/chat/completions');
  var headers = {
    'Content-Type': 'application/json',
    'customer-id': '1550927641',
    'x-api-key': 'zqt_XHFHGSAxyD8eE5FYN1o0gehv4MyDrKR0IDhrCw'
  };

  final body = {
    "model": "gpt-3.5-turbo",
    "messages": [
      {
        "role": "user",
        "content":
            "Create a professional CV for me, making sure to include (Personal information, summary, education, technical and soft skills, and also Career Interests) for me from this data provided \"${data}\""
      }
    ]
  };

  print("Start.....");
  var response =
      await http.post(url as Uri, headers: headers, body: jsonEncode(body));

  Map dataList = json.decode(response.body);

  String reusme = dataList['choices'][0]['message']['content'];

  print(reusme);
  return reusme;
}
