import 'package:talikhat_clone/exports.dart';
import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            // height: MediaQueryHelpers.responsiveHeight(0.4),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.primary.withOpacity(.4),
                  Colors.white,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  SvgPicture.asset(
                    "assets/images/qr.svg",
                    height: 200,
                    width: 200,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "সুপার QR - এ পেমেন্ট নিন বিকাশ, রকেট সহ\nসকল ব্যাংক আ্যপ থেকে",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "লগ ইন/ রেজিস্ট্রেশন করুন",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        labelText: "মোবাইল নাম্বার",
                        hintText: "01XXXXXXXXX",
                        prefixIcon: Icons.phone,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                          text: TextSpan(
                        text: "রেজিস্ট্রেশন করতে আপনার ",
                        style: TextStyle(
                            color: Colors.black.withOpacity(.5),
                            fontWeight: FontWeight.w500),
                        children: [
                          TextSpan(
                            text: "NID দিয়ে নিবন্ধিত মোবাইল নাম্বার",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: " ব্যবহার করুন।",
                            style: TextStyle(
                                color: Colors.black.withOpacity(.5),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )),
                    ],
                  ),
                  Column(children: [
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          padding: EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          "পরবর্তী",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: "পরবর্তী বোতামে ক্লিক করলে আপনি আমাদের ",
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: "শর্তাবলী",
                              style: TextStyle(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: " ও ",
                              style: TextStyle(color: Colors.black),
                            ),
                            TextSpan(
                              text: "গোপনীয়তা নীতি",
                              style: TextStyle(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: " মেনে নিচ্ছেন।",
                              style: TextStyle(color: Colors.black),
                            ),
                          ]),
                    ),
                    SizedBox(height: 30),
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
