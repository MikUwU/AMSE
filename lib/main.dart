/// Flutter code sample for BottomNavigationBar

// This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
// widget. The [BottomNavigationBar] has three [BottomNavigationBarItem]
// widgets and the [currentIndex] is set to index 0. The selected item is
// amber. The `_onItemTapped` function changes the selected item's index
// and displays a corresponding message in the center of the [Scaffold].
//
// ![A scaffold with a bottom navigation bar containing three bottom navigation
// bar items. The first one is selected.](https://flutter.github.io/assets-for-api-docs/assets/material/bottom_navigation_bar.png)

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Mediathèque';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    ListView(

    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mediathèque'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_fill),
            label: 'Anime',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Manga',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pinkAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}

class MediaModel {
  String imageUrl;
  String title;
  String description;

  // Constructor
  MediaModel({this.imageUrl, this.title, this.description});
}

final animes = [
  MediaModel(
    imageUrl: 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/nx98460-WTidxsFZrHfv.jpg',
    title: 'Devilman Crybaby',
    description: "<p>New Devilman project marking Go Nagai's 50th anniversary as a creator.<br><br>The protagonist Akira Fudou learns from his best friend, Ryou Asuka, that an ancient race of demons has returned to take back the world from humans. Ryou tells Akira that the only way to defeat the demons is to incorporate their supernatural powers, and suggests that he unite with a demon himself. Akira succeeds in transforming into Devilman, who possesses both the powers of a demon and the soul of a human. The battle of Devilman and Akira Fudou begins. <br><br>(Source: Netflix)</p>",
  ),
  MediaModel(
    imageUrl: 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx9756-oqKE3E6DLtgm.jpg',
    title: 'Puella Magi Madoka Magica',
    description: "<p>One night, 14-year-old Madoka Kaname has a terrible nightmare - against the backdrop of a devastated city, she witnesses a girl fight a losing battle against a dreadful being lingering above, while a cat-like magical creature tells Madoka the only way to change such tragic outcome is for her to make a contract with him and become a magical girl. <br><br><br />\nThe next day, the teen's dream seemingly becomes reality as the girl she saw in her dream - Homura - arrives at Mitakihara Middle School as a transfer student, mysteriously warning Madoka to stay just the way she is; but when later on she and her best friend Sayaka encounter the same cat-like magical creature from her dream - who introduces himself as Kyubey - the pair discovers that magical girls are real, and what's more, they can choose to become one. All they must do is sign a contract with Kyubey and agree to take on the duty to fight abstract beings called 'witches' that spread despair to the human world, and in return, each one of them will be granted any single wish they desire. However, as Homura's omen suggests, there might be far more to becoming a magical girl than Madoka and Sayaka realize...<br />\n<br><br><br />\n(Source: IMDb)</p>",
  ),
  MediaModel(
    imageUrl: 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/nx102883-CZEVeUWllM26.png',
    title: "JoJo's Bizarre Adventure: Golden Wind",
    description: "<p>The fifth story arc of the long-running <i>JoJo's Bizarre Adventure</i> series.<br><br><br />\nGiorno Giovanna, a young man living in Naples, has the blood of DIO -- the eternal enemy of the Joestar clan -- running in his veins. Giorno becomes a delinquent due to being persecuted since childhood. However, he's led back onto the right path thanks to a gangster who saved him and taught him to believe in others. Bizarrely enough, this gang of people who didn't forget honor, gratitude, and respect made him reform. This is how Giorno came to admire gangsters. In the backstreets of Italy, Giorno causes trouble alongside his gang &quot;Passione,&quot; and ends up being targeted...<br><br><br />\n(Source: Anime News Network)</p>",
  ),
  MediaModel(
    imageUrl: 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx98444-zzhSw9o3LJSy.jpg',
    title: "Laid-Back Camp",
    description: "<p>Rin likes to go camping by herself along the lakes that provide a scenic view of Mt. Fuji. Nadeshiko loves to take cycling trips by herself to places where she can see Mt. Fuji. After they meet, Rin and Nadeshiko take camping trips, eat cup ramen together, and enjoy the scenery. <br><br>(Source: Anime News Network)</p>",
  ),
  MediaModel(
    imageUrl: 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx12189-lMhv0yetGUc5.jpg',
    title: "Hyouka",
    description: "<p>Oreki Houtarou is a minimalistic high school boy. One day, he joins the Classic Literature Club at his elder sister's request. <br><br><br />\nThere he meets Chitanda Eru, Fukube Satoshi, and Ibara Mayaka. Chitanda is a calm beautiful girl but she turns into an embodiment of curiosity once she says, &quot;I'm interested in it (Watashi, Kininarimasu)&quot;. Fukube is a smiling boy with a fantastic memory who calls himself a database. Ibara is a short girl and is strict with others and herself. She loves Fukube, but he always dodges her approaches. <br><br><br />\nThey begin to investigate a case that occurred 45 years ago. Hints of the mystery are buried in an old collection of works of the former members of Classics Club. The collection is titled &quot;Hyouka.&quot; </p>",
  ),
];

