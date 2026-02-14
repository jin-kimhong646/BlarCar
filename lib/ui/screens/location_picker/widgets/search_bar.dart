import 'package:blahblah/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key, required this.onChanged});

  final ValueChanged<String> onChanged;

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _controller = TextEditingController();

  void onClear() {
    setState(() {
      _controller.clear();
      widget.onChanged("");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: BlaColors.neutralLight,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(Icons.arrow_back_ios_new, size: 20),
            ),
            const SizedBox(width: 8),

            Expanded(
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  hintText: "City...",
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 8),
                ),
                onChanged: (text) {
                  widget.onChanged(text);
                  setState(() {});
                },
              ),
            ),

            if (_controller.text.isNotEmpty)
              GestureDetector(
                onTap: onClear,
                child: const Icon(Icons.close, size: 20),
              ),
          ],
        ),
      ),
    );
  }
}
