import 'package:erp/Features/Reports/presentation/views/reports_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const ReportsView(),
      ),

      // GoRoute(
      //   path: '/homeView',
      //   builder: (context, state) => const HomeView(),
      // ),

      // GoRoute(
      //   path: '/bookDetails',
      //   builder: (context, state) => BlocProvider(
      //     create: (context) => RelatedBooksCubit(
      //       getIt.get<HomeRepoImpl>(),
      //     ),
      //     child:  BookDetailsView(bookModel: state.extra as BookModel),
      //   ),
      // ),

      // GoRoute(
      //   path: '/searchView',
      //   builder: (context, state) => const SearchView(),
      // ),
    ],
  );
}
