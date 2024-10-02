import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:belajar_flutter_git/list/list-view-sparated/contoh-quran-app/listview-surah/models/surah_api.dart';

class ListSurahPage extends StatefulWidget {
  const ListSurahPage({super.key});

  @override
  State<ListSurahPage> createState() => _ListSurahPageState();
}

class _ListSurahPageState extends State<ListSurahPage> {
  Future<List<Surah>> getSurahList() async {
    String data = await rootBundle.loadString('assets/datas/list-surah.json');
    return surahFromJson(data); // Pastikan surahFromJson mengembalikan List<Surah>
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('List Data Surah'),
      ),
      body: SafeArea(
        child: FutureBuilder<List<Surah>>(
          future: getSurahList(),
          initialData: const [], // List kosong saat awal load
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return const Center(child: Text('Error loading data.'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(child: Text('No Data.'));
            }
            
            return ListView.separated(
              itemCount: snapshot.data!.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                final surah = snapshot.data![index];
                return surahItem(
                  context: context,
                  surah: surah,
                );
              },
            );
          },
        ),
      ),
    );
  }
}

Widget surahItem({required Surah surah, required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
          ),
          child: Text('${surah.nomor}'),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              surah.namaLatin,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text('${surah.tempatTurun.name} - '),
                Text('${surah.jumlahAyat} Ayat'),
              ],
            ),
          ],
        ),
        const Spacer(),
        Text(surah.nama),
      ],
    ),
  );
}
