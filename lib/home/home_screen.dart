import 'package:flutter/material.dart';
import 'package:primec_market/home/widgets/home_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _menuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('프라임 마트'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: IndexedStack(
        index: _menuIndex,
        children: [
          HomeWidget(),
          Container(
            color: Colors.indigo,
          )
        ],
      ),
      // floatingActionButton: switch (_menuIndex) {
      //   0 => FloatingActionButton(
      //     onPressed: (){},
      //   ),
      //   1 => FloatingActionButton(
      //     onPressed: (){},
      //   ),
      //   _ => Container()
      // },
      floatingActionButton: _menuIndex == 0
          ? FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.shopping_cart_outlined),
            )
          : FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
      bottomNavigationBar: NavigationBar(
        // 하단 메뉴바
        selectedIndex: _menuIndex, // 화면 선택
        onDestinationSelected: (idx) {
          // 화면 변경
          setState(() {
            _menuIndex = idx;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.store_outlined),
            label: '홈',
          ),
          NavigationDestination(
            icon: Icon(Icons.storefront),
            label: '사장님(판매자)',
          )
        ],
      ),
    );
  }
}
