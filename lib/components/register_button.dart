import 'package:fakes_store/exports/libraries.dart';

class RegisterButton extends StatelessWidget {
  final bool isSelected;
  final String primaryText;
  final VoidCallback onPressed;
  const RegisterButton({
    super.key,
    this.isSelected = false,
    required this.primaryText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: getWidth(context) * 0.01,
            vertical: getHeight(context) * 0.01),
        height: getHeight(context) * 0.03,
        width: getWidth(context) * 0.2,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.rejectColor : AppColors.successColor,
          borderRadius: BorderRadius.circular(23),
        ),
        child: Center(
          child: Text(
            primaryText,
            style: const TextStyle(color: AppColors.secondaryColor),
          ),
        ),
      ),
    );
  }
}
