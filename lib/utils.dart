import 'main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_ios/image_picker_ios.dart';
pickImage(ImageSource source) async{
  final ImagePicker _imagePicker = ImagePicker();
  XFile? _file = await _imagePicker.pickImage(source: source);
  if(_file != null){
    return await _file.readAsBytes();
  }
  print("Please select an image");
}