import 'package:dentist/ai_screen/ai_screen.dart';
import 'package:dentist/call_screen/call_screen.dart';
import 'package:dentist/clinic_screen/clinic_screen.dart';
import 'package:dentist/home_screen/home_screen.dart';
import 'package:go_router/go_router.dart';

enum AppRoutes {
  home,
  clinic,
  call,
  ai,
}

final goRouter = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoutes.home.name,
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: 'clinic/:clinicName',
          name: AppRoutes.clinic.name,
          builder: (context, state) {
            final clinicName = state.params['clinicName']!;
            return ClinicScreen(clinicName: clinicName);
          },
        ),
        GoRoute(
          path: 'call',
          name: AppRoutes.call.name,
          builder: (context, state) => const CallScreen(),
        ),
        GoRoute(
          path: 'ai',
          name: AppRoutes.ai.name,
          builder: (context, state) => const AiScreen(),
        ),
      ],
    ),
  ],
);
