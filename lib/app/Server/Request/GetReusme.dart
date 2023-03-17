import 'dart:convert';

import 'package:http/http.dart' as http;

sendq() async {
  Uri url = Uri.parse('https://api.openai.com/v1/completions');
  var headers = {
    'Content-Type': 'application/json',
    'authorization':
        'Bearer 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',
  };

  final body = {
    "model": "gpt-3.5-turbo",
    "messages": [
      {
        "role": "user",
        "content":
            "can you create cv this data provided Name: Fahad Alazmi, Data Birthday: 1994/10/10. Phone Number: 501231240, Email: fahad@gmail.com. country: Ryid, City: dmamm. University Name: Imamm mohammed, University Specialization: computer. softwer Reloaded 1 of 1104 libraries in 342ms (compile: 25 ms, reload: 108 ms, reassemble: 193 ms). Name: Fahad Alazmi, Data Birthday: 1994/10/10. Phone Number: 501231240, Email: fahad@gmail.com. country: Ryid, City: dmamm. University Name: Imamm mohammed, University Specialization: computer. Interested in career fields: softwer"
      }
    ]
  };
  print("Start.....");
  var response =
      await http.post(url as Uri, headers: headers, body: jsonEncode(body));

  Map data = json.decode(response.body);

  print(data["choices"][0]['text']);
  final codeUnits = data["choices"][0]['text'].codeUnits;
  var dataView = Utf8Decoder().convert(codeUnits);
}

send({String? data}) async {
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
            " create cv include (Person Information and contact,ejective,Education,Certificates if provided with data ,work experience if provided with data ,skills,Career Interests) this data provided \"Name: Fahad Alazmi, Data Birthday: 1994/10/10. Phone Number: 501231240, Email: fahad@gmail.com. country: Ryid, City: dmamm. University Name: Imamm mohammed, University Specialization: computer. softwer Reloaded 1 of 1104 libraries in 342ms (compile: 25 ms, reload: 108 ms, reassemble: 193 ms). Name: Fahad Alazmi, Data Birthday: 1994/10/10. Phone Number: 501231240, Email: fahad@gmail.com. country: Ryid, City: dmamm. University Name: Imamm mohammed, University Specialization: computer. Interested in career fields: softwer\""
      }
    ]
  };

  print("Start.....");
  var response =
      await http.post(url as Uri, headers: headers, body: jsonEncode(body));

  Map dataList = json.decode(response.body);

  print(dataList['choices'][0]['message']['content']);
}




/*

{
    "model": "gpt-3.5-turbo",
    "messages": [
        {
            "role": "user",
            "content": "can you create cv this data profided  name:Ragad Alshamrani, address: Riyadh, Saudi Arabia, contact information:+966508959811, skils: mnagment, university:Muhammad bin Saud Al , mager: MIS"
        }
    ]
}


*/