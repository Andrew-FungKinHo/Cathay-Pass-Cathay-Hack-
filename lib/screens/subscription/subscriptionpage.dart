import 'package:flutter/material.dart';
import 'package:recipe_app/components/custom_nav_bar.dart';
import 'package:recipe_app/components/my_bottom_nav_bar.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/screens/subscription/plan.dart';
import 'package:recipe_app/widgets/notifications.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({Key key}) : super(key: key);

  @override
  _SubscriptionPlansState createState() => _SubscriptionPlansState();
}

class _SubscriptionPlansState extends State<SubscriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kPrimaryColor,
        elevation: 0.0,
        title: Text('Subscription', style: TextStyle(fontWeight: FontWeight.w500),),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications_none),
            iconSize: 28.0,
            onPressed: () {

              showDialog(context: context, builder: (context) => NotificationsPopUp());
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 16,),
          Expanded(child: Container(
            margin: EdgeInsets.all(8),
            child: ListView.builder(
                itemCount: subscriptionPlanList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(8),
                    child: ExpansionPanelList(
                      animationDuration: Duration(milliseconds: 1000),
                      expandedHeaderPadding: EdgeInsets.all(0),
                      elevation: 1,
                      children: [
                        ExpansionPanel(
                            headerBuilder: (context, isExpanded) {
                              return Container(
                                height: 108,
                                padding: EdgeInsets.fromLTRB(16, 12, 16, 16),
                                decoration: BoxDecoration(
                                    color: subscriptionPlanList[index].color,
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(16), bottomLeft: Radius.circular(16))
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(subscriptionPlanList[index].planName,
                                            style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w600)),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                            "${r"$"}${subscriptionPlanList[index].price}/year",
                                            style: TextStyle(fontSize: 18, color: Colors.white))
                                      ],
                                    ),
                                    SizedBox(width: 16,),
                                    subscriptionPlanList[index].selectedPlan ? Icon(Icons.star, color: Colors.white,): Text(''),
                                  ],
                                )
                              );
                            },
                            body: ListTile(
                                title: Container(
                                  //padding: EdgeInsets.fromLTRB(8,0,8,8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 24,
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.airplanemode_active, size: 16,),
                                          SizedBox(width: 16,),
                                          Text(subscriptionPlanList[index].trips),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.public, size: 16,),
                                          SizedBox(width: 16,),
                                          Text(subscriptionPlanList[index].destination),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.hotel, size: 16,),
                                          SizedBox(width: 16,),
                                          Text(subscriptionPlanList[index].hotelPackage),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.shield, size: 16,),
                                          SizedBox(width: 16,),
                                          Text(subscriptionPlanList[index].insurance),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Align(
                                        child: TextButton(
                                          onPressed: () {},
                                          child: subscriptionPlanList[index].selectedPlan ? Text('Selected') : Container(
                                            padding: EdgeInsets.all(8),
                                            color: subscriptionPlanList[index].color,
                                            child: Text('Select plan', style: TextStyle(color: Colors.white),),)),
                                        alignment: Alignment.centerRight,),
                                      SizedBox(
                                        height: 8,
                                      ),
                                    ],
                                  ),
                                ),
                                subtitle: TextButton(
                                  child: Text("View details"),
                                  onPressed: () {},
                                )),
                            isExpanded: subscriptionPlanList[index].expanded,
                            canTapOnHeader: true)
                      ],
                      expansionCallback: (panelIndex, isExpanded) {
                        setState(() {
                          subscriptionPlanList[index].expanded =
                          !subscriptionPlanList[index].expanded;
                        });
                      },
                    ),
                  );
                }),
          ),)
        ],
      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  List<Plan> subscriptionPlanList = <Plan>[
    Plan(
        planName: 'Basic',
        price: '9,000',
        trips: '3-day trips x 3',
        destination: 'Basic Asian destinations',
        hotelPackage: 'Basic hotel package',
        insurance: 'Standard insurance plan',
        selectedPlan: false,
        color: AppColors.kPrimaryColor),
    Plan(
        planName: 'Luxury',
        price: '11,040',
        trips: '3-day trips x 3',
        destination: 'Popular Asian destinations',
        hotelPackage: '5-star hotel package',
        insurance: 'Standard insurance plan',
        selectedPlan: true,
        color: AppColors.premiumEconClassColor),
    Plan(
        planName: 'Business',
        price: '19,200',
        trips: '4-day trips x 4',
        destination: 'Business destinations',
        hotelPackage: '5-star hotel package',
        insurance: 'Premium insurance plan',
        selectedPlan: false,
        color: AppColors.businessClassColor),
  ];
}
