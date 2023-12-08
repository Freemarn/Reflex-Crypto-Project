import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:clipboard/clipboard.dart';
import 'package:lottie/lottie.dart';

class DepositPage extends StatefulWidget {
  const DepositPage({super.key});

  @override
  State<DepositPage> createState() => _DepositPageState();
}

class _DepositPageState extends State<DepositPage> {
  List<PlatformFile>? _selectedFiles;

  Future<void> _pickFiles() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf', 'doc', 'docx', 'png', 'jpg', 'jpeg'],
      );

      if (result != null) {
        setState(() {
          _selectedFiles = result.files;
        });
      }
    } catch (e) {
      print('Error picking files: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cardTextColor.withOpacity(0.2),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.83,
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Payment Method',
                        style: TextStyle(
                            color: AppColors.headerTextColor, fontSize: 16),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                      ),
                      const Icon(
                        Icons.lock,
                        size: 15,
                        color: AppColors.cardTextColor,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Secure Server',
                        style: TextStyle(
                            fontSize: 12, color: AppColors.cardTextColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.63,
                    width: MediaQuery.of(context).size.width * 0.37,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.cardTextColor.withOpacity(0.2))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 7,
                                child: Icon(
                                  Icons.circle_rounded,
                                  size: 10,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.currency_bitcoin_rounded,
                                        color: Colors.amber,
                                        size: 30,
                                      ),
                                      Text('itcoin',
                                          style: TextStyle(
                                              color: AppColors.headerTextColor,
                                              fontSize: 18)),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Safe crypto transfer, discover seamless payments!',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.cardTextColor),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),

                                Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Lottie.network(
                      'https://lottie.host/5772f2eb-f18a-4bae-b18c-4516156337bc/AzgrQKC4YC.json',
                      repeat: true,
                      reverse: false,
                      animate: true,
                    ),
                  ),

                              
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.32,
                            height: MediaQuery.of(context).size.height * 0.08,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                          width: 2,
                                          color: AppColors.fillAndBorderColor)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                          width: 2,
                                          color: AppColors.fillAndBorderColor)),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'Enter amount \$',
                                  hintStyle: const TextStyle(
                                    color: AppColors.cardTextColor,
                                    fontSize: 12,
                                  ),
                                  suffixIcon: const Icon(
                                    Icons.credit_score,
                                    color: AppColors.iconColor,
                                  )),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              FlutterClipboard.copy(
                                  'bcqfjj2334kkvvkfvfkjf855848054vjvmvmfjfkgkfkfkdkd888839');
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: const Text(
                                    'Text copied to clipboard!',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor:
                                      Colors.lightGreen.withOpacity(0.5),
                                  dismissDirection: DismissDirection.vertical,
                                  duration: Durations.medium2,
                                ),
                              );
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.32,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: AppColors.cardTextColor
                                          .withOpacity(0.2),
                                      width: 1)),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'bcqfjj2334kkvvkfvfkjf855848054vjvmvmfjfkgkfkfkdkd888839',
                                      style: TextStyle(
                                        color: AppColors.headerTextColor
                                            .withOpacity(0.7),
                                        fontSize: 12,
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    Icon(
                                      Icons.copy,
                                      color: AppColors.headerTextColor
                                          .withOpacity(0.7),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          ElevatedButton(
                            onPressed: _pickFiles,
                            child: const Text(
                              'Upload Receipt',
                              style: TextStyle(
                                  fontSize: 12, color: AppColors.cardTextColor),
                            ),
                          ),
                          const SizedBox(height: 10),
                          if (_selectedFiles != null)
                            Row(
                              children: _selectedFiles!.map((file) {
                                return Text(
                                  'File Name: ${file.name} & File Size: ${file.size} bytes',
                                  style: const TextStyle(
                                      fontSize: 12,
                                      color: AppColors.cardTextColor),
                                );
                              }).toList(),
                            ),
                          const SizedBox(height: 15),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.1,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.mainColor),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Submit',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 10,),


                  
                ],
              ),
              Column(
                children: [
                
                  Image(
                      height: MediaQuery.of(context).size.height * .7,
                      image:
                          const AssetImage('lib/assets/images/very bit.png')),
                  
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}