import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_app/core/router.dart';
import 'package:test_app/firebase_options.dart';
import 'package:test_app/ui/app_colors.dart';
import 'package:test_app/utils/context_utils.dart';

Future<void> main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp( ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
   final _appRouter = AppRouter();
   MyApp({super.key});
 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ContextUtils.hideKeyboard(context),
      child: MaterialApp.router(
        title: 'Test app',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.purple),
          useMaterial3: true,
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
