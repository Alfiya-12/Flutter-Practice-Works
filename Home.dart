import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daily Fresh",
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          const Center(
              child: Text(
            "Fruits",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                child: ListTile(
              leading: Image.asset("assets/images/banana.png"),
              title: const Text("Pine Apple"),
              subtitle: const Text("\$20"),
              trailing:  Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.done_all,color: Colors.blue),

                  IconButton(onPressed: (){}, icon:  Icon(Icons.favorite_outline,color: Colors.green,),
                    ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined,
                      color: Colors.green,),

                  )
                ],
              ),
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                child: ListTile(
              leading: Image.asset("assets/images/apple.png"),
              title: const Text("Apple"),
              subtitle: const Text("\$30"),
              trailing:  Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline,color: Colors.green,)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined,color: Colors.green,))
                ],
              ),
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                child: ListTile(
              leading: Image.asset("assets/images/cherry.png"),
              title: const Text("Cherry"),
              subtitle: const Text("\$25"),
              trailing:  Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline,color: Colors.green,)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined,color: Colors.green,))
                ],
              ),
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                child: ListTile(
              leading: Image.asset("assets/images/orange.png"),
              title: const Text("Orange"),
              subtitle: const Text("\$20"),
              trailing:  Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline,color: Colors.green,)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined,color: Colors.green,))
                ],
              ),
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                child: ListTile(
              leading: Image.asset("assets/images/banana.png"),
              title: const Text("Banana"),
              subtitle: const Text("\$40"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline,color: Colors.green,)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined,color: Colors.green,))
                ],
              ),
            )),
          ),
        ],
      ),
    );
  }
}
