class PasswordModel {
  double length ;
  bool includeNumbers ;
  bool includeLetters ;
  bool includeSymbols ;
  String password  ;

  PasswordModel({
    required this.length,
    required this.includeNumbers,
    required this.includeLetters,
    required this.includeSymbols,
    required this.password
  });
}