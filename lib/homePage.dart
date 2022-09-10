
import 'package:campyellow_assign/components/achivementsBullets.dart';
import 'package:campyellow_assign/components/featuredPerformance.dart';
import 'package:campyellow_assign/components/clanActivities.dart';
import 'package:campyellow_assign/components/widget4.dart';
import 'package:campyellow_assign/components/memberCard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

int selected=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Assignment")),
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          onTap: (index)=>setState(()=>selected=index),
          fixedColor: Colors.blue,
          currentIndex: selected,
          items:  const [
            BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black,),
            label: 'Home',
          ),
            BottomNavigationBarItem(
              icon: Image(image: AssetImage("assets/trophy.png"),width: 24,height: 24,),
              label: 'Achievements',
            ),
            BottomNavigationBarItem(
              icon: Image(image: AssetImage("assets/pd.png"),width: 24,height: 24,),
              label: 'Performance',
            ),
            BottomNavigationBarItem(
              icon: Image(image: AssetImage("assets/icons8-people-30.png"),width: 24,height: 24,),
              label: 'Discussion',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle,color: Colors.black,),
              label: 'Profile',
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                      image:
                         const DecorationImage(
                             image: NetworkImage(
                             'https://cdn.pixabay.com/photo/2018/03/26/14/07/space-3262811__340.jpg',

                         )

                         ),
                      border: Border.all(color: Colors.yellow)),
                  width: 200,
                  height: 260,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: const [
                            Text(
                              "Clan Name: Loren Ipsum",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text("28 members, 8 online",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16)),
                            SizedBox(
                              height: 8,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 3,
                  color: Colors.white,
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Achievements',
                    style: TextStyle(color: Colors.yellow, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                        const Text(
                          "Current League",
                          style: TextStyle(
                              color: Colors.pinkAccent, fontSize: 20),
                        ),
                          const SizedBox(width: 100,),
                          Image.asset('assets/shield.png', width: 80,)
                        ],
                      ),
                      const AchievementsBullets(text1: "League Ranking",text2: "11th"),
                      const SizedBox(height: 10,),
                      const AchievementsBullets(text1: "Experience",text2: "2000 xp",),
                      const SizedBox(height: 10,),
                      const AchievementsBullets(text1: "# of wins",text2: "3",),

                    ],
                  ),
                ),
                const Divider(
                  thickness: 3,
                  color: Colors.white,
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Past featured performances',
                    style: TextStyle(color: Colors.yellow, fontSize: 20),
                  ),
                ),
                const SizedBox(width: 50,),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: FeaturedPerformances(text: "Priya in international debating league",),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: FeaturedPerformances(text: "Akshay in global quizz finals",),
                ),
                const SizedBox(height: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Center(child: Text(
                      "see more",style: TextStyle(color: Colors.yellowAccent),
                    ),)
                  ],
                ),
                const Divider(
                  thickness: 3,
                  color: Colors.white,
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Live clan activities on platform',
                    style: TextStyle(color: Colors.yellow, fontSize: 20),
                  ),
                ),
                const ClanActivities(text: "Live Trading Championship"),
                const SizedBox(
                  height: 5,
                ),
                const ClanActivities(text: "Treasure Hunt"),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Center(child: InkWell(
                      onTap: ()=>{},
                      child: const Text(
                        "see more",style: TextStyle(color: Colors.yellowAccent),
                      ),
                    ),)
                  ],
                ),
                const Divider(
                  thickness: 3,
                  color: Colors.white,
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Clan Discussions',
                    style: TextStyle(color: Colors.yellow, fontSize: 20),
                  ),
                ),

                const DiscussThread(text1: "General Thread :", text2: "15 unread messages"),
                const DiscussThread(text1: "(live) anyone enthu for trading league.. ", text2: "10 unread messages"),
                const DiscussThread(text1: "(live) anyone enthu for trading league.. ", text2: "10 unread messages"),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Center(child: Text(
                      "see more",style: TextStyle(color: Colors.yellowAccent),
                    ),)
                  ],
                ),
                const Divider(
                  thickness: 3,
                  color: Colors.white,
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Clan Members',
                    style: TextStyle(color: Colors.yellow, fontSize: 20),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: MemberCard(text: "Loren Epsum-Clan Head"),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: MemberCard(text: "Loren Epsum-Debating sensei"),
                ),

              ]),
        )
        )
    );
  }
}
