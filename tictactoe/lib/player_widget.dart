import 'package:flutter/material.dart';

class PlayerWidget extends StatelessWidget {
  const PlayerWidget({
    super.key,
    required this.currentPlayer,
    required this.playerName,
    required this.playerSign,
  });

  final String currentPlayer;
  final String playerName;
  final String playerSign;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color:
              currentPlayer == playerSign ? Colors.amber : Colors.transparent,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 3,
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(
              Icons.person,
              color: Colors.white,
              size: 55,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              playerName,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              playerSign,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
