analyserLettre(String lettre) {
  protocoleAlpha(lettre);
  protocoleBeta(lettre);
  protocoleGamma(lettre);
  protocoleDelta(lettre);
}

void protocoleAlpha(String texte) {
  int longueur = texte.length;
  print("La longueur du texte est de: $longueur");
  texte = texte.replaceAll(RegExp(r'\s+'), '');
  texte = texte.replaceAll(RegExp(r'\n\s*\n'), '\n');
  List lettreList = texte.split(" ");
  Map<String, int> recurrenteList = {};
  for (String mot in lettreList) {
    if (!recurrenteList.containsKey(mot)) {
      int nbre = lettreList.where((word) => word == mot).length;
      if (nbre > 1) {
        recurrenteList.addAll({mot: nbre});
      }
    }
  }
  recurrenteList.forEach((mot, nbre) => print("$mot => $nbre"));
}

void protocoleBeta(String texte) {
  String motRenverse = texte.split('').reversed.join();
  print("Le mot renversé par l'effet miroir donne: $motRenverse");
  String motRemplace = texte.replaceAllMapped(RegExp(r'\b[Aa]gent\b'), (match) {
    String motDepart = match.group(0)!;
    if (motDepart[0] == motDepart[0].toLowerCase()) {
      return "espion";
    } else {
      return "Espion";
    }
  });
  print("Les ocurences remplacés donneront: $motRemplace");
}

void protocoleGamma(String texte) {
  if (texte.startsWith('Cher')) {
print ("Le texte débute par Cher");
} 
else {
print ("Le texte ne débute pas par Cher");
}
if (texte.endsWith('Cordialement')){
  print ("Le texte finit par Cordialement ");
}
else{
  print("Le texte ne finit pas par Cordialement");
}
texte = texte.replaceAll(r'\s+\',' ' );
texte = texte.trimLeft();
texte = texte.trimRight();

}
  

void protocoleDelta (String texte){
  texte = texte.toLowerCase();
  texte = texte.toUpperCase();
   List texteList = texte.split("");
   for
}