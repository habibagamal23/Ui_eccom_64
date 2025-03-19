import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../../logic/logincubit/login_cubit.dart';

class ImagePickerWidget extends StatelessWidget {
  const ImagePickerWidget({Key? key}) : super(key: key);

  Future<void> _pickImage(BuildContext context) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      context.read<LoginCubit>().updateImage(pickedFile.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () => _pickImage(context),
          child: CircleAvatar(
            radius: 50,
            backgroundImage: state.imagePath != null
                ? FileImage(File(state.imagePath!))
                : null,
            child: state.imagePath == null
                ? const Icon(Icons.camera_alt, size: 30, color: Colors.grey)
                : null,
          ),
        );
      },
    );
  }
}
