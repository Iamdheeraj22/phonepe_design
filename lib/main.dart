import 'package:flutter/material.dart';
import 'package:phonepe_design/Screens/Home/HomePage.dart';
import 'package:phonepe_design/Utils/size_config.dart';
import 'package:phonepe_design/common/commmon_provider.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Center(
      child: Text(
        "Error\n${details.exception}",
        style: const TextStyle(
            color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  };
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CommonProviderModel>(
            create: ((_) => CommonProviderModel())),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(primaryColor: Color.fromARGB(255, 0, 26, 112)),
          home: HomePage(),
          builder: (context, child) {
            SizeConfig.initialize(
                context: context,
                draftWidth: MediaQuery.of(context).size.width,
                draftHeight: MediaQuery.of(context).size.height);
            return child!;
          }),
    );
  }
}
// 