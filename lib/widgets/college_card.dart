import 'package:college_app/model/college_model.dart';
import 'package:flutter/material.dart';

class CollegeCard extends StatelessWidget {
  const CollegeCard({Key? key, required this.model}) : super(key: key);
  final CollegeModel model;
  @override
  Widget build(BuildContext context) {
    const double _padding = 10.0;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).cardColor),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(_padding),
          child: Stack(clipBehavior: Clip.none, children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ColoredBox(
                    color: Theme.of(context).primaryColor.withOpacity(0.1),
                    child: SizedBox(
                        height: 50,
                        width: 50,
                        child: FadeInImage(
                          image: NetworkImage(model.collegeLogo!),
                          placeholder:
                              AssetImage("assets/images/college_app.png"),
                        )),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model.collegeName!,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 15),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 12,
                            ),
                            Text(
                              model.collegeAddress!,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: new Icon(
                              Icons.phone,
                              color: Colors.purpleAccent,
                              size: 20.0,
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                backgroundColor: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: new Icon(
                              Icons.whatsapp,
                              color: Colors.greenAccent,
                              size: 20.0,
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                backgroundColor: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: new Icon(
                              Icons.video_call,
                              color: Colors.blueAccent,
                              size: 20.0,
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                backgroundColor: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: new Icon(
                              Icons.message,
                              color: Colors.orangeAccent,
                              size: 20.0,
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                backgroundColor: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
