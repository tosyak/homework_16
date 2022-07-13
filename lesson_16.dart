import 'dart:io';

void main() {
   gameMenu();
}

class Qurrency {
  double usd = 84.71;
  double eur = 93.33;
  double rub = 1.46;
  double kzt = 0.22;
}

class Buy extends Qurrency {
  int amount;
  int qurrency;

  Buy(this.amount, this.qurrency);

  double? buyForeignQurrency() {
    switch (qurrency) {
      case 1:
        return usd * amount;
      case 2:
        return eur * amount;
      case 3:
        return rub * amount;
      case 4:
        return kzt * amount;
      default:
        print('error');
    }
  }
}

class Sell extends Qurrency {
  int amount;
  int qurrency;

  Sell(this.amount, this.qurrency);

  double? sellForeignQurrency() {
    switch (qurrency) {
      case 1:
  
        return amount / usd;
      case 2:
        return amount / eur;
      case 3:
        return amount / rub;
      case 4:
        return amount / kzt;
      default:
        print('error');
    }
  }
}

gameMenu() {
  stdout.write(
      'Input: \n 1 - if you want to buy foreign qurrency \n 2 - if you want to sell foreign qurrency \n');
  var operationOption = stdin.readLineSync();

  switch (operationOption) {
    case '1':
      stdout.write(
          'What qurrency would you like to change \n usd \n eur \n rub \n kzt \n');
      var countryOption = stdin.readLineSync();
      stdout.write('How much $countryOption do you want to change \n');
      var amount = int.parse(stdin.readLineSync()!);
      switch (countryOption) {
        case 'usd':
          Buy som = Buy(amount, 1);
          print('you bought ${som.buyForeignQurrency()} som');
          break;
        case 'eur':
          Buy som = Buy(amount, 2);
          print('you bought ${som.buyForeignQurrency()} som');
          break;
        case 'rub':
          Buy som = Buy(amount, 3);
          print('you bought ${som.buyForeignQurrency()} som');
          break;
        case 'kzt':
          Buy som = Buy(amount, 4);
          print('you bought ${som.buyForeignQurrency()} som');
          break;
        default:
          print('no such qurrency');
          gameMenu();
      }
      break;

    case '2':
      stdout.write(
          'What qurrency would you like to change \n usd \n eur \n rub \n kzt \n');
      var countryOption = stdin.readLineSync();
      stdout.write('How much som do you want to buy \n');
      var amount = int.parse(stdin.readLineSync()!);
      switch (countryOption) {
        case 'usd':
          Sell som = Sell(amount, 1);
          print('you bougth ${som.sellForeignQurrency()} usd');
          break;
        case 'eur':
          Sell som = Sell(amount, 2);
          print('you bougth ${som.sellForeignQurrency()} eur');
          break;
        case 'rub':
          Sell som = Sell(amount, 3);
          print('you bougth ${som.sellForeignQurrency()} rub');
          break;
        case 'kzt':
          Sell som = Sell(amount, 4);
          print('you bougth ${som.sellForeignQurrency()} kzt');
          break;
        default:
          print('no such qurrency');
          gameMenu();
      }

      break;
    default:
      print('something went wrong, try one more time');
      gameMenu();
  }
}
























// class Hamburger {
//   String hamburgerType;
//   String? cheese;
//   String? salat;
//   String? potato;
//   Hamburger({
//     required this.hamburgerType,
//     this.cheese,
//     this.salat,
//     this.potato,
//   });
//   getHamburgerType() {
//     if (hamburgerType == 'Маленький') {
//       miniHamburger();
//     } else if (hamburgerType == 'Большой') {
//       hamburger();
//     } else {
//       print('Такого бургера нет в меню');
//     }
//   }
//   miniHamburger() {
//     int sum = 50;
//     int callory = 20;
//     if (cheese == "Сыр") {
//       sum += 10;
//       callory += 20;
//     } else if (cheese != null) {
//       print('Добавки $cheese нет в меню');
//     }
//     if (salat == 'Салат') {
//       sum += 20;
//       callory += 5;
//     } else if (salat != null) {
//       print('Добавки $salat нет в меню');
//     }
//     if (potato == 'Картошка') {
//       sum += 15;
//       callory += 10;
//     } else if (potato != null) {
//       print('Добавки $potato нет в меню');
//     }
//     print('Сумма: $sum, Калорийность: $callory');
//   }
//   hamburger() {}
// }