import 'package:bloc_repository_project/data/postmodal.dart';
import 'package:bloc_repository_project/presentation/homescreen.dart';
import 'package:bloc_repository_project/repositories/post_repository.dart';
import 'package:flutter/material.dart';
 
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  PostRepository postRepository = PostRepository();
  List<PostModal > postModal = await postRepository.fetchpost();

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
    
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

