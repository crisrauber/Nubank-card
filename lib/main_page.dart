import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _button1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALL 02/07'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.access_alarm,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Stack(
            children: <Widget>[
              Container(
                color: Colors.grey,
              ),
              Container(
                color: Colors.white54,
                width: 120,
                height: 120,
              ),
              Positioned(
                bottom: 5,
                right: 5,
                child: Text(
                  'Positioned',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Divider(
                    height: 5,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  _textoSeparador('FLATBUTTOM'),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 80,
                        height: 80,
                        child: FlatButton(
                          shape: CircleBorder(
                            side: BorderSide(
                              style: BorderStyle.solid,
                              color: Colors.white,
                              width: 5,
                            ),
                          ),
                          color: Colors.cyan,
                          child: Text(
                            'OKAY',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () => print('clicou'),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      FlatButton.icon(
                        onPressed: () => print('clicou'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: BorderSide(
                            style: BorderStyle.solid,
                            color: Colors.white,
                            width: 5,
                          ),
                        ),
                        icon: Icon(Icons.add),
                        label: Text(
                          'OKAY',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      FlatButton.icon(
                        onPressed: () => print('clicou'),
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            style: BorderStyle.solid,
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        icon: Icon(Icons.access_alarm),
                        label: Text(
                          'OKAY',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Divider(
                    height: 5,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  _textoSeparador('RAISEDBUTTOM'),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: _button1
                            ? null
                            : () {
                                setState(() {
                                  _button1 = !_button1;
                                });
                              },
                        child: Text('OKAY'),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      RaisedButton.icon(
                        onPressed: !_button1
                            ? null
                            : () {
                                setState(() {
                                  _button1 = !_button1;
                                });
                              },
                        label: Text('OKAY'),
                        icon: Icon(
                          Icons.accessibility_new,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Divider(
                    height: 5,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  _textoSeparador('ICONBUTTOM'),
                  SizedBox(
                    height: 16,
                  ),
                  IconButton(
                    icon: Icon(Icons.add_a_photo),
                    onPressed: () => print('clicou'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Text _textoSeparador(String texto) {
    return Text(
      texto,
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    );
  }
}
