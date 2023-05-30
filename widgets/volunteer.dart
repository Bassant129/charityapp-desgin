import 'package:charityorganization_app/colors.dart';
import 'package:flutter/material.dart';

class Volunteer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> name = [
      "Ahmed ibrahim",
      'Nada ahmed',
      "Mohamed salah",
      "Goudy Ail",
      "Anas yasser",
      "Amar ahmed",
      "Lamar hany",
      "Basem khaled"
    ];
    List<String> home = [
      "Cairo",
      'Menof',
      "Sadat",
      "Mansora",
      "Alexandria",
      "Shebin",
      "Matruh",
      "Meeena"
    ];
    return Container(
      height: 500,
      width: 500,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 300,
                width: 200,
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                    color: Color(0xfff2f8ff),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: sdColor,
                        blurRadius: 4,
                        spreadRadius: 2,
                      )
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => admin1()));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        child: Image.asset(
                          "images/vol${index + 1}.jpg",
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${name[index]}",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: pColor,
                            ),
                          ),
                          Text(
                            "${home[index]}",
                            style: TextStyle(
                              fontSize: 20,
                              color: bColor.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
