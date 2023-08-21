import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note/cubits/cubit/add_note_cubit.dart';
import 'package:note/models/notes_model.dart';

import 'package:note/widget/customtextfield.dart';

import 'custom_button.dart';

class AddNoteShowButton extends StatelessWidget {
  const AddNoteShowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
            } else if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: const SingleChildScrollView(child: AddNoteForm()));
          },
        ),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidatemode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidatemode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: 'Title',
            onsaved: (p0) {
              title = p0;
            },
          ),
          const SizedBox(height: 16),
          CustomTextField(
            hint: 'Content',
            max: 5,
            onsaved: (p0) {
              subtitle = p0;
            },
          ),
          const SizedBox(height: 32),
          CustomButton(
            ontab: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                var note = NoteModel(
                    title: title!,
                    subtitle: subtitle!,
                    date: DateTime.now().toString(),
                    color: Colors.green.value);
                BlocProvider.of<AddNoteCubit>(context).addnote(note);
              } else {
                autovalidatemode = AutovalidateMode.always;
              }
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
