import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import './model/jphPostsModel.dart';

class DioExample extends StatefulWidget {
  const DioExample({super.key});

  @override
  State<DioExample> createState() => _DioExampleState();
}

class _DioExampleState extends State<DioExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dio Example'),
          centerTitle: true,
        ),
        body: FutureBuilder(
          future: readData(),
          builder: (context, AsyncSnapshot<List<JphPostsModel>> snapshot) {
            if (snapshot.hasData) {
              List<JphPostsModel> myPosts = snapshot.data!;
              return ListView.builder(
                itemCount: myPosts.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(myPosts[index].title),
                      subtitle: Text(myPosts[index].body),
                    ),
                  );
                },
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ));
  }

  Future<List<JphPostsModel>> readData() async {
    Response response;
    var dio = Dio();
    response = await dio.get('https://jsonplaceholder.typicode.com/posts');
    List<JphPostsModel> myPosts =
        (response.data as List).map((e) => JphPostsModel.fromMap(e)).toList();
    return myPosts;
  }
}
