import 'package:flutter/material.dart';
import 'package:flutter_application_1/feacture/screens/welcomescreen/bottomnav.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Text('homepage'),
        bottomNavigationBar: BottomNav(),

    );
  }
}


/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/text_string/text_strings.dart';
import 'package:flutter_application_1/feacture/screens/welcomescreen/bottomnav.dart';

import '../../../constant/image_location/image_location.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool homepages1 = true;
  bool homepages2 = false;
  bool homepages3 = false;
  bool homepages4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("hello Emmanuel",
                style: Theme.of(context).textTheme.titleSmall),
            Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Icon(
                Icons.add_alert_outlined,
                color: Colors.white,
              ),
            ),
          ]),
          const SizedBox(
            height: 20.0,
          ),
          Text("Easy rents".toUpperCase(),
              style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(
            height: 20.0,
          ),
          showrented(),
          const SizedBox(height: 30.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.all(14),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              Assets.homepage1,
                              height: 150,
                              width: 150,
                              fit: BoxFit.fill,
                            ),
                            Text(
                              "Hot Sale",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Hot Sale",
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            Text(
                              "\$50",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ])),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                        margin: EdgeInsets.all(4),
                        padding: EdgeInsets.all(14),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                Assets.homepage1,
                                height: 120,
                                width: 120,
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "Hot Sale",
                                style: Theme.of(context).textTheme.bodyMedium
                                  
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Hot Sale",
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              Text(
                                "\$50",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ])),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Material(
            borderRadius: BorderRadius.circular(20.0),
            elevation: 5.0,
            child: Container(
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          child: Image.asset(
                            Assets.onboardimage2,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: ClipRect(
                                child: Container(
                                  height: 100,
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Text(
                                    titleSmall,
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNav(),
    );


  }*/

 /* showrented() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            homepages1 = true;
            homepages2 = false;
            homepages3 = false;
            homepages4 = false;
            setState(() {});
          },
          child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                    color: homepages1 ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(1),
                child: Image.asset(
                  Assets.homepage1,
                  width: 50,
                  height: 50,
                  fit: BoxFit.contain,
                ),
              )),
        ),
        GestureDetector(
          onTap: () {
            homepages1 = false;
            homepages2 = true;
            homepages3 = false;
            homepages4 = false;
            setState(() {});
          },
          child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                    color: homepages2 ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(1),
                child: Image.asset(
                  Assets.homepage2,
                  width: 50,
                  height: 50,
                  fit: BoxFit.contain,
                ),
              )),
        ),
        GestureDetector(
          onTap: () {
            homepages1 = false;
            homepages2 = false;
            homepages3 = true;
            homepages4 = false;
            setState(() {});
          },
          child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                    color: homepages3 ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(1),
                child: Image.asset(
                  Assets.homepage3,
                  color: homepages3 ? Colors.white30 : Colors.black,
                  width: 50,
                  height: 50,
                  fit: BoxFit.contain,
                ),
              )),
        ),
        GestureDetector(
          onTap: () {
            homepages1 = false;
            homepages2 = false;
            homepages3 = false;
            homepages4 = true;
            setState(() {});
          },
          child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                    color: homepages4 ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(1),
                child: Image.asset(
                  Assets.homepage4,
                  width: 50,
                  height: 50,
                  fit: BoxFit.contain,
                ),
              )),
        ),
      ],
    );
  }

}
*/