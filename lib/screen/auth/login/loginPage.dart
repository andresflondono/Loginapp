import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:loginapp/Animation/FadeAnimation.dart';
import 'package:loginapp/generated/l10n.dart';
import 'package:loginapp/redux/app/app_state.dart';
import 'package:loginapp/redux/home/home_actions.dart';
import 'package:loginapp/redux/home/store.dart';
import 'package:loginapp/redux/login/login_actions.dart';
import 'package:loginapp/redux/login/store.dart';
import 'package:loginapp/router/routers.dart';
import 'package:loginapp/screen/home/homePage.dart';
import 'package:loginapp/screen/menu/screenHome.dart';
import 'package:loginapp/utils/utils.dart';
import 'package:loginapp/widget/widget.dart';

final _ediUser = TextEditingController();
final _ediPassword = TextEditingController();



class loginPageState extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                    height: 300,
                    width: double.infinity,
                    child:SizedBox()),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        FadeAnimation(
                            1.8,
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Color.fromRGBO(143, 148, 251, .2),
                                        blurRadius: 20.0,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[100]))),
                                    child: TextFormField(
                                        validator: (value) {
                                          return  AppUtils().validatorTextfield(
                                              value, context);
                                        },
                                        controller: _ediUser,
                                        decoration:  AppUtils().decorationTextfield(
                                            AppLocalizations.of(context).user)),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        validator: (value) {
                                          return  AppUtils().validatorTextfield(
                                              value, context);
                                        },
                                        obscureText: true,
                                        controller: _ediPassword,
                                        decoration:  AppUtils().decorationTextfield(
                                            AppLocalizations.of(context)
                                                .password)),
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        FadeAnimation(
                            2,
                            GestureDetector(
                                onTap: () {
                                  if (_formKey.currentState.validate()) {
                                    final store = StoreProvider.of<AppStateHome>(context);
                                    String password = _ediPassword.text;
                                    String user = _ediUser.text;
                                 //  store.dispatch(HomeAction(context));
                                    if (password == "1234567" &&
                                       user == "admin") {

                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>screenHome(

                                            )),
                                      );
                                    //  Navigator.pushNamedAndRemoveUntil(context, homeRoute, (r) => false);
                                    } else {
                                      AppUtils().message(AppLocalizations.of(context).incorrect,context);



                                    }
                                 //   store.dispatch(LoginAction(context,user,password));
                                  }
                                },
                                child: butttonText(
                                    AppLocalizations.of(context).login))),
                        SizedBox(
                          height: 70,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
