import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:lucide_icons/lucide_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 18, horizontal: 12),
        child: Column(
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        LucideIcons.user2,
                        size: 32,
                      ),
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Доброе утро, user',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 3),
                    Row(
                      children: [
                        Icon(
                          LucideIcons.coins,
                          size: 18,
                        ),
                        SizedBox(width: 8),
                        Text(
                          '125 hms',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 24),
            Stack(
              children: [
                Container(
                  decoration:const BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.all(Radius.circular(8))
                  ),
                  child: const Row(
                    children: [
                      SizedBox(width: 20),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(100, 46, 204, 113),
                        radius: 44,
                        child: Icon(
                          LucideIcons.star,
                          size: 26,
                          color: Color.fromARGB(100, 236, 240, 241),
                        ),
                      ),
                      SizedBox(width: 24),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Активность', style: TextStyle(fontSize: 20)),
                          Text('25/50 (ккал)',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.green)),
                          Text('Нажмите, чтобы добавить',
                              style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ],
                  ),
                ),
                const Align(
                    alignment: Alignment.topRight,
                    child: Icon(LucideIcons.arrowUpRight)),
              ],
            ),
            const SizedBox(height: 12),
            const Stack(
              children: [
                Row(
                  children: [
                    SizedBox(width: 20),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(100, 231, 76, 60),
                      radius: 44,
                      child: Icon(
                        LucideIcons.star,
                        size: 26,
                        color: Color.fromARGB(100, 231, 76, 60),
                      ),
                    ),
                    SizedBox(width: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Калории', style: TextStyle(fontSize: 20)),
                        Text('25/50 (ккал)',
                            style:
                                TextStyle(fontSize: 14, color: Colors.green)),
                        Text('Обед в 13:00', style: TextStyle(fontSize: 14)),
                      ],
                    ),
                  ],
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: Icon(LucideIcons.arrowUpRight)),
              ],
            ),
            const SizedBox(height: 12),
            const Stack(
              children: [
                Row(
                  children: [
                    SizedBox(width: 20),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(100, 52, 152, 219),
                      radius: 44,
                      child: Icon(
                        LucideIcons.star,
                        size: 26,
                        color: Color.fromARGB(100, 52, 152, 219),
                      ),
                    ),
                    SizedBox(width: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Вода', style: TextStyle(fontSize: 20)),
                        Text('25/50 (мл)',
                            style:
                                TextStyle(fontSize: 14, color: Colors.green)),
                        Text('Нажмите, чтобы добавить',
                            style: TextStyle(fontSize: 14)),
                      ],
                    ),
                  ],
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: Icon(LucideIcons.arrowUpRight)),
              ],
            ),
            const SizedBox(height: 12),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(LucideIcons.alertCircle, size: 42),
                    Text('Мой вес')
                  ],
                ),
                Column(
                  children: [
                    Icon(LucideIcons.alignVerticalDistributeEnd, size: 42),
                    Text('Моя еда')
                  ],
                ),
                Column(
                  children: [
                    Icon(LucideIcons.axe, size: 42),
                    Text('Статистика')
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
