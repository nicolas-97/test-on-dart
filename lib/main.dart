import 'package:flutter/material.dart';

void main() {
    runApp();

}

class HomePage extends StatelessWidget{
    @override
    Widget build(Buildcontext context){
        return MaterialApp(
            home: Scaffold(//scaffold utiliza el total de la pantalla o lienzo
                body: Center();
                    child: Text('Hola mundo');
            );
        );
    }


}
