import 'package:flutter/material.dart';

class DropDownFormField extends FormField<dynamic> {
  final String titleText;
  final String hintText;
  final bool required;
  final String errorText;
  final dynamic value;
  final List dataSource;
  final String textField;
  final String valueField;
  final Function onChanged;
  final bool filled;

  DropDownFormField(
      {FormFieldSetter<dynamic> onSaved,
        FormFieldValidator<dynamic> validator,
        bool autovalidate = false,
        this.titleText = 'Title',
        this.hintText = 'Select one option',
        this.required = false,
        this.errorText = 'Please select one option',
        this.value,
        this.dataSource,
        this.textField,
        this.valueField,
        this.onChanged,
        this.filled = true})
      : super(
    onSaved: onSaved,
    validator: validator,
    autovalidate: autovalidate,
    initialValue: value == '' ? null : value,
    builder: (FormFieldState<dynamic> state) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            InputDecorator(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(12, 12, 8, 0),
                labelText: titleText,
                filled: filled,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<dynamic>(
                  hint: Text(
                    hintText,
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  value: value == '' ? null : value,
                  onChanged: (dynamic newValue) {
                    state.didChange(newValue);
                    onChanged(newValue);
                  },
                  items: dataSource.map((item) {
                    return DropdownMenuItem<dynamic>(
                      value: item[valueField],
                      child: Text(item[textField]),
                    );
                  }).toList(),
                ),
              ),
              ),
            SizedBox(height: state.hasError ? 5.0 : 0.0),
            Text(
              state.hasError ? state.errorText : '',
              style: TextStyle(color: Colors.redAccent.shade700, fontSize: state.hasError ? 12.0 : 0.0),
            ),
          ],
        ),
      );
    },
  );
}
