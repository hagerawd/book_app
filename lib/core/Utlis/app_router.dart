import 'package:book_app/features/Home/presentation/Views/Home_view.dart';
import 'package:book_app/features/Home/presentation/Views/book_details_view.dart';
import 'package:book_app/features/Search/Presentation/Views/search_view.dart';
import 'package:book_app/features/Splash/Presentation/Views/SplashView.dart';
import 'package:go_router/go_router.dart';
abstract class AppRouter {

  static var router = GoRouter(
    routes: [
      GoRoute (
        path: "/",
        builder: (context , state ) => SplashView(),
      ),
      GoRoute (
        path: "/homeView",
        builder: (context , state ) => HomeView(),
      ),
      GoRoute (
        path: "/bookDetailsView",
        builder: (context , state ) => BookDetailsView(),
      ),
      GoRoute (
        path: "/SearchView",
        builder: (context , state ) => SearchView(),
      ),
    ]
  );
}
