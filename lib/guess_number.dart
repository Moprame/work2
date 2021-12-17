// top-level function
import 'dart:io';
import 'dart:math';

void main() {
  var random = Random();
  var answer = random.nextInt(100);
  int guesscount = 0;
  print('╔══════════════════════════════════════════');
  print('║             GUESS THE NUMBER             ');
  print('║──────────────────────────────────────────');
  while(true){
    stdout.write("║ Guess the number between 1 - 100 : ");
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == answer) {
      stdout.write('║ ➜ $guess is CORRECT ❤, ');
      guesscount++;
      break;
    }
    else if(guess==null){
      guess = int.tryParse(input);
    }else if(guess>100 || guess<=0 ){
      guess = int.tryParse(input);
    }
    else{
      if (guess > answer) {
        print('║ ➜ TRY AGAIN!, $guess is TOO HIGH! ▲');
        print('║──────────────────────────────────────────');
        guesscount++;
      } else if (guess < answer) {
        print('║ ➜ TRY AGAIN!, $guess is TOO LOW! ▼');
        print('║──────────────────────────────────────────');
        guesscount++;
      }
    }
  }

  if (guesscount >= 1) {
    print('Total guesses: $guesscount');
    print('║──────────────────────────────────────────');
  }
  print('║                 THE END                  ');
  print('╚══════════════════════════════════════════');
}