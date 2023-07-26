import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quriverse/config/theme/app_theme.dart';
import 'package:quriverse/features/post/presentation/bloc/comments/comments_cubit.dart';
import 'package:quriverse/features/post/presentation/bloc/post/post_cubit.dart';
import 'package:quriverse/features/post/presentation/pages/post_page.dart';
import 'package:quriverse/injection_util.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PostCubit>(
          create: (context) => sl(),
        ),
        BlocProvider<CommentsCubit>(
          create: (context) => sl(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme(),
        home: PostPage(),
      ),
    );
  }
}
