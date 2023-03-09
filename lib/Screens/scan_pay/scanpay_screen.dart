import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:phonepe_design/Utils/Colors.dart';
import 'package:phonepe_design/Utils/size_config.dart';
import 'package:phonepe_design/common/commmon_provider.dart';
import 'package:provider/provider.dart';

class ScanPayScreen extends StatefulWidget {
  const ScanPayScreen({Key? key}) : super(key: key);
  @override
  State<ScanPayScreen> createState() => _ScanPayScreenState();
}

class _ScanPayScreenState extends State<ScanPayScreen> {
  late CameraController _cameraController;
  late Future<void> cameraValue;
  late CommonProviderModel providerModel;
  @override
  void dispose() {
    super.dispose();
    _cameraController.dispose();
  }

  @override
  void initState() {
    Provider.of<CommonProviderModel>(context).cameraDescription();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    providerModel = Provider.of<CommonProviderModel>(context);
    _cameraController =
        CameraController(providerModel.cList[0], ResolutionPreset.high);
    cameraValue = _cameraController.initialize();
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: primaryBlueColor,
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Notifications'),
          actions: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.r),
                  border: Border.all(color: Colors.white)),
              child: InkWell(
                borderRadius: BorderRadius.circular(100.h),
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.h),
                  child: Icon(
                    Icons.question_mark_outlined,
                    size: 10.h,
                  ),
                ),
              ),
            )
          ]),
      body: Stack(children: [
        FutureBuilder(
            future: cameraValue,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Container(
                    width: 300.w, child: CameraPreview(_cameraController));
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ]),
    );
  }
}
