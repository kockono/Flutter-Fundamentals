import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = '';
  String _email  = '';
  String _fecha  = '';
  String _opcionSeleccionada = '';


  List <String> _poderes = ['Volar', 'Rayos X', 'Super Aliento', 'Super Correr'];

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropDown(),
          Divider(),
          _crearPersona(),
        ],
      )
    );
  }

  Widget _crearInput() {
    // return Textfile   // Funciona de manera independiente
    return TextField (   // Tiene mejores validaciones de formularios
        autofocus: false, // Puede ir directamente al input en true
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          counter: Text('Letras ${ _nombre.length }'), // Letra abajito del input inferior derecha
          hintText: 'Nombre de la persona',  // Como placeholder
          helperText: 'Solo es el nombre',    // De bajo del input
          suffixIcon: Icon(Icons.accessibility), // Icono al final del input
          icon: Icon( Icons.account_circle )   // Icono al inicio del input
          
        ), 
        onChanged: (valor) {
          setState(() {
            _nombre = valor;
          });
        }, // El valor actual del input
    ); 
  }



  Widget _crearPersona() {
      return ListTile(
          title: Text('Nombre es: $_nombre'),
          subtitle: Text('Email: $_email'),
          trailing: Text(_opcionSeleccionada),
      );
  }

  Widget _crearEmail() {

    return TextField (   // Tiene mejores validaciones de formularios
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          hintText  : 'Email',  // Como placeholder
          labelText : 'Email',    // Arribita del input
          suffixIcon: Icon(Icons.alternate_email), // Icono al final del input
          icon: Icon( Icons.email )   // Icono al inicio del input
          
        ), 
        onChanged: (valor) {
          setState(() {
            _email = valor;
          });
        }, // El valor actual del input
    ); 
  }
  
  Widget _crearPassword() {

    return TextField (   // Tiene mejores validaciones de formularios
        obscureText: true, // Esconder caracters contraseñas
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          hintText  : 'Contraseña',  // Como placeholder
          labelText : 'Contraseña',    // Arribita del input
          suffixIcon: Icon(Icons.lock_open), // Icono al final del input
          icon: Icon( Icons.lock )   // Icono al inicio del input
          
        ), 
        onChanged: (valor) {
          setState(() {
            _email = valor;
          });
        }, // El valor actual del input
    ); 
  }

  Widget _crearFecha(BuildContext context) {

        return TextField (   // Tiene mejores validaciones de formularios
        enableInteractiveSelection: false, // No se puede copiar
        controller: _inputFieldDateController,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          hintText  : 'Fecha de nacimiento',  // Como placeholder
          labelText : 'Fecha de nacimiento',    // Arribita del input
          suffixIcon: Icon(Icons.calendar_today_outlined), // Icono al final del input
          icon: Icon( Icons.calendar_today )   // Icono al inicio del input
          
        ), 
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
          _selectDate(context);
        }, // El valor actual del input
    ); 

  }

  Widget _crearDropDown() {

      if(_opcionSeleccionada == null || _opcionSeleccionada == ''){
          _opcionSeleccionada = _poderes[0];
      }

    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0,),
        Expanded( // Toma el cuadro del drop down por completo en el celular
            child: DropdownButton(
            value: _opcionSeleccionada, // Opcion por defecto del dropDown
            items: getOpcionesDropDown(),
            onChanged: (opcion) {
              setState(() {
                _opcionSeleccionada = opcion;
              });
            },
          ),
        )
      ],
    );
  }

  List<DropdownMenuItem<String>> getOpcionesDropDown() {

    List<DropdownMenuItem<String>> lista = [];

    _poderes.forEach((poder) {
      
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
        ));

    });

    return lista;

  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context, 
      initialDate: new DateTime.now(), 
      firstDate: new DateTime(2018), 
      lastDate: new DateTime(2025),
      locale: Locale('es','')
      );

      if( picked != null ) {
          setState(() {
            // final _formatdate = DateFormat('dd/MM/yyyy');
            _fecha = picked.toString().substring(0, 10).split("-").reversed.join("/");;
            _inputFieldDateController.text = _fecha;
          });
      }
  }


}

