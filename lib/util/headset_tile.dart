import 'package:flutter/material.dart';

class HeadsetTile extends StatelessWidget {
 final String headImagePath;
 final String headName;
 final String headPrice;

 const HeadsetTile({
   required this.headImagePath, required this.headName,
   required this.headPrice,
});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left :25.0, bottom: 25),

      child: Container(
        padding: const EdgeInsets.all(20),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.black,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // headset name
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
                child: Image.asset(headImagePath),
            ),

            //Headset Name
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                      headName,
                  style: const TextStyle(fontSize: 20),
                  ),

                  const SizedBox(height: 4),
                  const Text(
                    'Learn More',
                    style: TextStyle(
                        color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            // price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('\£' + headPrice),
                Container(
                  padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                      borderRadius: BorderRadius.circular(6),
                    ),

                    child: const Icon(Icons.add)),
              ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
