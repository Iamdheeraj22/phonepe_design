import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:phonepe_design/Screens/pay/pay_screen.dart';
import 'package:phonepe_design/Screens/scan_pay/widgets/paid_person_widget.dart';
import 'package:phonepe_design/Utils/Colors.dart';
import 'package:phonepe_design/Utils/size_config.dart';
import 'package:phonepe_design/common/commmon_provider.dart';
import 'package:provider/provider.dart';
import 'package:vibration/vibration.dart';

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
    super.initState();
    Provider.of<CommonProviderModel>(context, listen: false)
        .cameraDescription();
  }

  @override
  Widget build(BuildContext context) {
    providerModel = Provider.of<CommonProviderModel>(context);
    _cameraController =
        CameraController(providerModel.cList[0], ResolutionPreset.ultraHigh);
    cameraValue = _cameraController.initialize();
    return Consumer<CommonProviderModel>(builder: (context, v, c) {
      return Scaffold(
        appBar: AppBar(
            elevation: 0.0,
            backgroundColor: primaryBlueColor,
            leading: BackButton(
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: const Text('Scan & Pay'),
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
                  return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: CameraPreview(_cameraController));
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }),
          Column(
            children: [
              Container(
                height: 165.h,
                width: MediaQuery.of(context).size.width,
                decoration:
                    const BoxDecoration(color: Color.fromARGB(132, 0, 0, 0)),
                child: Center(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15.h),
                      child: Text(
                        'Suggested',
                        style: TextStyle(color: Colors.white, fontSize: 15.sp),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    SizedBox(
                      height: 80.h,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: tempNames.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: index == 0
                                  ? EdgeInsets.only(left: 15.w, right: 10.w)
                                  : EdgeInsets.only(right: 10.w),
                              child: PaidPersonWidget(
                                  fullName: tempNames[index],
                                  onTap: () {
                                    Vibration.vibrate(duration: 200);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (builder) => PayScreen()));
                                  }),
                            );
                          }),
                    ),
                  ],
                )),
              ),
              const Spacer(),
              Row(
                children: [
                  Container(
                    height: 230.h,
                    width: 80.h,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(132, 0, 0, 0)),
                  ),
                  const Spacer(),
                  Container(
                    height: 230.h,
                    width: 80.h,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(132, 0, 0, 0)),
                  )
                ],
              ),
              const Spacer(),
              Container(
                height: 165.h,
                width: MediaQuery.of(context).size.width,
                decoration:
                    const BoxDecoration(color: Color.fromARGB(132, 0, 0, 0)),
              )
            ],
          ),
        ]),
      );
    });
  }
}
