import 'dart:io';


import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:plantapp_133/constants.dart';
import 'package:plantapp_133/screens/camera/camera_page.dart';
import 'package:plantapp_133/screens/camera/storage_helper.dart';


class FullPage extends StatefulWidget {
  const FullPage({super.key});

  @override
  State<FullPage> createState() => _FullPageState();
}

class _FullPageState extends State<FullPage> {
  File? _imageFile;

  Future<void> _requestPermissions() async {
    await Permission.camera.request();
    await Permission.storage.request();
    await Permission.manageExternalStorage.request();
  }

  Future<void> _takePicture() async {
    await _requestPermissions();
    final File? result = await Navigator.push<File?>(
      context,
      MaterialPageRoute(builder: (_) => const CameraPage()),
    );
    if (result != null) {
      final saved = await StorageHelper.saveImage(result, 'camera');
      setState(() => _imageFile = saved);
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Disimpan: ${saved.path}')));
    }
  }

   Future<void> _pickFromGallery() async {
    final picker = ImagePicker();
    final picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      final saved = await StorageHelper.saveImage(File(picked.path), 'gallery');
      setState(() => _imageFile = saved);
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Disalin: ${saved.path}')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Kamera')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding),
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.camera, color: kPrimaryColor),
                        label: const Text('Ambil Foto', style: TextStyle(color: kPrimaryColor)),
                        onPressed: _takePicture,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding),
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.folder, color: kPrimaryColor),
                      label: const Text('Pilih dari Galeri', style: TextStyle(color: kPrimaryColor)),
                      onPressed: _pickFromGallery,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              if (_imageFile != null)
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.file(
                        _imageFile!,
                        width: double.infinity,
                      ),
                    ),
                    Text(
                      'Gambar disimpan di: ${_imageFile?.path ?? 'Tidak ada'}',
                      style: const TextStyle(fontSize: 12),
                    ),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.delete, color: kPrimaryColor),
                      label: const Text('Hapus Gambar', style: TextStyle(color: kPrimaryColor)),
                      onPressed: () async {
                        await _imageFile?.delete();
                        setState(() => _imageFile = null);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Gambar dihapus')),
                        );
                      },
                    ),
                  ],
                )
              else
                const Text('Belum ada gambar diambil/dipilih.'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}