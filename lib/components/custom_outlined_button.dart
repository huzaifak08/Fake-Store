import 'package:fakes_store/exports/libraries.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool loading;
  final Color color, textColor;
  const CustomOutlinedButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.color = AppColors.secondaryColor,
    this.textColor = AppColors.primaryTextColor,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: loading ? null : onPressed,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: loading
              ? const CircularProgressIndicator(
                  color: Colors.black,
                )
              : Text(
                  title,
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontSize: 16,
                      color: textColor,
                      fontWeight: FontWeight.w500),
                ),
        ),
      ),
    );
  }
}
