import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomAppBar extends StatefulWidget {
  final ScrollController scrollController;
  //int currentIndex;
  //TabController tabController;

  CustomAppBar({
    @required this.scrollController,
    //@required this.currentIndex,
    //@required this.tabController
  });

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    //widget.tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('WhatsApp', style: TextStyle(fontSize: 29)),
      actions: [
        IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search clicked');
            }),
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () {
            print('more vertical pressed');
          },
        )
      ],
      bottom: TabBar(
        onTap: (index) {
          setState(() {
            // widget.currentIndex = index;
          });
        },
        // controller: widget.tabController,
        tabs: [
          IconButton(
            icon: Icon(Icons.camera_enhance),
            onPressed: () {
              print('camera');
            },
          ),
          Text('CHATS'),
          Text('STATUS'),
          Text('CALLS')
        ],
      ),
    );
  }
}

class CustomTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: [],
    );
  }
}
