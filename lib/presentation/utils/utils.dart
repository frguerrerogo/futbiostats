import 'dart:typed_data';

import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class Utils {
  static Future<Uint8List?> pickImage() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? image = await imagePicker.pickImage(source: ImageSource.gallery);
    if (image == null) return null;
    return await image.readAsBytes();
  }

  // Método para formatear números con el símbolo de euros
  static String formatCurrency(int value) {
    final format = NumberFormat.currency(
      locale: 'es_ES', // Configuración regional para el formato europeo
      symbol: '€', // Símbolo de euros
      decimalDigits: 0, // Sin decimales
    );
    return format.format(value);
  }
}
