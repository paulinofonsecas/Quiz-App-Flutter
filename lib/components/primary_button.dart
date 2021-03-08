import 'package:flutter/material.dart';

import '../constants.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key key,
    this.title,
    this.titleStyle,
    this.onTap,
    this.gradient = kPrimaryGradient,
  }) : super(key: key);

  final String title;
  final TextStyle titleStyle;
  final Function onTap;
  final LinearGradient gradient;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: tempoDeTroca),
        width: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            BoxShadow(
              color: gradient.colors.first,
              blurRadius: 5,
              spreadRadius: 1,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Text(
          title,
          style: titleStyle ??
              Theme.of(context).textTheme.headline6.copyWith(
                    color: Colors.white,
                  ),
        ),
      ),
    );
  }
}
