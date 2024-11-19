import 'package:flutter/material.dart';

class TextListWidget extends StatefulWidget {
  final List<String> textList;
  final String title;
  final String hintText;
  final String labelText;
  final String buttonText;
  final ValueChanged<List<String>> onChanged;

  const TextListWidget({
    super.key,
    required this.textList,
    required this.title,
    required this.hintText,
    required this.labelText,
    required this.buttonText,
    required this.onChanged,
  });

  @override
  _TextListWidgetState createState() => _TextListWidgetState();
}

class _TextListWidgetState extends State<TextListWidget> {
  final TextEditingController _controller = TextEditingController();
  late List<String> _mutableTextList;
  @override
  void initState() {
    super.initState();
    _mutableTextList = List.from(widget.textList);
  }

  void _addTextToList() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _mutableTextList.add(_controller.text);
        _controller.clear();
        widget.onChanged(_mutableTextList);
      });
    }
  }

  void _removeTextFromList(int index) {
    setState(() {
      _mutableTextList.removeAt(index);
      widget.onChanged(_mutableTextList);
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: colorScheme.onPrimaryContainer,
          width: 1,
        ),
      ),
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.fromLTRB(10, 5, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: widget.hintText,
                labelText: widget.labelText,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(
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
            ),
          ),
          ElevatedButton(
            onPressed: _addTextToList,
            style: ElevatedButton.styleFrom(
              backgroundColor: colorScheme.onPrimaryContainer,
              foregroundColor: colorScheme.onPrimary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              widget.buttonText,
            ),
          ),
          const SizedBox(height: 10),
          Column(
            children: _mutableTextList.asMap().entries.map((entry) {
              int index = entry.key;
              String text = entry.value;
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorScheme.primaryContainer,
                ),
                margin: const EdgeInsets.symmetric(vertical: 5),
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        text,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () => _removeTextFromList(index), // Eliminar el texto
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
