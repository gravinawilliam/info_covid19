import 'package:flutter/material.dart';
import '../../../../../../../core/constants/constants.dart';

class CardContinent extends StatelessWidget {
  final int confirmados;
  final int quantidade;
  final int index;
  final String name;
  final Function onTap;

  const CardContinent({
    this.confirmados,
    this.index,
    this.quantidade,
    this.onTap,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          color: Theme.of(context).primaryColor,
        ),
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1.copyWith(
                    fontSize: 18,
                  ),
              maxLines: 2,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5),
              width:
                  (SizeConst.screenWidth - (3 * SizeConst.paddingHorizontal)) *
                      .62,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    LocaleProvider.of(context).cases,
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.headline2.copyWith(
                          fontSize: 20,
                        ),
                    maxLines: 2,
                  ),
                  Text(
                    confirmados.toString(),
                    textAlign: TextAlign.right,
                    style: Theme.of(context).textTheme.headline3.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                    maxLines: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
