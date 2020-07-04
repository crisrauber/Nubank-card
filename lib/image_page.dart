import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  bool _bloqueado = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 150,
                    child: GestureDetector(
                      onTap: () => setState(() => _bloqueado = !_bloqueado),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://www.nube.com.br/media/noticias/2008/06/17/1049/perfil-profissional-sucesso-carreira-caracteristicas_400x600.jpg',
                        ),
                        child: Stack(
                          children: <Widget>[
                            Opacity(
                              opacity: _bloqueado ? 0.5 : 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            _bloqueado
                                ? Positioned(
                                    bottom: 25,
                                    right: 25,
                                    child: Icon(
                                      Icons.lock_outline,
                                      color: Colors.white,
                                      size: 32,
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 16.0 / 9.0,
                    child: Image.asset(
                      'assets/lamb.jpg',
                    ),
                  ),
                  Image.network(
                      'https://s2.glbimg.com/iW3qscqjrHgRb6cq03dLpBGSDXg=/e.glbimg.com/og/ed/f/original/2019/11/26/corolla_sedan_1.8l_grey_2019_038.jpg'),
                  Image.network(
                      'https://timeline.canaltech.com.br/330291.1400/chevrolet-lanca-novo-cruze-premier-primeiro-carro-do-brasil-com-wi-fi.jpg'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
