import 'package:fakes_store/exports/libraries.dart';

class DescriptionTextField extends StatelessWidget {
  final TextEditingController myController;
  final FocusNode? focusNode;
  final FormFieldSetter? onFiledSubmissionValue;
  final FormFieldValidator onValidator;
  final String hint;
  final bool enable, autoFocus;
  final ValueChanged<String>? onChanged;
  const DescriptionTextField({
    super.key,
    required this.myController,
    this.focusNode,
    this.onFiledSubmissionValue,
    required this.onValidator,
    required this.hint,
    this.enable = true,
    this.autoFocus = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      focusNode: focusNode,
      onFieldSubmitted: onFiledSubmissionValue,
      validator: onValidator,
      keyboardType: TextInputType.name,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 19),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(
              color: AppColors.textFieldDefaultFocus, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.ternaryColor, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.alertColor, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.ternaryColor, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        hintText: hint,
        hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: AppColors.primaryTextColor.withOpacity(0.8), height: 0),
        contentPadding: const EdgeInsets.all(15),
        counterStyle: Theme.of(context).textTheme.bodyMedium,
      ),
      maxLength: 150,
      maxLines: 3,
      onChanged: onChanged,
    );
  }
}
