public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String sWord){
  String xD = reverse(sWord);
  if ((reverse(sWord)).equals(reverse(xD)))
  return true;
  return false;

}

public String reverse(String sWord){
  String mrHoff = sWord;
  String bobs = "";
  noSpaces(mrHoff);
  onlyLetters(mrHoff);
  noCapitals(mrHoff);
  for (int i=mrHoff.length()-1;i>=0;i--){
    bobs= bobs + mrHoff.substring(i,i+1);
  }
  return bobs;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public String noSpaces(String sWord){
  String ra = "";
  for (int i=0; i<sWord.length(); i++){
    if (sWord.substring(i,i+1).equals(" "))
      i=i;
    else 
    ra = ra + sWord.substring(i,i+1);
    
  }
  return ra;
}

public String onlyLetters(String sString){
  String rasputin ="";
  for (int i=0;i<sString.length();i++){
    if (Character.isLetter(sString.charAt(i)))
      rasputin = rasputin + sString.substring(i,i+1);
  }
  return rasputin;
}
