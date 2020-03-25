import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _fecha = '';
  TextEditingController _inputFieldDateController = new TextEditingController();
  String _opcionSeleccionada = 'Rol indeterminado';

  List<String> _rol = ['Profesor', 'Alumno', 'Ex-alumno', 'Rol indeterminado'];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearMenuDesplegable(), // Conocido como drop dawn o combobox
          Divider(),
          _printUsuario(),
        ],
      ),
    );
  }

  Widget _crearInput(){
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: 'Nombre de usuario',
        labelText: 'Nombre',
        suffixIcon: Icon(Icons.accessibility, color: Colors.blue),
          icon: Icon(Icons.person_pin)
      ),
      onChanged: (valor){
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _crearEmail(){
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: 'Escrbir e-mail',
        labelText: 'E-mail',
        suffixIcon: Icon(Icons.email, color: Colors.blue),
          icon: Icon(Icons.alternate_email)
      ),
      onChanged: (valor){
        setState(() {
          _email = valor;
        });
      },
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'Escrbir contraseña.',
          labelText: 'Contraseña',
          suffixIcon: Icon(Icons.lock_open, color: Colors.blue),
          icon: Icon(Icons.lock)
      ),
      onChanged: (valor) {
        setState(() {
          _email = valor;
        });
      },
    );
  }

  Widget _crearFecha(BuildContext conext) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'Fecha de nacimiento.',
          labelText: 'Fecha de nacimiento',
          suffixIcon: Icon(Icons.calendar_view_day, color: Colors.blue),
          icon: Icon(Icons.calendar_today)
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      });
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker( // Await porque retorna un future
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2090),
      locale: Locale('es', 'ES')
    );

    if (picked != null){
      setState(() {
        _fecha = picked.toString();
        _fecha = _fecha.substring(0, 10);
        _inputFieldDateController.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpcionesMenuDesplegable() {
    List<DropdownMenuItem<String>> lista = new List();
    _rol.forEach((element) {
      lista.add(DropdownMenuItem(
        child: Text(element),
        value: element,
      ));
    });
    return lista;
  }


  Widget _crearMenuDesplegable(){
    return DropdownButton(
      value: _opcionSeleccionada,
      items: getOpcionesMenuDesplegable(),
      onChanged: (opt){
        setState(() {
          _opcionSeleccionada = opt;
        });
      },
    );
  }

  Widget _printUsuario() {
    return ListTile(
      title: Text('Nombre: $_nombre'),
      subtitle: Text('E-mail: $_email'),
      trailing: Text(_opcionSeleccionada),
    );
  }
}
