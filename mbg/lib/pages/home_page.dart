import 'package:flutter/material.dart';
import '../models/menu_model.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  final String username;
  const HomePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome, $username")), // [cite: 113]
      body: ListView.builder(
        itemCount: MenuModel.menuList.length,
        itemBuilder: (context, index) {
          final menu = MenuModel.menuList[index];
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailPage(menu: menu)),
            ),
            child: Card(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    menu.image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 200,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          menu.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text("Total Likes: ${menu.totalLike}"),
                        SizedBox(height: 5),
                        Text(
                          menu.desc,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
