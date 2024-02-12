

// abstract class AppRouter {
//   static const kHomeView = '/homeView';
//   static const kBookDetailsView = '/bookDetailsView';
//   static const kSearchView = '/searchView';

//   static final router = GoRouter(
//     routes: [
//       GoRoute(
//         path: '/',
//         builder: (context, state) => const SplashView(),
//       ),
//       GoRoute(
//         path: kSearchView,
//         builder: (context, state) => const SearchView(),
//       ),
//       GoRoute(
//         path: kHomeView,
//         builder: (context, state) => const HomeView(),
//       ),
//       GoRoute(
//         path: kBookDetailsView,
//         builder: (context, state) => BlocProvider(
//           create: (context) => SimillarBooksCubit(
//             getIt.get<HomeRepoimp>(),
//           ),
//           child: BookDetailsView(
//             bookModel: state.extra as BookItemModel,
//           ),
//         ),
//       ),
//     ],
//   );
// }
