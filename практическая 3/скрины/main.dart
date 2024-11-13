import 'dart:math';

void main() {
  Random r = Random();
  
  List<String> charsArray = ['+','-', '/', '*'];
  
  String randomChar = charsArray[r.nextInt(4)];
  
  double n1 = r.nextDouble() * 100;
  double n2 = r.nextDouble() * 100;
  
  double? res;
  
  switch (randomChar) {
    case '+':
      res = n1 + n2;
      break;
    
    case '-':
      res = n1 - n2;
      break;
    
    case '/':
      if (n2 == 0.0){
        print('Err n2 = $n2');
      }
      
      res = n1 / n2;
      break;
      
    case '*':
      res = n1 * n2;
      break;
  }
  
  print('$n1 $randomChar $n2 = $res');
}