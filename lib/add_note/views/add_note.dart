import 'package:animate_do/animate_do.dart';
import 'package:elnoor_guide/comon_widgets/primary_button.dart';
import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: FadeInDownBig(
            delay: Duration(milliseconds: 650),
            child: const Text('إضافة ملاحظة')),
      ),
      body: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.only(right: 17),
              child: ZoomIn(
                curve: Curves.linear,
                delay: Duration(milliseconds: 500),
                child: Text(
                  "محتوى الملاحظة",
                  style: TextStyle(fontSize: media.width * 0.05),
                ),
              ),
            ),
            // const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(20),
              child: FadeInRight(
                delay: Duration(milliseconds: 500),
                child: TextFormField(
                  maxLines: 9,
                  decoration: InputDecoration(
                    hintText: "محتوى الملاحظة",
                    hintTextDirection: TextDirection.rtl,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            FadeInLeft(
                delay: Duration(milliseconds: 500),
                child: PrimaryButton(onTap: () {}, text: "اضف"))
          ],
        ),
      ),
    );
  }
}
