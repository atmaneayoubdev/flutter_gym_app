import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/common/header_widget.dart';
import 'package:gym/constants.dart';

import '../widgets/product_widget.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({Key? key}) : super(key: key);
  static const String routeName = '/products';
  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderWidget(
              title: "انت تقوم بعمل رائع حتي الان ، واصل التقدم"),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            child: Text(
              "المنتجات الاكثر طلبا",
              textAlign: TextAlign.start,
              style: GoogleFonts.tajawal(
                fontSize: 16.sp,
                color: kblackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          SizedBox(
            height: 232.h,
            //width: 428.w,
            width: double.infinity,
            child: ListView.separated(
              padding: EdgeInsets.only(right: 25.w),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return const ProductWidget(
                  image: "assets/images/protein.png",
                  favorite: true,
                  name: "مكمل غذائي",
                  price: "355 SAR",
                  isGrid: false,
                );
              },
              separatorBuilder: (BuildContext context, int index) => SizedBox(
                width: 12.w,
              ),
            ),
          ),
          SizedBox(
            height: 14.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            child: Text(
              "كل المنتجات",
              textAlign: TextAlign.start,
              style: GoogleFonts.tajawal(
                fontSize: 16.sp,
                color: kblackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 14.h,
          ),
          Expanded(
            child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                //height: 260.h,
                width: double.infinity,
                child: GridView.count(
                  //childAspectRatio: 2,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 14.h,
                  shrinkWrap: true,
                  children: const [
                    ProductWidget(
                      image: "assets/images/protein.png",
                      favorite: true,
                      name: "مكمل غذائي",
                      price: "355 SAR",
                      isGrid: true,
                    ),
                    ProductWidget(
                      image: "assets/images/protein.png",
                      favorite: true,
                      name: "مكمل غذائي",
                      price: "355 SAR",
                      isGrid: true,
                    ),
                    ProductWidget(
                      image: "assets/images/protein.png",
                      favorite: true,
                      name: "مكمل غذائي",
                      price: "355 SAR",
                      isGrid: true,
                    ),
                    ProductWidget(
                      image: "assets/images/protein.png",
                      favorite: true,
                      name: "مكمل غذائي",
                      price: "355 SAR",
                      isGrid: true,
                    ),
                    ProductWidget(
                      image: "assets/images/protein.png",
                      favorite: true,
                      name: "مكمل غذائي",
                      price: "355 SAR",
                      isGrid: true,
                    ),
                    ProductWidget(
                      image: "assets/images/protein.png",
                      favorite: true,
                      name: "مكمل غذائي",
                      price: "355 SAR",
                      isGrid: true,
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
