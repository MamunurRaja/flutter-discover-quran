List religionListNames(){
  List religionNames=[
    'Islam','Hindu','Christian','Buddist','Jain','Sick','Athiest'
  ];
  return religionNames;
}

String setReligion(String religionName){
  switch(religionName){
    case "Islam":{return  "muslim.php";}
    break;
    case "Christian":{return "christianity.php";}
    break;
    default: { return "Nothing"; }
    break;
  }
}