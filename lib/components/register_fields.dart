import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';

class RegistrationForm extends StatelessWidget {
  final String headerName;
  final IconData prefixIconUrl;
  final String hintTitle;
  final String options;
  final void Function(String)? onChange;
  const RegistrationForm(
      {super.key,
      required this.headerName,
      required this.prefixIconUrl,
      required this.hintTitle,
       this.onChange,
      this.options = ''});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              headerName,
              style: const TextStyle(fontSize: 13, color: Colors.black),
            ),
            Text(
              options,
              style: const TextStyle(color: Colors.red, fontSize: 15),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.012,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width * 0.17,
          child: TextFormField(
            onChanged: onChange,
            decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.fillAndBorderColor,
                prefixIcon: Icon(
                  prefixIconUrl,
                  size: 19,
                ),
                prefixIconColor: AppColors.mainColor.withOpacity(0.5),
                hintText: hintTitle,
                hintStyle: const TextStyle(
                    color: AppColors.cardTextColor, fontSize: 13),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: AppColors.cardTextColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                  borderSide:
                      BorderSide(color: AppColors.mainColor.withOpacity(0.7)),
                )),
          ),
        )
      ],
    );
  }
}
