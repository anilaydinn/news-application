import 'package:flutter/material.dart';

class CustomNewsTile extends StatefulWidget {
  const CustomNewsTile({Key? key}) : super(key: key);

  @override
  _CustomNewsTileState createState() => _CustomNewsTileState();
}

class _CustomNewsTileState extends State<CustomNewsTile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Container(
            child: Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Image(
                      fit: BoxFit.fill,
                      height: size.height * 0.3,
                      width: size.width / 1,
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://www.xtrlarge.com/wp-content/uploads/2020/08/xtrlarge-hyperion-xp-1-hidrojen-gunes-super-spor-araba-1.jpg"),
                      ),
                    )),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Yarramın başı",
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
