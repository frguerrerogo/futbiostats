import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerField extends StatefulWidget {
  final DateTime initialDate;
  final String hintText;
  final String labelText;
  final ValueChanged<DateTime> onChanged;

  const DatePickerField({
    super.key,
    required this.initialDate,
    required this.hintText,
    required this.labelText,
    required this.onChanged,
  });

  @override
  _DatePickerFieldState createState() => _DatePickerFieldState();
}

class _DatePickerFieldState extends State<DatePickerField> {
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialDate;
  }

  String _formatDate(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }

  void _pickDate() async {
    DateTime initialDate = _selectedDate ?? DateTime.now();
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (selectedDate != null) {
      setState(() {
        _selectedDate = selectedDate;
      });
      widget.onChanged(selectedDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
      child: TextField(
        readOnly: true,
        onTap: _pickDate,
        decoration: InputDecoration(
          hintText: widget.hintText,
          labelText: widget.labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: colorScheme.onPrimaryContainer,
              width: 1,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        ),
        style: const TextStyle(fontSize: 14),
        textAlignVertical: TextAlignVertical.center,
        cursorHeight: 20,
        controller: TextEditingController(
          text: _formatDate(_selectedDate!) == _formatDate(DateTime.now()) ? '' : _formatDate(_selectedDate!),
        ),
      ),
    );
  }
}
