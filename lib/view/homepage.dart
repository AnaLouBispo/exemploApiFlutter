import 'dart:convert' as convert;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () async {
                //Fazer busca na API e exibir os dados nos console
                // Chamar a API
                var url = 'https://fakestoreapi.com/products/1';
                var response = await http.get(Uri.parse(url));
                print(response.body);

                var jsonReponse = convert.jsonDecode(response.body);
                print(jsonReponse['title']);
                print(jsonReponse['price']);
                print(jsonReponse['description']);
                print(jsonReponse['category']);
                print(jsonReponse['image']);
                print(jsonReponse['rating']);
                print(jsonReponse['rating']['count']);
                

              },
              child: Text("GetData"))
        ],
      ),
    );
  }
}
