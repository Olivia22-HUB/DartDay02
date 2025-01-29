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
    print("Le texte débute par Cher");
  } else {
    print("Le texte ne débute pas par Cher");
  }
  if (texte.endsWith('Cordialement')) {
    print("Le texte finit par Cordialement ");
  } else {
    print("Le texte ne finit pas par Cordialement");
  }
  texte = texte.replaceAll(r'\s+\', ' ');
  texte = texte.trimLeft();
  texte = texte.trimRight();
}

void protocoleDelta(String texte) {
  String texteMinuscule = texte.toLowerCase();
  print(texteMinuscule);
  String texteMajuscule = texte.toUpperCase();
  print(texteMajuscule);
  if (texte.trim().length > 43) {
    print("La 43ème lettre est ${texte[42]}");
  } else {
    print("Le texte n'atteint pas 43 caractères");
  }
}

void protocoleSecurite(texte) {
  for (int i = 0; i <= texte.lenght; i++);
}

void main() {
  String lettre = """ Cher agent X,



J'ai aperçu le chat noir    au point de rendez-vous 7. L'agent Johnson était 

également présent.    Le code secret 42 a été activé.



Notre agent de liaison vous contactera à 23h.



    Cordialement""";

  analyserLettre(lettre);
}
