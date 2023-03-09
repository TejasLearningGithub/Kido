import 'package:flutter/material.dart';
import 'package:kido_project/MyScreens/shared_pref.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  SharedPrefs myPrefs = SharedPrefs();
  var tokenPresent;
  var token;
  // String token =
  //     "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYzYjQwNzczOWQ2ZWZkNmYxOWNmMDcxNiIsIm5hbWUiOiJzeXN0ZW0gYWRtaW4iLCJlbWFpbCI6InN5c2FkbWluQHN5c3RlbS5jb20iLCJpYXQiOjE2Nzc3NDgxNjAsImV4cCI6MTY4NTUyNDE2MH0.CsyZ7tZG45tzS81weIH9tQXanhpgrhm58LRfCuRudJE";
  getUserToken() async {
    token = await myPrefs.getToken();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preferences Token Managment'),
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                print(await myPrefs.getToken());
              },
              child: Text('print token'),
            ),
            ElevatedButton(
              onPressed: () async {
                var pToken = await myPrefs.saveToken(token);
                print('token saved');
                print(pToken);
              },
              child: Text('Save Token'),
            ),
            ElevatedButton(
              onPressed: () {
                myPrefs.clearToken();
                print('Token Clear');
              },
              child: Text('Clear Token'),
            ),
            ElevatedButton(
              onPressed: () async {
                setState(() {});
                tokenPresent = await myPrefs.getToken();
                print(tokenPresent);
              },
              child: Text('Get Token'),
            ),
            Text(tokenPresent ?? ''),
            ElevatedButton(
                onPressed: () {
                  var tokenSubstring = tokenPresent.toString().substring(7);
                  print(tokenSubstring);
                },
                child: Text('Token SubString')),
          ],
        ),
      ),
    );
  }
}
