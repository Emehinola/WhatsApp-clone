import 'package:flutter/material.dart';
import 'package:whatsapp/colors/colors.dart';
import 'package:whatsapp/screens/calls.dart';
import 'package:whatsapp/screens/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// import 'package:whatsapp/widgets/widgets.dart';

class NavScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavScreenState();
  }
}

class _NavScreenState extends State<NavScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollController;
  var _currentIndex;

  List<Widget> _pages = [
    Scaffold(
      body: Center(child: Text('1')),
    ),
    Home(),
    Status(),
    CallsScreen()
  ];
  // int _currentIndex;

  @override
  void initState() {
    // _tabController = TabController(length: 4, vsync: this, initialIndex: 1);

    _scrollController = ScrollController();

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: _pages.length,
      child: Builder(builder: (context) {
        int _tabListener() => DefaultTabController.of(context)
            .index; // for detecting the tab change

        DefaultTabController.of(context).addListener(() {
          if (DefaultTabController.of(context).indexIsChanging) {
            switch (DefaultTabController.of(context).index) {
              case 0:
                setState(() {
                  _currentIndex = 0;
                });
                break;
              case 1:
                setState(() {
                  _currentIndex = 1;
                });
                break;
              case 2:
                setState(() {
                  _currentIndex = 2;
                });
                break;
              case 3:
                setState(() {
                  _currentIndex = 3;
                });
                break;
            }
          }
        });

        return Scaffold(
            floatingActionButton: _currentIndex == 1
                ? FloatingActionButton(
                    backgroundColor: WhatsAppColor.primaryLight,
                    child: Icon(Icons.chat),
                    onPressed: () {
                      print('action button pressed');
                    })
                : _currentIndex == 2
                    ? FloatingActionButton(
                        backgroundColor: WhatsAppColor.primaryLight,
                        child: Icon(Icons.camera_alt),
                        onPressed: () {
                          print('action button pressed');
                        })
                    : _currentIndex == 3
                        ? FloatingActionButton(
                            backgroundColor: WhatsAppColor.primaryLight,
                            child: Icon(MdiIcons.callMade),
                            onPressed: () {
                              print('action button pressed');
                            })
                        : SizedBox.shrink(),
            body: NestedScrollView(
              controller: _scrollController,
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                      toolbarHeight: 75,
                      snap: true,
                      forceElevated: innerBoxIsScrolled,
                      pinned: true,
                      floating: true,
                      title: Text('WhatsApp',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w500)),
                      actions: [
                        IconButton(
                            icon: Icon(Icons.search),
                            onPressed: () {
                              print('search pressed');
                            }),
                        IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: () {
                              print('menu pressed');
                            })
                      ],
                      bottom: TabBar(
                        // controller: _tabController,
                        indicatorColor: Colors.white,
                        indicatorWeight: 3.5,
                        indicatorPadding: EdgeInsets.only(top: 30),

                        tabs: [
                          Container(
                            padding: EdgeInsets.only(bottom: 10, top: 10),
                            child: Icon(
                              Icons.camera_enhance,
                            ),
                          ),
                          Text('CHATS',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18)),
                          Text('STATUS',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18)),
                          Text('CALLS',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18))
                        ],
                      ))
                ];
              },
              body: TabBarView(
                children: _pages,
              ),
            ));
      }),
    );
  }
}
