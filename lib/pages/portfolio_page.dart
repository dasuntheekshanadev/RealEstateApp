import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '../models/portfolio_model.dart';
import '../models/portfolioproperty_model.dart';
import 'portfolio_detail_page.dart';

class PortfolioPage extends StatelessWidget {
  final PortfolioModel portfolioModel;
  const PortfolioPage({
    Key? key,
    required this.portfolioModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(LineIcons.search),
                      hintText: "Search...",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your portfolio",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: pproperties.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ExpandedRecommendationCardP(
                      portfoliopropertyModel: pproperties[index],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ExpandedRecommendationCardP extends StatelessWidget {
  const ExpandedRecommendationCardP({
    Key? key,
    required this.portfoliopropertyModel,
  }) : super(key: key);

  final PortfoliopropertyModel portfoliopropertyModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PortfolioDetailsPage(
              portfoliopropertyModel: portfoliopropertyModel),
        ),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(right: 8, top: 12, bottom: 12),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.15),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image(
                height: 200,
                width: double.infinity,
                image: AssetImage(portfoliopropertyModel.thumbnail),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Text(
                  portfoliopropertyModel.title,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const Spacer()
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              "${portfoliopropertyModel.area} square feet - ${portfoliopropertyModel.rooms} rooms - ${portfoliopropertyModel.bathrooms} bathrooms",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    " ${portfoliopropertyModel.subTitle}  \n  R ${portfoliopropertyModel.income}",
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
