import 'package:flutter/material.dart';

final Map<String, String> enUs = {
  ...flashScreen,
  ...loginScreen,
  ...common,
};
Map<String, String> flashScreen = {
  'H_p_Flash': 'Welcome! Ebank X',
};
Map<String, String> loginScreen = {
  'input_lab_user': 'Account',
  'input_lab_pass': 'Password',
  'input_lab_show': 'Show',
  'input_lab_hide': 'Hide',
  'input_lab_bt_login': 'Log in',
  'input_lab_bt_fw': 'Forgot password',
  'input_lab_bt_ekyc': 'Register an account with eKYC',
};
Map<String, String> common = {
  'lbl_ok': 'Ok',
  'lbl_retry': 'RETRY',
  'lbl_oops': 'Ooops',
  'lbl_save': 'save',
  'lbl_cancel': 'Cancel',
  'lbl_error': 'Error',
  'lbl_success': 'Success',
  'lbl_skip': 'Skip',
  'lbl_skiplogin': 'Skip Login',
  'lbl_skipregister': 'Skip Registration',
};
