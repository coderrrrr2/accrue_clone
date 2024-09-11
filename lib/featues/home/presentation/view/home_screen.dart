import 'package:accrue_clone/featues/home/presentation/view/widgets/home_header.dart';
import 'package:accrue_clone/shared/widgets/app_button.dart';
import 'package:accrue_clone/shared/widgets/app_color.dart';
import 'package:accrue_clone/shared/widgets/app_column.dart';
import 'package:accrue_clone/shared/widgets/shared_widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppColumn(isScrollable: true, children: [
        const HomeHeader(),
        _buildDiscountBanner(),
        addHeight(10),
        SizedBox(
          height: 250,
          child: PageView(
            children: [_fundingBalanceContainer()],
          ),
        ),
        const Row(
          children: [
            Text('Getting Started'),
          ],
        )
      ]),
    );
  }

  Widget _buildDiscountBanner() {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  Widget _fundingBalanceContainer() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      height: 40,
      width: 200,
      decoration: BoxDecoration(
          color: whiteColor,
          border: Border.all(color: lightGrey),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "Funding balance",
                style: TextStyle(color: lightGrey, fontSize: 17),
              ),
              addWidth(10),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.visibility,
                  )),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "\$0.15",
                    style: TextStyle(color: blackColor, fontSize: 30),
                  ),
                  Text(
                    "\$0.15 uninvested cash",
                    style: TextStyle(color: lightGrey, fontSize: 17),
                  ),
                ],
              ),
              Icon(Icons.notes)
            ],
          ),
          addHeight(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppButton(
                buttonSize: Size(30, 50),
                onPressed: () {},
                text: 'Deposit',
              ),
              AppButton(
                backgroundColor: Colors.white,
                buttonSize: Size(30, 20),
                onPressed: () {},
                text: 'Withdraw',
              )
            ],
          )
        ],
      ),
    );
  }
}
