import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Sem Material 3',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: size.width * 0.36,
              height: size.height * 0.06,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  backgroundColor: Colors.red,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {
                  debugPrint('evento onPressed');
                },
                child: const Text(
                  'Tap Me',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              'Usando Material 3\n(Habilitar o useMaterial3 = true no main.dart)',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(size.width * 0.36, size.height * 0.06),
                backgroundColor: Colors.red,
                elevation: 4,
              ),
              onPressed: () {},
              child: const Text(
                'Tap Me',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
