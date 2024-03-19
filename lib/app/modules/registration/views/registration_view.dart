import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himaforka/app/widgets/custom_elevated_button.dart';
import 'package:himaforka/app/widgets/custom_text_field.dart';
import 'package:himaforka/app/widgets/footer/footer.dart';

import '../controllers/registration_controller.dart';

class RegistrationView extends GetView<RegistrationController> {
  const RegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(RegistrationController());
    return Scaffold(
      body: Obx(
        () => controller.isRegistered.value
            ? StatusCard(statusCode: controller.statusRegistration.value)
            : SectionFormRegistration(controller: controller),
      ),
    );
  }
}

class SectionFormRegistration extends StatelessWidget {
  const SectionFormRegistration({
    super.key,
    required this.controller,
  });

  final RegistrationController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: 1400),
            margin: const EdgeInsets.fromLTRB(20, 50, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Sebelum Anda mulai mengisi formulir pendaftaran, kami ingin memberikan beberapa petunjuk penting. Mohon luangkan waktu untuk membaca setiap pertanyaan dengan teliti dan memastikan jawaban yang Anda berikan akurat. Pastikan data yang Anda masukkan sesuai dengan informasi yang benar dan terkini. Kesalahan atau ketidaktepatan dalam pengisian formulir dapat berdampak pada proses pendaftaran Anda. Terima kasih atas perhatian dan kerjasamanya.",
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Form Pendaftaran",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                Form(
                  key: controller.registrationKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TwoColumnTextField(
                        label: "Nama",
                        hint: "John Doe",
                        validator: controller.validateForm,
                        controller: controller.nameController,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: TwoColumnTextField(
                              label: "Nim",
                              hint: "2054***12",
                              validator: controller.validateForm,
                              controller: controller.nimController,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            flex: 2,
                            child: TwoColumnDropDown(
                              label: "Kelas",
                              items: const [
                                '1',
                                '2',
                                '3',
                              ],
                              validator: controller.validateForm,
                              hint: "1",
                              onChange: controller.setClass,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: TwoColumnTextField(
                              label: "Tempat",
                              hint: "Klaten",
                              validator: controller.validateForm,
                              controller: controller.placeController,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            flex: 2,
                            child: TwoColumnTextField(
                              label: "Tanggal Lahir",
                              hint: "05 Januari 2003",
                              validator: controller.validateForm,
                              controller: controller.dateOfBirthController,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: TwoColumnDropDown(
                              label: "Agama",
                              items: const [
                                'Islam',
                                'Kristen',
                                'Hindu',
                                'Buddha',
                              ],
                              validator: controller.validateForm,
                              hint: "Islam",
                              onChange: controller.setReligion,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            flex: 3,
                            child: TwoColumnTextField(
                              label: "Email",
                              hint: "John.doe@email.com",
                              validator: controller.validateForm,
                              controller: controller.emailController,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: TwoColumnTextField(
                              label: "Nomor HP",
                              hint: "089***485424",
                              validator: controller.validateForm,
                              controller: controller.phoneNumberController,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            flex: 3,
                            child: TwoColumnDropDown(
                              label: "Jenis Kelamin",
                              items: const [
                                'Laki-laki',
                                'Perempuan',
                              ],
                              validator: controller.validateForm,
                              hint: "Laki-laki",
                              onChange: controller.setGender,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Obx(() {
                        return Row(
                          children: [
                            SizedBox(
                              height: 150,
                              width: 270,
                              child: Stack(
                                children: [
                                  controller.pickedImageInBytes.value != null &&
                                          controller.pickedImageInBytes.value !=
                                              null
                                      ? ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Image.memory(
                                            controller
                                                .pickedImageInBytes.value!,
                                            width: double.infinity,
                                            height: double.infinity,
                                            fit: BoxFit.cover,
                                          ),
                                        )
                                      : Container(
                                          width: double.infinity,
                                          height: double.infinity,
                                          padding: const EdgeInsets.all(20.0),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey, width: 1.2),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.image,
                                                size: 48.0,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              const SizedBox(height: 10.0),
                                              Text(
                                                'Upload Foto KTM',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge,
                                              ),
                                            ],
                                          ),
                                        ),
                                  Positioned.fill(
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        onTap: () {
                                          controller.pickImage();
                                        },
                                        onHover: (value) =>
                                            controller.isHover.value = value,
                                        child: controller.isHover.value
                                            ? Container(
                                                alignment: Alignment.center,
                                                child: controller
                                                                .pickedImageInBytes
                                                                .value !=
                                                            null &&
                                                        controller
                                                                .pickedImageInBytes
                                                                .value !=
                                                            null
                                                    ? Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Icon(
                                                            Icons.camera_alt,
                                                            size: 36,
                                                            color: Colors.white
                                                                .withOpacity(
                                                                    .8),
                                                          ),
                                                          const SizedBox(
                                                              height: 5.0),
                                                          Text(
                                                            'Ganti Foto KTM',
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyMedium
                                                                ?.copyWith(
                                                                    color: Colors
                                                                        .white
                                                                        .withOpacity(
                                                                            .8)),
                                                          ),
                                                        ],
                                                      )
                                                    : null,
                                              )
                                            : Container(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        );
                      }),
                      const SizedBox(
                        height: 40,
                      ),
                      Obx(
                        () => CustomElevatedButton(
                          text: "Daftar",
                          onPressed: () => controller.register(),
                          width: 250,
                          height: 55,
                          isLoading: controller.isLoading.value,
                          loadingIndicator: true,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 130,
          ),
          const SectionFooter()
        ],
      ),
    );
  }
}

class TwoColumnDropDown extends StatelessWidget {
  const TwoColumnDropDown({
    super.key,
    required this.label,
    required this.items,
    required this.validator,
    required this.hint,
    required this.onChange,
  });

  final String label;
  final String hint;
  final List<String> items;
  final String? Function(String?) validator;
  final String? Function(String?) onChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField2<String>(
          isExpanded: true,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFF162D3A),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          hint: Text(
            hint,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: Colors.black.withOpacity(.3)),
          ),
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
              .toList(),
          validator: validator,
          onChanged: onChange,
          buttonStyleData: const ButtonStyleData(
            padding: EdgeInsets.only(right: 8),
          ),
          iconStyleData: const IconStyleData(
            icon: Icon(
              Icons.arrow_drop_down,
              color: Colors.black45,
            ),
            iconSize: 24,
          ),
          dropdownStyleData: DropdownStyleData(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          menuItemStyleData: const MenuItemStyleData(
            padding: EdgeInsets.symmetric(horizontal: 16),
          ),
        ),
      ],
    );
  }
}

class TwoColumnTextField extends StatelessWidget {
  const TwoColumnTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.validator,
    required this.controller,
    this.obsecureText = false,
  });

  final TextEditingController controller;
  final String label;
  final String hint;
  final bool obsecureText;
  final String? Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 8),
        CustomTextField(
          keyboardType: TextInputType.text,
          hintText: hint,
          validator: validator,
          controller: controller,
          obscureText: obsecureText,
        ),
      ],
    );
  }
}

class StatusCard extends StatelessWidget {
  final int statusCode;

  const StatusCard({super.key, required this.statusCode});

  String getStatusText() {
    switch (statusCode) {
      case 1:
        return 'Menunggu';
      case 2:
        return 'Diterima';
      case 3:
        return 'Tidak Diterima';
      default:
        return 'Unknown';
    }
  }

  IconData getStatusIcon() {
    switch (statusCode) {
      case 1:
        return Icons.hourglass_empty;
      case 2:
        return Icons.check_circle;
      case 3:
        return Icons.cancel;
      default:
        return Icons.help;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Container(
          width: 300,
          constraints: const BoxConstraints(maxHeight: 300),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                getStatusIcon(),
                color: Colors.black,
                size: 50,
              ),
              const SizedBox(height: 20),
              Text(
                'Status Pendaftaran:',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 10),
              Text(
                getStatusText(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
