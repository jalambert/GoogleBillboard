public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
double sum = 0;
double count = 0;
public void setup() {
  String cut;
  double snip;
  for (int i = 2; i < e.length()-9; i++) {
    snip = Double.parseDouble(e.substring(i, i+10));
    if (isPrime(snip) == true) {
      System.out.println("The 1st 10 digit prime found in e is " + snip);
      break;
    }
  }
  for (int i = 2; i < e.length()-9; i++) {
    cut = e.substring(i, i+10);
    if (equals49(cut) == true) {
      count++;
      if (count == 5) {
        System.out.println("The 5th 10 digit number in e whose digits add up to 49 is " + cut);
        break;
      }
    }
  }
}  

public boolean isPrime(double dNum) {   
  for (int i = 2; i <= Math.sqrt(dNum); i ++) {
    if (dNum%i == 0) {
      return false;
    }
  } 
  return true;
} 

public boolean equals49(String num) {
  for (int i = 0; i < 10; i++) {
    sum += Double.parseDouble(num.substring(i, i+1));
  }
  if (sum == 49) {
    sum = 0;
    return true;
  }
  sum = 0;
  return false;
}

