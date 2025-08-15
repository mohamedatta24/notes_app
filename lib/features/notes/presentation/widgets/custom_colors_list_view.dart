import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/features/notes/presentation/cubits/add_notes_cubit/notes_cubit.dart';
import 'package:notes_app/features/notes/presentation/models/notes_model.dart';
import 'package:notes_app/features/notes/presentation/widgets/custom_colors.dart';

class CustomColorsListView extends StatefulWidget {
  const CustomColorsListView({super.key});

  @override
  State<CustomColorsListView> createState() => _CustomColorsListViewState();
}

class _CustomColorsListViewState extends State<CustomColorsListView> {
  final List<Color> colors = const [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.teal,
    Colors.cyan,
    Colors.indigo,
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<AddNotesCubit>(context);
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CustomColors(
              onTap: () {
                setState(() {
                  currentIndex = index;
                  cubit.selectedColor = colors[index];
                });
              },
              color: colors[index],
              isSelected: currentIndex == index, // Example logic for selection
            ),
          );
        },
      ),
    );
  }
}
