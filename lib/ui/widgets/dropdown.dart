import 'package:flutter/material.dart';
import 'package:wanderind/shared/theme.dart';
import 'package:iconsax/iconsax.dart';

class DropdownCustom extends StatefulWidget {
  const DropdownCustom({super.key});

  @override
  State<DropdownCustom> createState() => _DropdownCustomState();
}

class _DropdownCustomState extends State<DropdownCustom> {
  String _selectedLanguage = 'Select Language';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(36),
      ),
      child: Row(
        children: [
          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _selectedLanguage,
                icon: Icon(Iconsax.arrow_down_1),
                iconSize: 24,
                elevation: 16,
                style: grayTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular
                ),
                onChanged: (dynamic newValue) {
                  setState(() {
                    _selectedLanguage = newValue.toString();
                  });
                },
                items: <String>[
                  'Select Language',
                  'English'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
