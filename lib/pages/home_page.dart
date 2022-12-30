import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_flutter/util/headset_tile.dart';
import 'package:ui_flutter/util/head_set.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //list of headset
  final List headSet = [
    ['Apple', true,],
    ['Nike', false,],
    ['Apple', false,],
    ['Apple', false,],
    ['Apple', false,],
    ['Apple', false,],
  ];
  // user tapped on
  void headsetTypeSelected( int index) {
setState(() {
  // this for loop

  for(int i = 0; i < headSet.length; i++) {
    headSet[i][1] = false;
  }
  headSet[index][1] = true;
});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 28.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
            label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: ''
          ),
        ],
      ),
      body: Column(
        children: [
          //Find the best Headset for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text('Find the best headset for you',
            style: GoogleFonts.bebasNeue(fontSize:50,),
            ),
          ),

          //Search bar
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Find your Headsets',
                focusedBorder: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyan)
                )
              ),

            ),
          ),
const SizedBox(height: 20),
          //horizontal listview of headset types
          Container(
            height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: headSet.length,
              itemBuilder: (context, index){

            return HeadsetType(
                headsetType: headSet[index][0],
                isSelected: headSet[index][1],
                onTap:(){ headsetTypeSelected(index);
                },
            );
          })

          ),


          //horizontal listview of headset title
          Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children:  [
                  HeadsetTile(
                    headImagePath: 'images/1.jpg',
                    headName: 'headset',
                    headPrice: '70',
                  ),
                  HeadsetTile(
                    headImagePath: 'images/2.jpg',
                    headName: 'headset2',
                    headPrice: '70',
                  ),
                  HeadsetTile(
                    headImagePath: 'images/3.jpg',
                    headName: 'headset3',
                    headPrice: '70',
                  ),

                ],
              )
          ),
        ],
      ),
    );
  }
}
