import 'package:college_app/model/college_model.dart';
import 'package:college_app/screens/main_drawer_screen.dart';
import 'package:college_app/widgets/college_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static List<CollegeModel> college_list = [
    CollegeModel(
        "Adamjee Cantonment College",
        "Shaheed Sharani Dhaka 1206",
        0123456789,
        "https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-PNG-Photos.png"),
    CollegeModel(
        "Viqarunnisa Noon College",
        "1/A, New Bailey Road, Dhaka - 1000",
        0123456789,
        "https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-PNG-Photos.png"),
    CollegeModel("Dhaka City College", "Road No. 2, Dhaka 1205", 0123456789,
        "https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-PNG-Photos.png"),
    CollegeModel("Rajuk Uttara Model College", "Uttara,Dhaka 1230", 0123456789,
        "https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-PNG-Photos.png"),
    CollegeModel("Holy Cross College", "Tejgaon, Dhaka", 0123456789,
        "https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-PNG-Photos.png"),
    CollegeModel(
        "Ideal School and College",
        "Motijheele,Dhaka 1000",
        0123456789,
        "https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-PNG-Photos.png"),
    CollegeModel("Dhaka College", "New Market, Dhaka 1205", 0123456789,
        "https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-PNG-Photos.png"),
    CollegeModel(
        "Birshreshtha Noor Mohammad Public College",
        "Lalbagh PS,Dhaka 1205",
        0123456789,
        "https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-PNG-Photos.png"),
    CollegeModel(
        "BAF Shaheen College Dhaka",
        "Shaheed Jahangir Gate,Dhaka 1206",
        0123456789,
        "https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-PNG-Photos.png"),
    CollegeModel(
        "Comilla Victoria College",
        "Victoria College Rd, Cumilla 3500",
        0123456789,
        "https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-PNG-Photos.png"),
    CollegeModel(
        "Rangpur Cantonment Public College",
        "5400 Rangpur,",
        0123456789,
        "https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-PNG-Photos.png"),
    CollegeModel(
        "Notre Dame College",
        "Toyenbee Circular Road, Dhaka 1000",
        0123456789,
        "https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-PNG-Photos.png"),
  ];

  List<CollegeModel> display_list = List.from(college_list);
  void updateList(String value) {
    setState(() {
      display_list = college_list
          .where((element) =>
              element.collegeName!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          "assets/images/college_app_1.png",
          fit: BoxFit.contain,
          height: 40,
        ),
        toolbarHeight: 60,
      ),
      drawer: const MainDrawerScreen(),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Search",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (value) => updateList(value),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none),
                  hintText: "Search By Institute Name"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "College List",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: display_list.length,
                itemBuilder: (context, index) =>
                    CollegeCard(model: display_list[index]),
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
