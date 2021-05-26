List languageListNames(){
  List languageList=[
    'English','Hindi','Urdu','Bengali','Nepali','Marathi','Panjabi'
  ];
  return languageList;
}

String setLanguage(String lanName){
  switch(lanName){
    case "Bengali":{return "bn";}
    break;
    case "English":{return "en";}
    break;
    default: { return "Nothing"; }
    break;
  }
}