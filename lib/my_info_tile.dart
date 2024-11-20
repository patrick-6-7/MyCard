import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InfoTile extends StatelessWidget {
  final String info;
  final Icon icon;
  final String display;


  const InfoTile({
    super.key,
    required this.display,
    required this.info,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.transparent,
      elevation: 18.0,
      shadowColor: Colors.black,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.symmetric(horizontal: 14),
        height: 60,
        decoration: BoxDecoration(
          
          color:const Color.fromARGB(255, 255, 255, 255),
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          border: Border.all(
            color: Colors.teal.shade900, // Darker color
            width: 1, 
          ),// Border width
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          children: [
            Row(
              children: [
                icon,
                const SizedBox(
                  width: 20,
                ),
                Text(
                  info,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal.shade500, 
                    fontSize: 16
                  ),
                ),
              ],
            ),
            
            IconButton(
              icon: Icon(Icons.copy, color: Colors.teal.shade500),
              onPressed: () {
                Clipboard.setData(ClipboardData(text: display));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Copied to clipboard')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}