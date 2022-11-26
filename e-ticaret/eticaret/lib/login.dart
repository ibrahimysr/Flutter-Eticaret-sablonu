import 'package:eticaret/Anaekran.dart';

import 'package:flutter/material.dart';

class LoginEkrani extends StatefulWidget {
  const LoginEkrani({Key? key}) : super(key: key);

  @override
  State<LoginEkrani> createState() => _LoginEkraniState();
}

class _LoginEkraniState extends State<LoginEkrani> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                //Image.asset('assets/'),
                const SizedBox(height: 16.0),
                Text(
                  'SHRINE',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
            const SizedBox(height: 120.0),

            //name
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                // Removed filled: true
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                // Removed filled: true
                labelText: 'Password',
              ),
              obscureText: true,
            ),

            ElevatedButton(
              child: const Text('NEXT'),
              style: ElevatedButton.styleFrom(
                elevation: 8.0,
                shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7.0)),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AnaEkran()));
              },
            ),
            TextButton(
              child: const Text('CANCEL'),
              onPressed: () {
                _usernameController.clear();
                _passwordController.clear();
              },
              style: TextButton.styleFrom(
                primary: Theme.of(context).colorScheme.secondary,
                shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
