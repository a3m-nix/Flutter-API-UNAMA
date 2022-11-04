import 'package:get/get.dart';

import '../modules/ProfilForm/bindings/profil_form_binding.dart';
import '../modules/ProfilForm/views/profil_form_view.dart';
import '../modules/SiswaForm/bindings/siswa_form_binding.dart';
import '../modules/SiswaForm/views/siswa_form_view.dart';
import '../modules/SiswaList/bindings/siswa_list_binding.dart';
import '../modules/SiswaList/views/siswa_list_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.REGISTER;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.PROFIL_FORM,
      page: () => const ProfilFormView(),
      binding: ProfilFormBinding(),
    ),
    GetPage(
      name: _Paths.SISWA_LIST,
      page: () => const SiswaListView(),
      binding: SiswaListBinding(),
    ),
    GetPage(
      name: _Paths.SISWA_FORM,
      page: () => const SiswaFormView(),
      binding: SiswaFormBinding(),
    ),
  ];
}
