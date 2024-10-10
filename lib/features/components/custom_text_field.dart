import 'package:flutter/material.dart';
import 'package:swd_mobile_assessment/features/utils/app_colors.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    this.labelText,
    this.hintText,
    this.isPasswordField,
    super.key,
  });
  final String? labelText;
  final String? hintText;
  final bool? isPasswordField;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showpassword = false;
  toggleShowPassword() {
    showpassword = !showpassword;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.labelText != null)
            Text(
              widget.labelText ?? "",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          if (widget.labelText != null) const SizedBox(height: 5),
          TextField(
            obscureText: showpassword,
            cursorColor: AppColors.whiteColor,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: widget.hintText,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
              suffixIcon: (widget.isPasswordField == true
                  ? InkWell(
                      onTap: () {
                        toggleShowPassword();
                      },
                      child: Icon(
                        showpassword ? Icons.visibility_off : Icons.visibility,
                        color: AppColors.whiteColor,
                      ),
                    )
                  : const SizedBox()),
              fillColor: AppColors.black3Color,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: AppColors.black3Color,
                  width: 0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: AppColors.black3Color,
                  width: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
