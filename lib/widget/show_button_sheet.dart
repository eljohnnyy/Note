import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'package:note/cubits/cubit/add_note_cubit.dart';
import 'package:note/cubits/cubit/cubit_notes_cubit.dart';
import 'package:note/models/notes_model.dart';

import 'package:note/widget/customtextfield.dart';

import 'color_list_item.dart';
import 'custom_button.dart';

class AddNoteShowButton extends StatelessWidget {
  const AddNoteShowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
           if (state is AddNoteSuccess) {
             BlocProvider.of<CubitNotesCubit>(context).fetchallnote();
          
            Navigator.pop(context);
          }
        else  if (state is AddNoteFailure) {
              print("failed cause ${state.errmessage}");
          } 
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading?true:false,
            child:  Padding(
              padding: EdgeInsets.only(left: 16,right: 16,bottom: MediaQuery.of(context).viewInsets.bottom),
              child:const SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
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
    void validation() {
    if (formkey.currentState!.validate()) {
      formkey.currentState!.save();
        NoteModel note = NoteModel(
                        title: title!,
                        subtitle: subtitle!,
                        date: DateFormat.yMd().format(DateTime.now()),
                        color: Colors.green.value);
      BlocProvider.of<AddNoteCubit>(context).addnote(note);
    } else {
     autovalidatemode = AutovalidateMode.always;
      setState(() {});
    }
  }
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
         const ColorsListView(),
            const SizedBox(height: 32),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
                  return CustomNormalButton(
                isLoading: state is AddNoteLoading ? true : false,
                text: "Add",
                onPressed: validation,
              
              );
            },
            
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

