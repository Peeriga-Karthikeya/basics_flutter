import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  final String picture;
  final String name;
  final String age;
  final String country;
  final String job;

  const Person(
      {super.key,
      required this.picture,
      required this.name,
      required this.age,
      required this.country,
      required this.job});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(picture))),
            ),
            Container(
                width: double.infinity,
                decoration: const BoxDecoration(color: Colors.white54),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                )),
          ],
        ),
        Container(
          decoration: const BoxDecoration(color: Colors.white54),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'age',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const Spacer(),
                  Text(
                    age,
                    style: Theme.of(context).textTheme.titleSmall,
                  )
                ]),
                Row(
                  children: [
                    Text(
                      'country',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Spacer(),
                    Text(country, style: Theme.of(context).textTheme.titleSmall)
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'job',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Spacer(),
                    Text(job, style: Theme.of(context).textTheme.titleSmall)
                  ],
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
