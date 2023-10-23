// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_phone_field/form_builder_phone_field.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formularios en Flutter',
      // Locale config required by form_builder_validators
      // https://github.com/danvick/flutter_form_builder/blob/master/packages/form_builder_validators/example/lib/main.dart
      supportedLocales: const [...FormBuilderLocalizations.supportedLocales],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        FormBuilderLocalizations.delegate,
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jules William Custodio 23-24'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 179, 154, 221),
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            child: ListTile(
              title: const Text('Formulario 1'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return Formulario1();
                  },
                ));
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 179, 154, 221),
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            child: ListTile(
              title: const Text('Formulario 2'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return Formulario2();
                  },
                ));
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 179, 154, 221),
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            child: ListTile(
              title: const Text('Formulario 3'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return Formulario3();
                  },
                ));
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 179, 154, 221),
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            child: ListTile(
              title: const Text('Formulario 4'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return Formulario4();
                  },
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Formulario1 extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  Formulario1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario 1'),
      ),
      body: Center(
        child: FormBuilder(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 179, 154, 221),
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(50.0),
                child: FormBuilderCheckboxGroup(
                  name: 'checkbox',
                  // ignore: prefer_const_literals_to_create_immutables
                  options: [
                    FormBuilderFieldOption(
                      value: 'Like',
                      child: Text('Like'),
                    ),
                    FormBuilderFieldOption(
                      value: 'Subscribe',
                      child: Text('Subscribe'),
                    ),
                    FormBuilderFieldOption(
                      value: 'Share',
                      child: Text('Share'),
                    ),
                    FormBuilderFieldOption(
                      value: 'Follow',
                      child: Text('Follow'),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 179, 154, 221),
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(50.0),
                child: FormBuilderDropdown(
                  name: 'dropdown_field',
                  decoration: InputDecoration(
                    labelText: 'Select an option',
                    hintText: 'Choose one',
                  ),
                  items: ['Male', 'Female', 'Prefer not to say']
                      .map((option) => DropdownMenuItem(
                            value: option,
                            child: Text(option),
                          ))
                      .toList(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.saveAndValidate()) {
                        debugPrint(_formKey.currentState!.value.toString());
                      }
                    },
                    child: Text("Submit"),
                  ),
                  SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {
                      _formKey.currentState?.reset();
                      debugPrint(_formKey.currentState!.value.toString());
                    },
                    child: Text("Reset"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Formulario2 extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  Formulario2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario 2'),
      ),
      body: Center(
        child: FormBuilder(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 179, 154, 221),
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(50.0),
                child: FormBuilderCheckboxGroup(
                  name: 'checkbox',
                  // ignore: prefer_const_literals_to_create_immutables
                  options: [
                    FormBuilderFieldOption(
                      value: 'Like',
                      child: Text('Like'),
                    ),
                    FormBuilderFieldOption(
                      value: 'Subscribe',
                      child: Text('Subscribe'),
                    ),
                    FormBuilderFieldOption(
                      value: 'Share',
                      child: Text('Share'),
                    ),
                    FormBuilderFieldOption(
                      value: 'Follow',
                      child: Text('Follow'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Formulario3 extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  Formulario3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario 3'),
      ),
      body: Center(
        child: FormBuilder(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 179, 154, 221),
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(50.0),
                child: FormBuilderCheckboxGroup(
                  name: 'checkbox',
                  // ignore: prefer_const_literals_to_create_immutables
                  options: [
                    FormBuilderFieldOption(
                      value: 'Like',
                      child: Text('Like'),
                    ),
                    FormBuilderFieldOption(
                      value: 'Subscribe',
                      child: Text('Subscribe'),
                    ),
                    FormBuilderFieldOption(
                      value: 'Share',
                      child: Text('Share'),
                    ),
                    FormBuilderFieldOption(
                      value: 'Follow',
                      child: Text('Follow'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Formulario4 extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  Formulario4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario 4'),
      ),
      body: Center(
        child: FormBuilder(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 179, 154, 221),
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(50.0),
                child: FormBuilderCheckboxGroup(
                  name: 'checkbox',
                  // ignore: prefer_const_literals_to_create_immutables
                  options: [
                    FormBuilderFieldOption(
                      value: 'Like',
                      child: Text('Like'),
                    ),
                    FormBuilderFieldOption(
                      value: 'Subscribe',
                      child: Text('Subscribe'),
                    ),
                    FormBuilderFieldOption(
                      value: 'Share',
                      child: Text('Share'),
                    ),
                    FormBuilderFieldOption(
                      value: 'Follow',
                      child: Text('Follow'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
