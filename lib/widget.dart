import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class DropdownFieldWithValue extends StatelessWidget {
  const DropdownFieldWithValue({super.key});

  @override
  Widget build(BuildContext context) {
    return dropdownFieldWithValue(context);
  }
}

@widgetbook.UseCase(
  name: 'Dropdown Field with Value',
  type: DropdownButton,
)
Widget dropdownFieldWithValue(BuildContext context) {
  String? selectedValue;

  return Container(
    padding: EdgeInsets.symmetric(horizontal: 12.0.w),
    decoration: BoxDecoration(
      color: Colors.green,
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(8.0.r),
    ),
    child: Row(
      children: [
        Icon(Icons.work, size: 24.w),
        SizedBox(width: 8.w),
        Expanded(
          child: DropdownButton<String>(
            value: selectedValue,
            hint: Text("Some text"),
            isExpanded: true,
            underline: Container(),
            icon: Icon(Icons.keyboard_arrow_down, size: 24.w),
            items: const [
              'Option 1',
              'Option 2',
              'Option 3',
            ].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Row(
                  children: [
                    Icon(Icons.work, size: 24.w),
                    SizedBox(width: 8.w),
                    Text(value),
                  ],
                ),
              );
            }).toList(),
            onChanged: (String? value) {},
          ),
        ),
      ],
    ),
  );
}