final mangas = [
  MediaModel(
    imageUrl: 'https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/bx30002-YAXIKTOcUjHy.jpg',
    title: 'Berserk',
    description: "<p>His name is Guts, the Black Swordsman, a feared warrior spoken of only in whispers. Bearer of a gigantic sword, an iron hand, and the scars of countless battles and tortures, his flesh is also indelibly marked with The Brand, an unholy symbol that draws the forces of darkness to him and dooms him as their sacrifice. But Guts won't take his fate lying down; he'll cut a crimson swath of carnage through the ranks of the damned -- and anyone else foolish enough to oppose him! Accompanied by Puck the Elf, more an annoyance than a companion, Guts relentlessly follows a dark, bloodstained path that leads only to death...or vengeance.<br />\n<br><br>(Source: Dark Horse)<br><br><br />\n<b>Chapter Notes:</b><br><br />\n<i>- Volumes 1-5 contain the 16 prequel chapters 0A through 0P before the chapter count properly begins with “Chapter 1: Sword Wind” in Volume 5.<br></p>\n<ul>\n<li>Chapter 83 was omitted from Volume 13 and was never released in volume format due to the author’s request.<br></li>\n<li>Volume 14 includes “Berserk: The Protoytype”, the original one-shot that the manga was based on.</i></li>\n</ul>",
  ),
  MediaModel(
    imageUrl: 'https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/bx105778-bfHxnFRTTDU7.jpg',
    title: 'Chainsaw Man',
    description: "<p>The name says it all! Denji's life of poverty is changed forever when he merges with his pet chainsaw dog, Pochita! Now he's living in the big city and an official Devil Hunter. But he's got a lot to learn about his new job and chainsaw powers!<br />\n<br><br><br />\n(Source: MANGA Plus)<br><br><br />\n<i>Notes:<br><br />\nNominated for the 2020 Manga Taisho Award.</i><br><br />\n<i>Winner of the 2021 Kono Manga ga Sugoi Award.</i></p>",
  ),
    MediaModel(
    imageUrl: 'https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/bx105398-ul12NOTmWIeH.jpg',
    title: 'Solo Leveling',
    description: "<p>In a world where awakened beings called “Hunters” must battle deadly monsters to protect humanity, Sung Jinwoo, nicknamed “the weakest hunter of all mankind,” finds himself in a constant struggle for survival. One day, after a brutal encounter in an overpowered dungeon wipes out his party and threatens to end his life, a mysterious System chooses him as its sole player: Jinwoo has been granted the rare opportunity to level up his abilities, possibly beyond any known limits. Follow Jinwoo’s journey as he takes on ever-stronger enemies, both human and monster, to discover the secrets deep within the dungeons and the ultimate extent of his powers.<br />\n<br><br><br />\n(Source: Tappytoon)<br />\n<br><br><br />\n<b>Season 1:</b> 110 Chapters + Prologue</p>",
  ),
  MediaModel(
    imageUrl: 'https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/bx87423-gPNtu8QbGped.jpg',
    title: 'The Promised Neverland',
    description: "<p>Emma, Norman and Ray are the brightest kids at the Grace Field House orphanage. And under the care of the woman they refer to as “Mom,” all the kids have enjoyed a comfortable life. Good food, clean clothes and the perfect environment to learn—what more could an orphan ask for? One day, though, Emma and Norman uncover the dark truth of the outside world they are forbidden from seeing.<br />\n<br><br><br />\n(Source: Viz Media)</p>",
  ),
  MediaModel(
    imageUrl: 'https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/nx34632-14deknANZitb.png',
    title: 'Goodnight Punpun',
    description: "<p>Meet Punpun Punyama. He’s an average kid in an average town.<br><br />\nHe wants to win a Nobel Prize and save the world.<br><br />\nHe wants the girl he has a crush on to like him back.<br><br />\nHe wants to find some porn.<br><br />\nThat’s what he wants, but what does he get…?<br />\n<br><br><br />\n(Source: Viz Media)</p>",
  ),
];