import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:rhymer/features/search/widgets/search_button.dart';
import 'package:rhymer/ui/ui.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key, required this.rhymers});

  final List<String> rhymers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text("Rhymer"),
            pinned: true,
            snap: true,
            floating: true,
            surfaceTintColor: Colors.transparent,
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(70), child: SearchButton()),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    RhymerHistoryCard(rhymers: rhymers),
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(width: 16),
                itemCount: 10,
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverList.builder(
            itemCount: 10,
            itemBuilder: (context, i) => const RhymerListCard(
              rhyme: "Рифма",
            ),
          ),
        ],
      ),
    );
  }
}
