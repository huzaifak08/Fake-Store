import 'package:fakes_store/exports/libraries.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final FormFieldSetter? onFiledSubmissionValue;
  final FormFieldValidator? onValidator;
  final TextInputType? keyboardType;
  final String? hint, label;
  final bool? obsecureText;
  final bool enable, autoFocus;
  final ValueChanged<String>? onChanged;
  final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    this.controller,
    this.focusNode,
    this.onFiledSubmissionValue,
    this.onValidator,
    this.keyboardType,
    this.hint,
    this.label,
    this.obsecureText = false,
    this.enable = true,
    this.autoFocus = false,
    this.onChanged,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        obscureText: obsecureText ?? false,
        onFieldSubmitted: onFiledSubmissionValue,
        validator: onValidator,
        keyboardType: keyboardType ?? TextInputType.text,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 19),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(
                color: AppColors.textFieldDefaultFocus, width: 2),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: AppColors.ternaryColor, width: 2),
            borderRadius: BorderRadius.circular(30),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.alertColor, width: 2),
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: AppColors.ternaryColor, width: 2),
            borderRadius: BorderRadius.circular(30),
          ),
          hintText: hint,
          hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: AppColors.primaryTextColor.withOpacity(0.8), height: 0),
          contentPadding: const EdgeInsets.all(15),
          suffixIcon: suffixIcon,
          labelText: label,
        ),
        onChanged: onChanged,
      ),
    );
  }
}
