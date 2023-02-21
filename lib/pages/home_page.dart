import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  static const String id ="home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get dismissMode => "Foydalanuvchi";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text("Modul 6 => Task 2", style: TextStyle(color: Colors.cyanAccent,fontSize: 30, fontWeight: FontWeight.bold),),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            const Text('Dialoglar turlari:', style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic),),
            const SizedBox(height: 20,),

            SizedBox(
                child: AnimatedButton(
                  text: "Ma'lumot dialogining o'zgarmas...",
                  pressEvent: () {
                    _showInfoDialog(context);
                  },
                  width: 400,
                  color: Colors.blue,
                  borderRadius: const BorderRadius.all(Radius.circular(30)
                  ),
                  buttonTextStyle: const TextStyle(fontSize: 20),
                )
            ),
            const SizedBox(height: 10,),

            SizedBox(
                child: AnimatedButton(
                  text: "Muloqot oynasidan ma'lumotlarni qaytarish",
                  pressEvent: ()  {
                    _showNoHeardDialog(context);
                  },
                  width: 400,
                  color: Colors.purple,
                  borderRadius: const BorderRadius.all(Radius.circular(30)
                  ),
                  buttonTextStyle: const TextStyle(fontSize: 20),
                )
            ),
            const SizedBox(height: 10,),

            SizedBox(
                child: AnimatedButton(
                  text: "Xato dialogi",
                  pressEvent: () {
                    _showErrorDialog(context);
                  },
                  width: 400,
                  color: Colors.red,
                  borderRadius: const BorderRadius.all(Radius.circular(30)
                  ),
                  buttonTextStyle: const TextStyle(fontSize: 20),
                )
            ),
            const SizedBox(height: 10,),

            SizedBox(
                child: AnimatedButton(
                  text:"Maxsus BTN uslubi bilan savol dialogi" ,
                  pressEvent: () {
                    _showQuestDialog(context);
                    },
                  width: 400,
                  color: Colors.orangeAccent,
                  borderRadius: const BorderRadius.all(Radius.circular(30)
                  ),
                  buttonTextStyle: const TextStyle(fontSize: 20,color: Colors.black),

                )
            ),
            const SizedBox(height: 10,),
            SizedBox(
                child: AnimatedButton(
                  text:"Sinov dialogi" ,
                  pressEvent: () {
                    _showWarningDialog(context);
                  },
                  width: 400,
                  color: Colors.green,
                  borderRadius: const BorderRadius.all(Radius.circular(30)
                  ),
                  buttonTextStyle: const TextStyle(fontSize: 20,color: Colors.white),

                )
            ),
            const SizedBox(height: 10,),

            SizedBox(
                child: AnimatedButton(
                  text:"Kirish bilan tanasi" ,
                  pressEvent: () {
                    _showScaleDialog(context);
                  },
                  width: 400,
                  color: Colors.cyan,
                  borderRadius: const BorderRadius.all(Radius.circular(30)
                  ),
                  buttonTextStyle: const TextStyle(fontSize: 20,color: Colors.white),

                )
            ),
            const SizedBox(height: 10,),

            SizedBox(
                child: AnimatedButton(
                  text:"Muvaffaqiyatli dialog" ,
                  pressEvent: () {
                    _showSuccessDialog(context);
                  },
                  width: 400,
                  color: Colors.lightGreenAccent,
                  borderRadius: const BorderRadius.all(Radius.circular(30)
                  ),
                  buttonTextStyle: const TextStyle(fontSize: 20,color: Colors.black),

                )
            ),
            const SizedBox(height: 10,),

            SizedBox(
                child: AnimatedButton(
                  text:"Sarlavhali dialog oynasi yo'q" ,
                  pressEvent: () {
                    _shownOHeaderDialog(context);
                  },
                  width: 400,
                  color: Colors.deepOrangeAccent,
                  borderRadius: const BorderRadius.all(Radius.circular(30)
                  ),
                  buttonTextStyle: const TextStyle(fontSize: 20,color: Colors.white),

                )
            ),
            const SizedBox(height: 10,),

            SizedBox(
                child: AnimatedButton(
                  text:"Maxsus tana dialogi" ,
                  pressEvent: () {
                    _showScale2Dialog(context);
                  },
                  width: 400,
                  color: Colors.blueAccent,
                  borderRadius: const BorderRadius.all(Radius.circular(30)
                  ),
                  buttonTextStyle: const TextStyle(fontSize: 20,color: Colors.white),

                )
            ),
            const SizedBox(height: 10,),



          ]
        ),
    )
    );
  }
  //=======================================



  _showInfoDialog(context){
    AwesomeDialog(
      context: context,
      dialogType: DialogType.infoReverse,
      borderSide: const BorderSide(
        color: Colors.green,
        width: 2,
      ),
      width: 280,
      buttonsBorderRadius: const BorderRadius.all(
        Radius.circular(2),
      ),
      dismissOnTouchOutside: true,
      dismissOnBackKeyPress: false,
      onDismissCallback: (type) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Foydalanuvchi Tomonidan ishdan bo'shatilgan"),
          ),
        );
      },
      headerAnimationLoop: false,
      animType: AnimType.bottomSlide,
      title: 'INFO',
      desc: "Ushbu dialog oynasini tashqariga tegizish bilan o'chirib qo'yish mumkin",
      showCloseIcon: true,
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    ).show();
  }

  _showNoHeardDialog(context) async {
     await AwesomeDialog(
      context: context,
      dialogType: DialogType.noHeader,
      buttonsBorderRadius: const BorderRadius.all(
        Radius.circular(2),
      ),
      animType: AnimType.rightSlide,
      title: "Ma'lumotni qaytarish",
      titleTextStyle: const TextStyle(
        fontSize: 25,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w600,
      ),
      desc: 'Dialog tavsifi bu yerda...',
      showCloseIcon: true,
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
      autoDismiss: false,
      onDismissCallback: (type) {
        Navigator.of(context).pop(type);
      },
      barrierColor: Colors.purple[900]?.withOpacity(0.54),
    ).show();

    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Foydalanuvchi tomonidan rad etilgan'),
        ),
    );
  }

  _showErrorDialog(context){
    AwesomeDialog(
      context: context,
      animType: AnimType.scale,
      dialogType: DialogType.error,
      body: const Center(child: Text(
        'Dialog tavsifi bu yerda...................',
        style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
      ),),
      title: 'ERROR',
      desc:   'This is also Ignored',
      btnOkOnPress: () {},
      btnOkIcon: Icons.cancel,
      btnOkColor: Colors.red,
    ).show();
  }

  _showQuestDialog(context){
    AwesomeDialog(
      context: context,
      dialogType: DialogType.question,
      headerAnimationLoop: false,
      animType: AnimType.topSlide,
      title: 'Savol',
      desc: 'Dialog tavsifi bu yerda...',
      buttonsTextStyle: const TextStyle(color: Colors.black),
      showCloseIcon: true,
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    ).show();
  }
  _showWarningDialog(context){
    AwesomeDialog(
      context: context,
      keyboardAware: true,
      dismissOnBackKeyPress: false,
      dialogType: DialogType.warning,
      animType: AnimType.bottomSlide,
      btnCancelText: "Buyurtmani bekor qilish",
      btnOkText: "Ha, men to'layman",
      title: "Toʻlash davom ettirilsinmi?",

      desc:
      "Iltimos, 30 daqiqa ichida 3000 SO'M to'lashingizni tasdiqlang. Buyurtmalarni to'lamasdan yaratish jarima to'lovlarini keltirib chiqaradi va hisobingiz o'chirib qo'yilishi mumkin.",
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    ).show();
  }

  _showScaleDialog(context){
    late AwesomeDialog dialog;
    dialog = AwesomeDialog(
      context: context,
      animType: AnimType.scale,
      dialogType: DialogType.info,
      keyboardAware: true,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text(
              "Shakl ma'lumotlari",
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(
              height: 10,
            ),
            Material(
              elevation: 0,
              color: Colors.blueGrey.withAlpha(40),
              child: TextFormField(
                autofocus: true,
                minLines: 1,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Sarlavha',
                  prefixIcon: Icon(Icons.text_fields),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Material(
              elevation: 0,
              color: Colors.blueGrey.withAlpha(40),
              child: TextFormField(
                autofocus: true,
                keyboardType: TextInputType.multiline,
                minLines: 2,
                maxLines: null,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Tavsif',
                  prefixIcon: Icon(Icons.text_fields),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            AnimatedButton(
              isFixedHeight: false,
              text: 'Yopish',
              pressEvent: () {
                dialog.dismiss();
              },
            )
          ],
        ),
      ),
    )..show();
  }

  _showSuccessDialog(context){
    AwesomeDialog(
      context: context,
      animType: AnimType.leftSlide,
      headerAnimationLoop: false,
      dialogType: DialogType.success,
      showCloseIcon: true,
      title: 'Succes',
      desc:
      'Dialog tavsifi bu yerda..................................................',
      btnOkOnPress: () {
        debugPrint('OnClcik');
      },
      btnOkIcon: Icons.check_circle,
      onDismissCallback: (type) {
        debugPrint('Dialog Dissmiss from callback $type');
      },
    ).show();
  }

  _shownOHeaderDialog(context){
    AwesomeDialog(
      context: context,
      headerAnimationLoop: false,
      dialogType: DialogType.noHeader,
      title: "Sarlavha yo'q",
      desc:
      'Dialog tavsifi bu yerda..................................................',
      btnOkOnPress: () {
        debugPrint('OnClcik');
      },
      btnOkIcon: Icons.check_circle,
    ).show();
  }

  _showScale2Dialog(context){
    AwesomeDialog(
      context: context,
      animType: AnimType.scale,
      dialogType: DialogType.info,
      body: const Center(
        child: Text(
          "Agar korpus ko'rsatilgan bo'lsa, sarlavha va tavsif e'tiborga olinmaydi, bu dialogni yanada sozlash imkonini beradi.",
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
      ),
      title: "Bu e'tiborga olinmaydi",
      desc: "Bu ham e'tiborga olinmaydi",
    ).show();

  }
}
