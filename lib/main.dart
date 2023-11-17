import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_app/core/router.dart';
import 'package:test_app/firebase_options.dart';
import 'package:test_app/service/order_details_service.dart';
import 'package:test_app/ui/app_colors.dart';
import 'package:test_app/utils/context_utils.dart';
import 'package:test_app/view_model/navigation_viewmodel.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  final _appRouter = AppRouter();

  @override
  void initState() {
    ref.read(orderDetailsSerrviceProvider).connectToAbly();
    super.initState();
    print(FirebaseAuth.instance.currentUser);
  }

  @override
  Widget build(BuildContext context) {
    ref.read(navigationProvider).router = _appRouter;
    return GestureDetector(
      onTap: () => ContextUtils.hideKeyboard(context),
      child: MaterialApp.router(
        title: 'Test app',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primarycolor),
          useMaterial3: true,
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        routerConfig: ref.read(navigationProvider).router.config(),
      ),
    );
  }
}
