import 'package:flutter/material.dart';

class AppPageView extends StatelessWidget {
  final PageController controller;
  final List<Widget> pages;
  final PageStorageBucket bucket;

  const AppPageView(
      {Key? key,
      required this.controller,
      required this.pages,
      required this.bucket})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        //    serviceLocator<RootBloc>().add(const GetDataEvent());
      },
      child: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children:
            pages.map((e) => PageStorage(bucket: bucket, child: e)).toList(),
      ),
    );
  }
}
