import 'package:flutter/material.dart';
import 'package:flutter_kids/main/bloc/home.bloc.dart';
import 'package:flutter_kids/widgets_custom/custom_button.dart';
import 'package:flutter_kids/widgets_custom/custom_text_field.dart';
import 'package:provider/provider.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({
    super.key,
    required this.bestPoint,
  });

  final String? bestPoint;

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeBloc>(
      builder: (_, bloc, ___) {
        return Container(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomTextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusColor: Colors.white,
                  hintText: '¿Como te llamas?',
                  contentPadding: EdgeInsets.only(left: 25, right: 25),
                  hoverColor: Colors.white,
                ),
                controller: bloc.nameCtr,
                isEmptyField: bloc.isValidName(),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                onTap: () => bloc.navigateNextPage(context),
                title: 'JUGAR',
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1),
                color: Colors.transparent,
                child: Text(
                  'Record: $bestPoint',
                  style: const TextStyle(
                    fontSize: 50,
                    fontFamily: AutofillHints.familyName,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
