import 'package:bytebank/database/dao/contact_dao.dart';
import 'package:flutter/cupertino.dart';

class AppDependencies extends InheritedWidget {
  final ContactDao contactDao;

  AppDependencies({
    @required this.contactDao,
    @required Widget child,
  }) : super(child: child);

  static AppDependencies of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<AppDependencies>();

  //Notifica quem está utilizando função se houve modificação
  @override
  bool updateShouldNotify(AppDependencies oldWidget) {
    return contactDao != oldWidget.contactDao;
  }
}
