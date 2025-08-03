import 'package:flutter/material.dart';

void main() {
  runApp(const ResumeApp());
}

class ResumeApp extends StatelessWidget {
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume',
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Resume'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // รูปตนเอง
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/image.png'), // ใส่รูปใน assets
            ),
            const SizedBox(height: 16),

            // ชื่อนามสกุล
            const Text(
              'ชัญญานุช น้อยหมอ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            // ภูมิลำเนา
            const Row(
              children: [
                Icon(Icons.home),
                SizedBox(width: 8),
                Text('ภูมิลำเนา: จังหวัดพิษณุโลก'),
              ],
            ),

            const SizedBox(height: 16),

            // งานอดิเรก
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.star),
                SizedBox(width: 8),
                Expanded(
                  child: Text('งานอดิเรก: เล่นเกม, อ่านหนังสือ, ดูหนัง'),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // ประวัติการศึกษา
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'ประวัติการศึกษา',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 12),

            // ประถม
            const ListTile(
              leading: Icon(Icons.school),
              title: Text('ประถมศึกษา'),
              subtitle: Text('ชื่อสถานศึกษา: โรงเรียนอนุบาลโรจนวิทย์\nปีที่จบ: 2560'),
            ),

            // มัธยมต้น
            const ListTile(
              leading: Icon(Icons.school),
              title: Text('มัธยมศึกษาตอนต้น'),
              subtitle: Text('ชื่อสถานศึกษา: โรงเรียนเฉลิมขวัญสตรี\nปีที่จบ: 2563'),
            ),

            // มัธยมปลาย
            const ListTile(
              leading: Icon(Icons.school),
              title: Text('มัธยมศึกษาตอนปลาย'),
              subtitle: Text('ชื่อสถานศึกษา: โรงเรียนเฉลิมขวัญสตรี\nปีที่จบ: 2566'),
            ),
          ],
        ),
      ),
    );
  }
}

