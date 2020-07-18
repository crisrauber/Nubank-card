import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class NuBankPage extends StatefulWidget {
  @override
  _NuBankPageState createState() => _NuBankPageState();
}

class _NuBankPageState extends State<NuBankPage> {
  final nomeController = TextEditingController();
  final numeroController = TextEditingController();

  bool cardSide = true;

  @override
  void dispose() {
    nomeController.dispose();
    numeroController.dispose();
    super.dispose();
  }

  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(153, 51, 153, .5),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(109, 33, 119, 1),
        title: Text('Cartão do Nubank'),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                labelStyle: TextStyle(color: Colors.white),
                labelText: 'Nome do Titular'),
            controller: nomeController,
            onTap: () => {
              if (!cardSide)
                {
                  setState(() {
                    cardSide = !cardSide;
                  }),
                  cardKey.currentState.toggleCard()
                },
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                labelStyle: TextStyle(color: Colors.white),
                labelText: 'Número do Cartão'),
            controller: numeroController,
            onTap: () => {
              if (cardSide)
                {
                  setState(() {
                    cardSide = !cardSide;
                  }),
                  cardKey.currentState.toggleCard()
                },
            },
          ),
          Container(
            child: Center(
              child: Container(
                margin: const EdgeInsets.all(5),
                child: AspectRatio(
                  aspectRatio: 8 / 5,
                  child: FlipCard(
                    key: cardKey,
                    direction: FlipDirection.VERTICAL,
                    front: Container(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        color: Color.fromRGBO(109, 33, 119, 1),
                        child: Stack(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Image.asset(
                                  'assets/mastercard.png',
                                  scale: 2.0,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Image.asset(
                                        'assets/chip.png',
                                        scale: 15.0,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Image.asset(
                                          'assets/nfc.png',
                                          scale: 150.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 90),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Image.asset(
                                        'assets/nu_logo.png',
                                        scale: 7.0,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.all(16),
                                          child: Text(
                                            nomeController.text,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    back: Container(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        color: Color.fromRGBO(109, 33, 119, 1),
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    height: 80,
                                    color: Color.fromRGBO(192, 192, 192, 1),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 90),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                          padding: const EdgeInsets.all(30),
                                          child: Text(
                                            numeroController.text,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          )),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Image.asset(
                                          'assets/cirrus.png',
                                          scale: 0.8,
                                          // color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
