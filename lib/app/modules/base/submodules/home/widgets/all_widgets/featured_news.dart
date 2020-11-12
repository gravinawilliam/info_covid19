import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../../core/constants/constants.dart';
import '../../../../../../core/models/models.dart';
import '../../home_controller.dart';

class FeaturedNews extends StatelessWidget {
  final HomeController controller;

  const FeaturedNews({this.controller});
  @override
  Widget build(BuildContext context) {
    var _sizeHeightFeaturedNews = SizeConst.screenHeight * 0.22;
    return controller.newsList != null
        ? Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: SizeConst.paddingVertical,
                  bottom: SizeConst.paddingVertical * 0.5,
                ),
                width: SizeConst.screenWidth - 2 * SizeConst.paddingHorizontal,
                child: Text(
                  LocaleProvider.of(context).news,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              Observer(
                builder: (_) {
                  if (controller.newsList.hasError) {
                    print(controller.newsList.error);
                    return Container(
                      color: Colors.transparent,
                      height: SizeConst.screenHeight,
                      width: SizeConst.screenWidth * 0.5,
                      child: Center(
                        child: RaisedButton(
                          onPressed: controller.getListFeaturedNews,
                          child: Text('Error'),
                        ),
                      ),
                    );
                  }
                  if (controller.newsList.data == null) {
                    return Container(
                      color: Colors.transparent,
                      height: _sizeHeightFeaturedNews,
                      width: SizeConst.screenWidth * 0.5,
                      child: Center(
                        child: LoadingIndicator(
                          indicatorType: Indicator.ballClipRotateMultiple,
                          color: Colors.white,
                        ),
                      ),
                    );
                  }
                  List<NewsModel> newsList = controller.newsList.data;
                  return Container(
                    height: _sizeHeightFeaturedNews,
                    child: CarouselSlider.builder(
                      options: CarouselOptions(
                        height: SizeConst.screenHeight,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 9),
                        autoPlayAnimationDuration: Duration(milliseconds: 900),
                        autoPlayCurve: Curves.easeInOutQuint,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      ),
                      itemCount: newsList.length,
                      itemBuilder: (context, index) {
                        var newsModel = newsList[index];
                        return GestureDetector(
                          onTap: () async {
                            var url = "${newsModel.linkUrl}";
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw "Could not launch $url";
                            }
                          },
                          child: Container(
                            width: SizeConst.screenWidth,
                            height: _sizeHeightFeaturedNews,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                13,
                              ),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: CachedNetworkImageProvider(
                                  newsModel.imageUrl,
                                ),
                              ),
                            ),
                            child: Container(
                              width: SizeConst.screenWidth,
                              height: _sizeHeightFeaturedNews,
                              padding: EdgeInsets.symmetric(
                                horizontal: SizeConst.screenWidth * 0.03,
                                vertical: SizeConst.screenWidth * 0.02,
                              ),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(180, 0, 0, 0),
                                    Color.fromARGB(0, 0, 0, 0)
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                ),
                                borderRadius: BorderRadius.circular(
                                  13,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "@${newsModel.author}",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontFamily: FontsConst.text,
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConst.screenHeight * 0.005,
                                  ),
                                  Text(
                                    newsModel.name,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontFamily: FontsConst.text,
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          )
        : Container();
  }
}
