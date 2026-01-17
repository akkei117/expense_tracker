import 'package:flutter/material.dart';

class Infotile extends StatelessWidget {
   
  const Infotile({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          border: BoxBorder.all(color: .fromRGBO(15, 15, 15, 225), width: 2),
          borderRadius: BorderRadius.circular(20),
        ),

        child: Row(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: BoxBorder.all(
                      color: .fromRGBO(15, 15, 15, 225),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  

                  child: Icon(Placeholder() as IconData?, color: .fromRGBO(15, 15, 15, 225),size: 20,),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
