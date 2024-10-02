//? Penjelasan Tentang ListView.custom.
// Deskripsi : Memberikan kontrol penuh pada bagaimana item di dalam list dibuat dengan menggunakan SliverChildDelegate.
// Kapan digunakan : Digunakan ketika kamu memerlukan kontrol lebih atas bagaimana item di-render atau di-cache.
import 'package:flutter/material.dart';

class ListViewCustom extends StatefulWidget {
  const ListViewCustom({super.key});

  @override
  State<ListViewCustom> createState() => ListViewCustomState();
}

class ListViewCustomState extends State<ListViewCustom> {
  List<String> listData = ['1', '2', '3', '4'];

  void reverse() {
    setState(() {
      listData = listData.reversed.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('List View Custom'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.custom(
                childrenDelegate: SliverChildBuilderDelegate(
                  (context, index) => KeepAliveListData(
                    data: listData[index],
                    key: ValueKey<String>(listData[index]),
                  ),
                  childCount: listData.length,
                  findChildIndexCallback: (key) {
                    final ValueKey<String> valueKey = key as ValueKey<String>;
                    final String data = valueKey.value;
                    final int index = listData.indexOf(data);
                    if (index >= 0) {
                      return index;
                    }
                    return null;
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: TextButton(
          onPressed: reverse,
          child: Text('Change Order'),
        ),
      ),
    );
  }
}

class KeepAliveListData extends StatefulWidget {
  final String data;
  const KeepAliveListData({super.key, required this.data});

  @override
  State<KeepAliveListData> createState() => _KeepAliveListDataState();
}

class _KeepAliveListDataState extends State<KeepAliveListData>
    with AutomaticKeepAliveClientMixin {
  // Dengan "AutomaticKeepAliveClientMixin", kamu bisa menjaga agar widget tetap aktif di memori meskipun di-scroll keluar dari layar.
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Text(widget.data);
  }
}
