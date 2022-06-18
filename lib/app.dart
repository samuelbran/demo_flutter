import 'package:demo_flutter/constants.dart';
import 'package:flutter/material.dart';

import 'widgets/balance.dart';
import 'widgets/demo_actions.dart';
import 'widgets/title_action.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const CircleAvatar(
              backgroundColor: Color(0xFFb4e3dc),
            ),
            const SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, Samuel',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    'Welcome Back!',
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          color: onPrimaryColor,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
            color: onPrimaryColor,
          ),
          const SizedBox(
            width: defaultPadding,
          ),
        ],
      ),
      body: ListView(
        children: [
          const Balance(),
          const DemoActions(),
          TitleAction(
            title: 'Recent Contact',
            action: () {},
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Row(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Color(0xFFb4e3dc),
                      ),
                      SizedBox(width: defaultPadding - 10),
                      CircleAvatar(
                        backgroundColor: Color(0xFFf8c0b5),
                      ),
                      SizedBox(width: defaultPadding - 10),
                      CircleAvatar(
                        backgroundColor: Color(0xFFf3da94),
                      ),
                      SizedBox(width: defaultPadding - 10),
                      CircleAvatar(
                        backgroundColor: Color(0xFFf8c0b5),
                      ),
                    ],
                  ),
                ),
                ClipOval(
                  child: Material(
                    child: Ink(
                      width: defaultPadding * 2,
                      height: defaultPadding * 2,
                      color: const Color(0xFFfcf6e3),
                      child: InkWell(
                        onTap: () {},
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.deepPurple,
                            size: 21,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          TitleAction(
            title: 'Transactions',
            action: () {},
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: SizedBox(
              height: 500,
              child: Column(
                children: [
                  ListTile(
                    onTap: () {},
                    leading: SizedBox(
                      width: 40,
                      height: 40,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFf5f7fb),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: const Center(
                          child: Icon(Icons.movie_outlined),
                        ),
                      ),
                    ),
                    title: Text(
                      'NetFlix',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    subtitle: Text(
                      'Today, 12:42 am',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.grey),
                    ),
                    trailing: Text(
                      '-\$563',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.pink),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: SizedBox(
                      width: 40,
                      height: 40,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFf5f7fb),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: const Center(
                          child: Icon(Icons.movie_outlined),
                        ),
                      ),
                    ),
                    title: Text(
                      'PayPal',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    subtitle: Text(
                      '07 may, 12:42 am',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.grey),
                    ),
                    trailing: Text(
                      '-\$69.00',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.pink),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
