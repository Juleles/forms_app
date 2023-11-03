// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_phone_field/form_builder_phone_field.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:radio_group_v2/radio_group_v2.dart';

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
          child: SingleChildScrollView(
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
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(20.0),
                  child: Column(
                    // Wrap the FormBuilderRadioGroup with a Column
                    mainAxisAlignment: MainAxisAlignment
                        .start, // Align the radio buttons vertically
                    children: [
                      Text(
                        "What is you favorite animal?",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      FormBuilderRadioGroup(
                        name: 'radio_group',
                        options: [
                          FormBuilderFieldOption(
                              value: 'Elephant', child: Text('Elephant')),
                          FormBuilderFieldOption(
                              value: 'Turtle', child: Text('Turtle')),
                          FormBuilderFieldOption(
                              value: 'Monkey', child: Text('Monkey')),
                          FormBuilderFieldOption(
                              value: 'Dog', child: Text('Dog')),
                          FormBuilderFieldOption(
                            value: 'Cat',
                            child: Text('Cat'),
                          ),
                        ],
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
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.all(20.0),
                    child: FormBuilderTextField(
                      name: 'text_field',
                      decoration: InputDecoration(
                          labelText: 'Why do you like this animal?',
                          labelStyle: TextStyle(fontSize: 16)),
                      validator: FormBuilderValidators.required(),
                    )),
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
                  child: FormBuilderDropdown(
                    name: 'dropdown_field',
                    decoration: InputDecoration(
                      labelText: 'Gender',
                      labelStyle: TextStyle(fontSize: 16),
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
                Text(
                  "Choose your Age",
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
                  margin: EdgeInsets.all(20.0),
                  child: FormBuilderCheckboxGroup(
                    name: 'checkbox',
                    activeColor: Colors.black,
                    hoverColor: Colors.white38,
                    options: [
                      FormBuilderFieldOption(
                        value: 'Below_7',
                        child: Text('Below 7'),
                      ),
                      FormBuilderFieldOption(
                        value: '8_17',
                        child: Text('8 - 17'),
                      ),
                      FormBuilderFieldOption(
                        value: '18_21',
                        child: Text('18 - 21'),
                      ),
                      FormBuilderFieldOption(
                        value: 'Above 21',
                        child: Text('Above 21'),
                      ),
                    ],
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
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0), // Add margin around Text 1
                      child: Text('Personal',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0), // Add margin around Text 1
                      child: Text('----------',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0), // Add margin around Text 2
                      child: Text('Contact',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0), // Add margin around Text 1
                      child: Text('----------',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0), // Add margin around Text 3
                      child: Text('Upload',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 1000,
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
                margin: EdgeInsets.all(10.0),
                child: FormBuilderTextField(
                  name: 'textfield', // Unique name for the text field
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter Email',
                  ),
                  style: TextStyle(fontSize: 16),
                  keyboardType: TextInputType.text,
                  validator: FormBuilderValidators.required(),
                ),
              ),
              Container(
                height: 100,
                width: 1000,
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
                margin: EdgeInsets.all(10.0),
                child: TextField(
                  maxLines: null, // Allow multiple lines
                  decoration: InputDecoration(
                    labelText: 'Address',
                    hintText: 'Enter Email',
                  ),
                  style: TextStyle(fontSize: 16),
                  keyboardType: TextInputType
                      .multiline, // Set keyboardType to TextInputType.multiline
                ),
              ),
              Container(
                height: 100,
                width: 1000,
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
                margin: EdgeInsets.all(10.0),
                child: FormBuilderPhoneField(
                  name: 'phone_number',
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    hintText: 'Hint',
                  ),
                  // onChanged: _onChanged,
                  priorityListByIsoCode: const ['KE'],
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.numeric(),
                    FormBuilderValidators.required(),
                  ]),
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

class Formulario3 extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  void _onChanged(dynamic val) => debugPrint(val.toString());

  Formulario3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario 3'),
      ),
      body: SingleChildScrollView(
        // Wrap the entire content with SingleChildScrollView
        child: Center(
          child: FormBuilder(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Container(
                  height: 100,
                  width: 1000,
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
                  margin: EdgeInsets.all(10.0),
                  child: Center(
                    child: FormBuilderChoiceChip<String>(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: const InputDecoration(
                        labelText:
                            'Ok, if I had to choose one language, it would be:',
                      ),
                      name: 'languages_choice',
                      initialValue: 'Dart',
                      options: const [
                        FormBuilderChipOption(
                          value: 'Dart',
                          avatar: CircleAvatar(child: Text('D')),
                        ),
                        FormBuilderChipOption(
                          value: 'Kotlin',
                          avatar: CircleAvatar(child: Text('K')),
                        ),
                        FormBuilderChipOption(
                          value: 'Java',
                          avatar: CircleAvatar(child: Text('J')),
                        ),
                        FormBuilderChipOption(
                          value: 'Swift',
                          avatar: CircleAvatar(child: Text('S')),
                        ),
                        FormBuilderChipOption(
                          value: 'Objective-C',
                          avatar: CircleAvatar(child: Text('O')),
                        ),
                      ],
                      onChanged: _onChanged,
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 1000,
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
                  margin: EdgeInsets.all(10.0),
                  child: Center(
                    child: FormBuilderSwitch(
                      title: const Text('I Accept the terms and conditions'),
                      name: 'accept_terms_switch',
                      initialValue: false,
                      onChanged: _onChanged,
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 1000,
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
                  margin: EdgeInsets.all(10.0),
                  child: FormBuilderField<DateTime?>(
                    name: 'date',
                    builder: (FormFieldState field) {
                      return InputDatePickerFormField(
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now().add(const Duration(days: 30)),
                        onDateSubmitted: (value) => field.didChange(value),
                        errorInvalidText: field.errorText,
                        onDateSaved: (value) => field.didChange(value),
                      );
                    },
                  ),
                ),
                Container(
                  height: 100,
                  width: 1000,
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
                  margin: EdgeInsets.all(10.0),
                  child: FormBuilderDropdown<String>(
                    name: 'dropdown_field', // Unique name for the field
                    decoration: InputDecoration(labelText: 'Select Country'),
                    initialValue: 'option1', // Initial value
                    items: [
                      DropdownMenuItem(
                        value: 'option1',
                        child: Text('Finland'),
                      ),
                      DropdownMenuItem(
                        value: 'option2',
                        child: Text('Spain'),
                      ),
                      DropdownMenuItem(
                        value: 'option3',
                        child: Text('Philippines'),
                      ),
                    ],
                    validator: FormBuilderValidators
                        .required(), // Validator (required in this example)
                  ),
                ),
                Container(
                  height: 100,
                  width: 1000,
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
                  margin: EdgeInsets.all(10.0),
                  child: FormBuilderRadioGroup<String>(
                    decoration: const InputDecoration(
                      labelText: 'My chosen language',
                    ),
                    initialValue: null,
                    name: 'best_language',
                    onChanged: _onChanged,
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required()]),
                    options: ['Dart', 'Kotlin', 'Java', 'Swift', 'Objective-C']
                        .map((lang) => FormBuilderFieldOption(
                              value: lang,
                              child: Text(lang),
                            ))
                        .toList(growable: false),
                    controlAffinity: ControlAffinity.trailing,
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
      ),
    );
  }
}

class Formulario4 extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();
  void _onChanged(dynamic val) => debugPrint(val.toString());

  static const List<String> _AutoOptions = <String>[
    'Spain',
    'France',
    'Switzerland',
    'Portugal',
    'Brazil',
  ];

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
                height: 100,
                width: 1000,
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
                child: FormBuilderDateTimePicker(
                  name: 'date',
                  initialEntryMode: DatePickerEntryMode.calendar,
                  initialValue: DateTime.now(),
                  inputType: InputType.both,
                  decoration: InputDecoration(
                    labelText: 'Appointment Time',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        _formKey.currentState!.fields['date']?.didChange(null);
                      },
                    ),
                  ),
                  initialTime: const TimeOfDay(hour: 8, minute: 0),
                  // locale: const Locale.fromSubtags(languageCode: 'fr'),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Where do you want to go?', // Your label text
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 1000,
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
                    margin: EdgeInsets.all(10.0),
                    child: FormBuilderField<String?>(
                      name: 'name',
                      builder: (FormFieldState field) {
                        return Autocomplete<String>(
                          optionsBuilder: (TextEditingValue textEditingValue) {
                            if (textEditingValue.text == '') {
                              return const Iterable<String>.empty();
                            }
                            return _AutoOptions.where((String option) {
                              return option.contains(
                                  textEditingValue.text.toLowerCase());
                            });
                          },
                          onSelected: (String selection) {
                            field.didChange(selection);
                          },
                        );
                      },
                      autovalidateMode: AutovalidateMode.always,
                      validator: (valueCandidate) {
                        if (valueCandidate?.isEmpty ?? true) {
                          return 'This field is required.';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              Container(
                height: 100,
                width: 1000,
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
                margin: EdgeInsets.all(10.0),
                child: FormBuilderDateRangePicker(
                  name: 'date_range',
                  firstDate: DateTime(1970),
                  lastDate: DateTime(2030),
                  onChanged: _onChanged,
                  decoration: InputDecoration(
                    helperText: 'Select Date',
                    hintText: 'Choose the Date',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        _formKey.currentState!.fields['date_range']
                            ?.didChange(null);
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
