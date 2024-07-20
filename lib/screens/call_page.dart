import 'package:flutter/material.dart';
import 'package:flutter_video_call/constants/current_user.dart';
import 'package:flutter_video_call/screens/secret.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

import '../constants/routes.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {

  @override
  Widget build(BuildContext context) {

    //write it here
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, String>{}) as Map<String, String>;
    final callID = arguments[PageParam.callID] ?? '';

    return  SafeArea(
        child: ZegoUIKitPrebuiltCall(
            appID: 108291923,
            //i used my own app sign key here
            appSign: key,
            callID:callID ,
            userID: currentUser.id,
            userName: currentUser.name,
            config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
        ));
  }
}