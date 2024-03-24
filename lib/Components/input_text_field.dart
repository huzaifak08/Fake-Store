import 'package:fakes_store/exports/libraries.dart';

class InputTextField extends StatelessWidget {
  final TextEditingController myController;
  final FocusNode? focusNode;
  final FormFieldSetter? onFiledSubmissionValue;
  final FormFieldValidator onValidator;
  final TextInputType keyboardType;
  final String hint;
  final bool obsecureText;
  final bool enable, autoFocus;
  final ValueChanged<String>? onChanged;
  final Widget? suffixIcon;

  const InputTextField({
    super.key,
    required this.myController,
    this.focusNode,
    this.onFiledSubmissionValue,
    required this.onValidator,
    required this.keyboardType,
    required this.hint,
    required this.obsecureText,
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
        controller: myController,
        focusNode: focusNode,
        obscureText: obsecureText,
        onFieldSubmitted: onFiledSubmissionValue,
        validator: onValidator,
        keyboardType: keyboardType,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 19),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(
                color: AppColors.textFieldDefaultFocus, width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: AppColors.ternaryColor, width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.alertColor, width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: AppColors.ternaryColor, width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
          hintText: hint,
          hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: AppColors.primaryTextColor.withOpacity(0.8), height: 0),
          contentPadding: const EdgeInsets.all(15),
          suffixIcon: suffixIcon,
        ),
        onChanged: onChanged,
      ),
    );
  }
}
