import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tweet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Twitter",
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Twitter(),
    );
  }
}

class Twitter extends StatefulWidget {
  const Twitter({super.key});

  @override
  State<Twitter> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  var tweetList = [];
  var range = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  var count = 0;
  var tweetList_pr = [
    Tweet(
      state: true,
      time: "16s",
      name: '@Tao',
      avatar_url:
          'https://media.discordapp.net/attachments/1044942221729873922/1046685540055011479/126900502_2849542321947327_5687169920286489228_n.jpg?width=570&height=570',
      postText:
          ' สวัสดีครับ นาย ปรัชญ์ศร พงษ์ทิพย์พิทักษ์ 1620900041 คณะวิศวะกรรมศาสตร์ ชั้นปี 4 ',
      avatar_pro:
          'https://media.discordapp.net/attachments/1044942221729873922/1046685540055011479/126900502_2849542321947327_5687169920286489228_n.jpg?width=570&height=570',
    ),
    Tweet(
      state: false,
      time: "17s",
      name: '@Tao',
      avatar_url:
          'https://media.discordapp.net/attachments/1044942221729873922/1046685540055011479/126900502_2849542321947327_5687169920286489228_n.jpg?width=570&height=570',
      postText:
          'ผมเป็นนักศึกษาที่ชื่นชอบการทำเว็บไซต์ หรือ แอปพลิเคชั่น ชอบศึกษาหาความรู้ใหม่ๆตลอดเวลา โดยเริ่มจากโปรเจคเล็กๆ ฝึกฝนสม่ำเสมอ',
      avatar_pro:
          'https://media.discordapp.net/attachments/1044942221729873922/1046685540055011479/126900502_2849542321947327_5687169920286489228_n.jpg?width=570&height=570',
    ),
    Tweet(
      state: false,
      time: "18s",
      name: '@Tao',
      avatar_url:
          'https://media.discordapp.net/attachments/1044942221729873922/1046685540055011479/126900502_2849542321947327_5687169920286489228_n.jpg?width=570&height=570',
      postText:
          'คติประจำ : " คุณจะมีความสามารถมากขึ้นเมื่อคุณหยุดเชื่อในพรสวรรค์และเริ่มเชื่อในวินัยในตนเอง "',
      avatar_pro:
          'https://media.discordapp.net/attachments/1044942221729873922/1046685540055011479/126900502_2849542321947327_5687169920286489228_n.jpg?width=570&height=570',
    ),
    Tweet(
      state: false,
      time: "19s",
      name: '@Tao',
      avatar_url:
          'https://media.discordapp.net/attachments/1044942221729873922/1046685540055011479/126900502_2849542321947327_5687169920286489228_n.jpg?width=570&height=570',
      postText:
          'กำลังศึกษาอยู่ คณะวิศวกรรมศาสตร์ สาขา วิศวกรรมคอมพิวเตอร์และหุ่นยนต์',
      avatar_pro:
          'https://media.discordapp.net/attachments/1044942221729873922/1046685540055011479/126900502_2849542321947327_5687169920286489228_n.jpg?width=570&height=570',
    ),
    Tweet(
      state: true,
      time: "20s",
      name: '@Tao',
      avatar_url:
          'https://cdn.discordapp.com/attachments/941071519340191746/941074499598688266/DSC_0559-2.jpg',
      postText: '',
      avatar_pro:
          'https://media.discordapp.net/attachments/1044942221729873922/1046685540055011479/126900502_2849542321947327_5687169920286489228_n.jpg?width=570&height=570',
    ),
    Tweet(
      state: false,
      time: "21s",
      name: '@Tao',
      avatar_url:
          'https://media.discordapp.net/attachments/1044942221729873922/1046685540055011479/126900502_2849542321947327_5687169920286489228_n.jpg?width=570&height=570',
      postText: 'Phone number 0910135108',
      avatar_pro:
          'https://media.discordapp.net/attachments/1044942221729873922/1046685540055011479/126900502_2849542321947327_5687169920286489228_n.jpg?width=570&height=570',
    ),
    Tweet(
      state: true,
      time: "23s",
      name: '@Tao',
      avatar_url:
          'https://cdn.discordapp.com/attachments/941071519340191746/941746085486035065/1.png',
      postText: 'Gender Male',
      avatar_pro:
          'https://media.discordapp.net/attachments/1044942221729873922/1046685540055011479/126900502_2849542321947327_5687169920286489228_n.jpg?width=570&height=570',
    ),
    Tweet(
      state: false,
      time: "24s",
      name: '@Tao',
      avatar_url:
          'https://media.discordapp.net/attachments/1044942221729873922/1046685540055011479/126900502_2849542321947327_5687169920286489228_n.jpg?width=570&height=570',
      postText: 'Driving licence Car, Motorbike',
      avatar_pro:
          'https://media.discordapp.net/attachments/1044942221729873922/1046685540055011479/126900502_2849542321947327_5687169920286489228_n.jpg?width=570&height=570',
    ),
    Tweet(
      state: true,
      time: "25s",
      name: '@Tao',
      avatar_url:
          'https://cdn.discordapp.com/attachments/941071519340191746/941753329271341096/8.png',
      postText:
          'UI Games Interface & SQL Database Games ผมรับทำงานเล็กๆ ในการรับออกแบบ และ เขียน Script ให้กับเกมส์ รวมไปถึงการจัดการฐานข้อมูลของเกมส์',
      avatar_pro:
          'https://media.discordapp.net/attachments/1044942221729873922/1046685540055011479/126900502_2849542321947327_5687169920286489228_n.jpg?width=570&height=570',
    ),
    Tweet(
      state: false,
      time: "26s",
      name: '@Tao',
      avatar_url:
          'https://media.discordapp.net/attachments/1044942221729873922/1046685540055011479/126900502_2849542321947327_5687169920286489228_n.jpg?width=570&height=570',
      postText: 'Resume Website https://resume-pratsorn-8fc1f.web.app/',
      avatar_pro:
          'https://media.discordapp.net/attachments/1044942221729873922/1046685540055011479/126900502_2849542321947327_5687169920286489228_n.jpg?width=570&height=570',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          // ignore: prefer_const_constructors
          margin: const EdgeInsets.all(10.0),
          // ignore: prefer_const_constructors
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://media.discordapp.net/attachments/1044942221729873922/1046685540055011479/126900502_2849542321947327_5687169920286489228_n.jpg?width=570&height=570'),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text(
          "Home",
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildIconButton(Icons.home, Colors.blue),
            buildIconButton(Icons.search_outlined, Colors.grey),
            buildIconButton(Icons.notifications_outlined, Colors.grey),
            buildIconButton(Icons.email_outlined, Colors.grey),
          ],
        ),
      ),
      body: listofTweet(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(FontAwesomeIcons.pen),
        onPressed: () {
          setState(() {
            if (count == 9) {
              tweetList.insert(0, tweetList_pr[9]);
            } else {
              tweetList.insert(0, tweetList_pr[count]);
              count++;
            }
          });
        },
      ),
    );
  }

  Widget listofTweet() {
    return Container(
        color: Colors.white,
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return tweetList[index];
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
                  height: 10,
                ),
            itemCount: tweetList.length));
  }

  Widget buildIconButton(IconData icon, Color color) {
    return IconButton(
      icon: Icon(
        icon,
        color: color,
      ),
      onPressed: () {},
    );
  }
}
