import 'package:basics/presentation/widget_examples/widgets/buttons_examples.dart';
import 'package:basics/presentation/widget_examples/widgets/person.dart';
import 'package:flutter/material.dart';
import './widget_examples/widgets/first_column_child.dart';
import './widget_examples/widgets/hello_world.dart';
import './widget_examples/widgets/layout_builder_example.dart';
import './widget_examples/widgets/media_query_example.dart';
import './widget_examples/widgets/row_expanded_example.dart';
import './widget_examples/widgets/custom_buttoon.dart';

class WidgetExampleScreen extends StatelessWidget {
  const WidgetExampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Basics")),
      body: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const RowEpandedExample(),
              const SizedBox(
                height: 20,
              ),
              const FirstColumnChild(),
              const SizedBox(
                height: 20,
              ),
              const HelloWorld(),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 40,
              ),
              const MediaQueryExample(),
              const SizedBox(
                height: 40,
              ),
              const LayoutBuilderExample(),
              const SizedBox(
                height: 40,
              ),
              const ButtonExamples(),
              CustomButton(
                onTap: () {},
                icon: Icons.home,
                iconcolor: Colors.white,
              ),
              const SizedBox(
                height: 40,
              ),
              const Person(
                  picture:
                      "https://imgs.search.brave.com/P8B-reWYvA4-0xIb4U1peLED56Vc9QaZcE1sqEd9uQ4/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/c3RvY2t2YXVsdC5u/ZXQvZGF0YS8yMDIw/LzAxLzMwLzI3Mjky/Ny90aHVtYjE2Lmpw/Zw",
                  name: "karthikeya",
                  age: '19',
                  country: 'India',
                  job: "Freelance programmer"),
              const SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/screen_one');
        },
        child: const Icon(Icons.ac_unit),
      ),
    );
  }
}
