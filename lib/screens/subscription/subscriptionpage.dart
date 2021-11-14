import 'package:flutter/material.dart';
import 'package:recipe_app/components/custom_nav_bar.dart';
import 'package:recipe_app/screens/subscription/plan.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({Key key}) : super(key: key);

  @override
  _SubscriptionPlansState createState() => _SubscriptionPlansState();
}

class _SubscriptionPlansState extends State<SubscriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
            itemCount: subscriptionPlanList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Text("Your current subscription"),
                    SizedBox(height: 16,),
                    ExpansionPanelList(
                      animationDuration: Duration(milliseconds: 1000),
                      expandedHeaderPadding: EdgeInsets.all(0),
                      elevation: 1,
                      children: [
                        ExpansionPanel(
                            headerBuilder: (context, isExpanded) {
                              return Container(
                                height: 96,
                                padding: EdgeInsets.fromLTRB(16,12,16,16),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
                                color: subscriptionPlanList[index].color,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(subscriptionPlanList[index].planName, style: TextStyle(fontSize: 24)),
                                    Text("${r"$"}${subscriptionPlanList[index].price}/year", style: TextStyle(fontSize: 24))
                                  ],
                                ),
                              );
                            },
                            body: ListTile(
                                title: Container(
                                  //padding: EdgeInsets.fromLTRB(8,0,8,8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(subscriptionPlanList[index].trips),
                                      Text(subscriptionPlanList[index].destination),
                                      Text(subscriptionPlanList[index].hotelPackage),
                                      SizedBox(height: 8,),
                                    ],
                                  ),
                                ),
                                subtitle: TextButton(child: Text("Details"), onPressed: () {},)
                            ),
                            isExpanded: subscriptionPlanList[index].expanded,
                            canTapOnHeader: true
                        )
                      ],
                      expansionCallback: (panelIndex, isExpanded) {
                        setState(() {
                          subscriptionPlanList[index].expanded = !subscriptionPlanList[index].expanded;
                        });
                      },
                    ),
                  ],
                )
              );
            }
        ),
      ),
    );
  }

  List<Plan> subscriptionPlanList = <Plan>[
    Plan(
      planName: 'Basic',
      price: 9000,
      trips: '3-day trips x 3',
      destination: 'Basic Asian destinations',
      hotelPackage: 'Basic hotel package',
      color: Color(0xFFDFD4C0)
    ),
    Plan(
        planName: 'Luxury',
        price: 11040,
        trips: '3-day trips x 3',
        destination: 'Popular Asian destinations',
        hotelPackage: '5-star hotel package',
        color: Color(0xFF9BC1BC)
    ),
    Plan(
        planName: 'Business',
        price: 19200,
        trips: '4-day trips x 4',
        destination: 'Business destinations',
        hotelPackage: '5-star hotel package',
        color: Color(0xFF9BC1BC)
    ),
  ];
}
