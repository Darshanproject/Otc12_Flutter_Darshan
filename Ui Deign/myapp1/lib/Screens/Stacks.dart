import 'package:flutter/material.dart';


class Stacks extends StatefulWidget {
  @override
  State<Stacks> createState() => _StacksState();
}

class _StacksState extends State<Stacks> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 200.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('SliverFixedExtentList Example'),
                background: Image.network(
                  'https://media.istockphoto.com/id/1456566125/photo/money-stack-usa-dollar-banknotes.webp?b=1&s=170667a&w=0&k=20&c=RvuvbHlu75Yhq_t1XvQLKWSRxm424F6B14bfk6xBqxM=',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 50.0, // Fixed extent for each item
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Item $index'),
                  );
                },
                childCount: 20, // Adjust the number of items as needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}
