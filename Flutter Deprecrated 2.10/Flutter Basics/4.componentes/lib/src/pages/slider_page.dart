import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckbox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen()
             )
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {

    return Slider(
        activeColor: Colors.indigoAccent,
        label: 'Tamaño de la imagen',
        divisions: 100, // Sin divisiones se pierde el texto del slider
        value: _valorSlider,
        min: 100.0,
        max: 400.0,
        onChanged: (_bloquearCheck ) ? null : ( valor ) { // Si esta bloqueado que mande un nullo
          setState(() {                                   // De esta manera se bloqueara la slider
          _valorSlider = valor;
          });
        },
    );

  }

  Widget _crearCheckbox() {
    // return Checkbox( // No se puede agregar un titulo
    //   value: _bloquearCheck, // Le damos valor al checkbox
    //   onChanged: (valor) {   // Si el bloquear check es verdadero o falso
    //     setState(() {
    //     _bloquearCheck = valor;
    //     });
    //   },
    //   );

    return CheckboxListTile ( // Se le puede agregar un titulo
      title: Text('Bloquear Slider'),
      value:  _bloquearCheck, 
      onChanged: (valor) {   // Si el bloquear check es verdadero o falso
        setState(() {  // Reescribe
        _bloquearCheck = valor;
        });
    });
}

  _crearSwitch() {
    return SwitchListTile ( // Se le puede agregar un titulo
      title: Text('Bloquear Slider'),
      value:  _bloquearCheck, 
      onChanged: (valor) {   // Si el bloquear check es verdadero o falso
        setState(() {
        _bloquearCheck = valor;
        });
    });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://www.pinclipart.com/picdir/big/59-590631_cerdito-puerco-pato-cerdito-sticker-by-jona-toys.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }


}