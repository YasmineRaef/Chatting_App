import 'package:chat_app/presentation/auth/base/controller.dart';
import 'package:get/get.dart';

class SignInController extends AuthController {
  SignInController() : super(["name", "password"]);

  @override
  Future<bool> authenticate() async {
    if (!formKey.currentState!.validate()) return false;

    try {
      await Future.delayed(const Duration(seconds: 1));
      return true;
    } catch (e) {
      Get.snackbar("Error", "Sign-in failed: ${e.toString()}");
      return false;
    }
  }
}
