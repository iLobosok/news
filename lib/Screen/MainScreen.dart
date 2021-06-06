import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: Alignment(-0.7, 0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(1, 0, 300, 0),
                      child: Text(
                        'Date',
                        textAlign: TextAlign.start,

                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, -0.85),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0xFF03A9F4),
                        elevation: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
              child: Container(
                width: 300,
                height: 350,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment(0, -1),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          'https://picsum.photos/seed/614/600',
                          width: MediaQuery.of(context).size.width,
                          height: 170,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-1, 0.1),
                      child: Text(
                        'Zuzana Pogonowska',

                      ),
                    ),
                    Align(
                      alignment: Alignment(1, 0.1),
                      child: Text(
                        'Date',

                      ),
                    ),
                    Align(
                      alignment: Alignment(0, 1),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: 130,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: Text(
                          'Может сделать приложение по типу \"газета вуза\". Будет два приложение: админ панель для преподов и обычная версия для юзеров. И в обычной версии просто красивый дизайн, новости и картинки с мероприятий. А в админ версии можно постить новости для версии юзеров',

                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
