import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget  {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Layout & Widgets',
      home: const HomePage(),
    );
  }
}

// ============================================================
// HOME PAGE
// ============================================================

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Layout & Widgets',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),

      // ListView allows us to scroll through all examples.
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          // ==================================================
          // INTRODUCTION
          // ==================================================

          const Text(
            'Flutter Widgets & Layout Examples',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            'This application demonstrates common Flutter '
            'widgets and layout techniques.',
            style: TextStyle(
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 30),

          // ==================================================
          // 1. TEXT
          // ==================================================

          sectionTitle('1. Text Widget'),

          const Text(
            'Hello Flutter!',
            style: TextStyle(
              fontSize: 100,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 5),

          const Text(
            'This is another Text widget.',
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 143, 14, 14),
            ),
          ),

          const Divider(height: 40),

          // ==================================================
          // 2. CONTAINER
          // ==================================================

          sectionTitle('2. Container'),

          Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 33, 243, 212),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: Text(
                'I am a Container',
                style: TextStyle(
                  color: Color.fromARGB(255, 230, 13, 13),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),

          const Divider(height: 40),

          // ==================================================
          // 3. PADDING
          // ==================================================

          sectionTitle('3. Padding'),

          Container(
            
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.all(25),
              child: Text(
                'This text has 25 pixels of padding.',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),

          const SizedBox(height: 15),

          Container(
            color: Colors.green,
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 50,
              ),
              child: Text(
                'Horizontal = 30, Vertical = 10',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),

          const Divider(height: 40),

          // ==================================================
          // 4. SIZEDBOX
          // ==================================================

          sectionTitle('4. SizedBox'),

          Container(
            width: double.infinity,
            height: 100,
            color: Colors.red,
            child: const Center(
              child: Text(
                'First Box',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),

          const SizedBox(height: 30),

          Container(
            width: double.infinity,
            height: 70,
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Second Box',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),

          const Divider(height: 40),

          // ==================================================
          // 5. CENTER
          // ==================================================

          sectionTitle('5. Center'),

          Container(
            width: double.infinity,
            height: 150,
            color: Colors.grey.shade300,
            child: const Center(
              child: Text(
                'Centered Text',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          const Divider(height: 40),

          // ==================================================
          // 6. ALIGN
          // ==================================================

          sectionTitle('6. Align'),

          Container(
            width: double.infinity,
            height: 150,
            color: Colors.grey.shade300,
            child: const Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Bottom Right',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          const Divider(height: 40),

          // ==================================================
          // 7. ROW
          // ==================================================

          sectionTitle('7. Row'),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 70,
                height: 70,
                color: Colors.red,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.green,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.blue,
              ),
            ],
          ),

          const SizedBox(height: 10),

          const Center(
            child: Text(
              'Row arranges widgets horizontally.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),

          const Divider(height: 40),

          // ==================================================
          // 8. COLUMN
          // ==================================================

          sectionTitle('8. Column'),

          Column(
            children: [
              Container(
                width: 200,
                height: 60,
                color: Colors.red,
              ),

              const SizedBox(height: 10),

              Container(
                width: 200,
                height: 60,
                color: Colors.green,
              ),

              const SizedBox(height: 10),

              Container(
                width: 200,
                height: 60,
                color: Colors.blue,
              ),
            ],
          ),

          const SizedBox(height: 10),

          const Center(
            child: Text(
              'Column arranges widgets vertically.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),

          const Divider(height: 40),

          // ==================================================
          // 9. MAIN AXIS ALIGNMENT
          // ==================================================

          sectionTitle('9. MainAxisAlignment'),

          const Text(
            'spaceEvenly',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Container(
            width: double.infinity,
            height: 100,
            color: Colors.grey.shade200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            'Try changing spaceEvenly to:',
            style: TextStyle(
              fontSize: 16,
            ),
          ),

          const Text('MainAxisAlignment.start'),
          const Text('MainAxisAlignment.center'),
          const Text('MainAxisAlignment.end'),
          const Text('MainAxisAlignment.spaceBetween'),
          const Text('MainAxisAlignment.spaceAround'),
          const Text('MainAxisAlignment.spaceEvenly'),

          const Divider(height: 40),

          // ==================================================
          // 10. CROSS AXIS ALIGNMENT
          // ==================================================

          sectionTitle('10. CrossAxisAlignment'),

          Container(
            width: double.infinity,
            height: 180,
            color: Colors.grey.shade200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Name: Juan Dela Cruz',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  'Course: Information Technology',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  'Year: 2nd Year',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),

          const Divider(height: 40),

          // ==================================================
          // 11. EXPANDED
          // ==================================================

          sectionTitle('11. Expanded'),

          SizedBox(
            height: 120,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        'RED',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        'BLUE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const Divider(height: 40),

          // ==================================================
          // 12. EXPANDED WITH FLEX
          // ==================================================

          sectionTitle('12. Expanded with Flex'),

          SizedBox(
            height: 120,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),

                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.green,
                    child: const Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            'Flex ratio: 1 : 2 : 3',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const Divider(height: 40),

          // ==================================================
          // 13. FLEXIBLE
          // ==================================================

          sectionTitle('13. Flexible'),

          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),

              Flexible(
                child: Container(
                  height: 100,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      'Flexible Widget',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          const Divider(height: 40),

          // ==================================================
          // 14. STACK
          // ==================================================

          sectionTitle('14. Stack'),

          SizedBox(
            width: double.infinity,
            height: 250,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  color: Colors.blue,
                ),

                Container(
                  width: 180,
                  height: 180,
                  color: Colors.orange,
                ),

                const Center(
                  child: Text(
                    'Stack',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const Divider(height: 40),

          // ==================================================
          // 15. POSITIONED
          // ==================================================

          sectionTitle('15. Positioned'),

          SizedBox(
            width: double.infinity,
            height: 250,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  color: Colors.grey.shade300,
                ),

                Positioned(
                  top: 20,
                  left: 20,
                  child: Container(
                    width: 70,
                    height: 70,
                    color: Colors.red,
                  ),
                ),

                Positioned(
                  top: 20,
                  right: 20,
                  child: Container(
                    width: 70,
                    height: 70,
                    color: Colors.blue,
                  ),
                ),

                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Container(
                    width: 70,
                    height: 70,
                    color: Colors.green,
                  ),
                ),

                Positioned(
                  bottom: 20,
                  right: 20,
                  child: Container(
                    width: 70,
                    height: 70,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),

          const Divider(height: 40),

          // ==================================================
          // 16. CARD
          // ==================================================

          sectionTitle('16. Card'),

          Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  const Icon(
                    Icons.computer,
                    size: 50,
                  ),

                  const SizedBox(width: 20),

                  Expanded(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Information Technology',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 5),

                        Text(
                          'Flutter Development',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const Divider(height: 40),

          // ==================================================
          // 17. ICONS
          // ==================================================

          sectionTitle('17. Icons'),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(
                Icons.home,
                size: 50,
              ),

              Icon(
                Icons.favorite,
                size: 50,
              ),

              Icon(
                Icons.settings,
                size: 50,
              ),

              Icon(
                Icons.person,
                size: 50,
              ),
            ],
          ),

          const Divider(height: 40),

          // ==================================================
          // 18. ELEVATED BUTTON
          // ==================================================

          sectionTitle('18. ElevatedButton'),

          ElevatedButton(
            onPressed: () {
              debugPrint('Button clicked!');
            },
            child: const Text(
              'Click Me',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),

          const Divider(height: 40),

          // ==================================================
          // 19. ICON BUTTON
          // ==================================================

          sectionTitle('19. IconButton'),

          Center(
            child: IconButton(
              iconSize: 60,
              onPressed: () {
                debugPrint('Favorite button clicked!');
              },
              icon: const Icon(
                Icons.favorite,
              ),
            ),
          ),

          const Divider(height: 40),

          // ==================================================
          // 20. LISTVIEW
          // ==================================================

          sectionTitle('20. ListView'),

          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('Home'),
                  subtitle: const Text(
                    'Go to the home page',
                  ),
                  onTap: () {},
                ),

                const Divider(height: 1),

                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Profile'),
                  subtitle: const Text(
                    'View your profile',
                  ),
                  onTap: () {},
                ),

                const Divider(height: 1),

                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Settings'),
                  subtitle: const Text(
                    'Change application settings',
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),

          const Divider(height: 40),

          // ==================================================
          // 21. LISTVIEW.BUILDER
          // ==================================================

          sectionTitle('21. ListView.builder'),

          Container(
            height: 400,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(
                      '${index + 1}',
                    ),
                  ),
                  title: Text(
                    'Student ${index + 1}',
                  ),
                  subtitle: const Text(
                    'Information Technology',
                  ),
                );
              },
            ),
          ),

          const Divider(height: 40),

          // ==================================================
          // 22. GRIDVIEW
          // ==================================================

          sectionTitle('22. GridView'),

          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics:
                const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              Container(
                color: Colors.red,
                child: const Center(
                  child: Text(
                    '1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),

              Container(
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),

              Container(
                color: Colors.green,
                child: const Center(
                  child: Text(
                    '3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),

              Container(
                color: Colors.orange,
                child: const Center(
                  child: Text(
                    '4',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const Divider(height: 40),

          // ==================================================
          // 23. STATEFUL WIDGET
          // ==================================================

          sectionTitle('23. StatefulWidget'),

          const CounterExample(),

          const Divider(height: 40),

          // ==================================================
          // FINAL
          // ==================================================

          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Column(
              children: [
                Icon(
                  Icons.flutter_dash,
                  size: 60,
                ),

                SizedBox(height: 10),

                Text(
                  'End of Examples',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  'Try modifying the widgets and their '
                  'properties to see how Flutter layouts work.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }

  // ==========================================================
  // SECTION TITLE FUNCTION
  // ==========================================================

  static Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 12,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

// ============================================================
// STATEFUL WIDGET EXAMPLE
// ============================================================

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() =>
      _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  int counter = 0;

  void increaseCounter() {
    setState(() {
      counter++;
    });
  }

  void decreaseCounter() {
    setState(() {
      counter--;
    });
  }

  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Counter: $counter',
          style: const TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 20),

        Row(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: decreaseCounter,
              icon: const Icon(
                Icons.remove,
              ),
              iconSize: 40,
            ),

            const SizedBox(width: 20),

            ElevatedButton(
              onPressed: increaseCounter,
              child: const Text(
                'Increase',
              ),
            ),

            const SizedBox(width: 20),

            IconButton(
              onPressed: resetCounter,
              icon: const Icon(
                Icons.refresh,
              ),
              iconSize: 40,
            ),
          ],
        ),
      ],
    );
  }
}