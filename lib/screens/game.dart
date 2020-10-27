// Program Consist of Game Logic
List<int> deck = new List(5);

assignCardNo(
    List<int> deck) //Assign of Cards with unique nos. & add them to List
{
  deck.add(101); //Ace of clover & family of clover
  deck.add(102);
  deck.add(103);
  deck.add(104);
  deck.add(105);
  deck.add(106);
  deck.add(107);
  deck.add(108);
  deck.add(109);
  deck.add(110);
  deck.add(111);
  deck.add(112);
  deck.add(113);
  //diamonds
  deck.add(201);
  deck.add(202);
  deck.add(203);
  deck.add(204);
  deck.add(205);
  deck.add(206);
  deck.add(207);
  deck.add(208);
  deck.add(209);
  deck.add(210);
  deck.add(211);
  deck.add(212);
  deck.add(213);
  //Hearts
  deck.add(301);
  deck.add(302);
  deck.add(303);
  deck.add(304);
  deck.add(305);
  deck.add(306);
  deck.add(307);
  deck.add(308);
  deck.add(309);
  deck.add(310);
  deck.add(311);
  deck.add(312);
  deck.add(313);
  //spade
  deck.add(401);
  deck.add(402);
  deck.add(403);
  deck.add(404);
  deck.add(405);
  deck.add(406);
  deck.add(407);
  deck.add(408);
  deck.add(409);
  deck.add(410);
  deck.add(411);
  deck.add(412);
  deck.add(413);
  deck.removeAt(0);
}

assignImages(no) //Assign of card no. with images.
{
  switch (no) {
    //Clover
    case 101:
      return 'assets/images/ac.png';
      break;
    case 102:
      return 'assets/images/c2.png';
      break;
    case 103:
      return 'assets/images/c3.png';
      break;
    case 104:
      return 'assets/images/c4.png';
      break;
    case 105:
      return 'assets/images/c5.png';
      break;
    case 106:
      return 'assets/images/c6.png';
      break;
    case 107:
      return 'assets/images/c7.png';
      break;
    case 108:
      return 'assets/images/c8.png';
      break;
    case 109:
      return 'assets/images/c9.png';
      break;
    case 110:
      return 'assets/images/c10.png';
      break;
    case 111:
      return 'assets/images/jc.png';
      break;
    case 112:
      return 'assets/images/qc.png';
      break;
    case 113:
      return 'assets/images/kc.png';
      break;
    //Switch Case for Diamonds
    case 201:
      return 'assets/images/ad.png';
      break;
    case 202:
      return 'assets/images/d2.png';
      break;
    case 203:
      return 'assets/images/d3.png';
      break;
    case 204:
      return 'assets/images/d4.png';
      break;
    case 205:
      return 'assets/images/d5.png';
      break;
    case 206:
      return 'assets/images/d6.png';
      break;
    case 207:
      return 'assets/images/d7.png';
      break;
    case 208:
      return 'assets/images/d8.png';
      break;
    case 209:
      return 'assets/images/d9.png';
      break;
    case 210:
      return 'assets/images/d10.png';
      break;
    case 211:
      return 'assets/images/jd.png';
      break;
    case 212:
      return 'assets/images/qd.png';
      break;
    case 213:
      return 'assets/images/kd.png';
      break;
    //Hearts
    case 301:
      return 'assets/images/ah.png';
      break;
    case 302:
      return 'assets/images/h2.png';
      break;
    case 303:
      return 'assets/images/h3.png';
      break;
    case 304:
      return 'assets/images/h4.png';
      break;
    case 305:
      return 'assets/images/h5.png';
      break;
    case 306:
      return 'assets/images/h6.png';
      break;
    case 307:
      return 'assets/images/h7.png';
      break;
    case 308:
      return 'assets/images/h8.png';
      break;
    case 309:
      return 'assets/images/h9.png';
      break;
    case 310:
      return 'assets/images/h10.png';
      break;
    case 311:
      return 'assets/images/jh.png';
      break;
    case 312:
      return 'assets/images/qh.png';
      break;
    case 313:
      return 'assets/images/kh.png';
      break;
    //spade
    case 401:
      return 'assets/images/as.png';
      break;
    case 402:
      return 'assets/images/s2.png';
      break;
    case 403:
      return 'assets/images/s3.png';
      break;
    case 404:
      return 'assets/images/s4.png';
      break;
    case 405:
      return 'assets/images/s5.png';
      break;
    case 406:
      return 'assets/images/s6.png';
      break;
    case 407:
      return 'assets/images/s7.png';
      break;
    case 408:
      return 'assets/images/s8.png';
      break;
    case 409:
      return 'assets/images/s9.png';
      break;
    case 410:
      return 'assets/images/s10.png';
      break;
    case 411:
      return 'assets/images/js.png';
      break;
    case 412:
      return 'assets/images/qs.png';
      break;
    case 413:
      return 'assets/images/ks.png';
      break;
  }
}

dealSingle() // To Deal a Card from Deck
{
  int i = 0;
  String img = 'assets/images/deck.png';
  int ord = deck[0];
  img = assignImages(ord);
  i++;
  return img;
}

deckShuffle() // To Shuffle All Cards
{
  deck.shuffle();
}

Future<int> assignValue() //Calc of Total card Value of User
async {
  var a1 = deck[0];
  var a2 = deck[1];
  var a3 = deck[2];
  var a4 = deck[3];
  var a5 = deck[4];
  var value = 0, tot = 0;
  //Loop for Clover
  for (int x = 101; x <= 113; x++) {
    int x1 = x;
    if (x1 > 109) {
      x1 = 10;
    }
    if (a1 == x) {
      value = value + x1;
    } else if (a2 == x) {
      value = value + x1;
    } else if (a3 == x) {
      value += x1;
    } else if (a4 == x) {
      value += x1;
    } else if (a5 == x) {
      value += x1;
    }
  }
  //Loop for Diamonds
  for (var x = 201; x <= 213; x++) {
    var x1 = x;
    if (x1 > 209) {
      x1 = 10;
    }
    if (a1 == x) {
      value = value + x1;
    } else if (a2 == x) {
      value = value + x1;
    } else if (a3 == x) {
      value += x1;
    } else if (a4 == x) {
      value += x1;
    } else if (a5 == x) {
      value += x1;
    }
  }
  //Loop for Hearts
  for (var x = 301; x <= 313; x++) {
    var x1 = x;
    if (x1 > 309) {
      x1 = 10;
    }
    // ignore: unrelated_type_equality_checks
    if (a1 == x) {
      value = value + x1;
    } else if (a2 == x) {
      value = value + x1;
    } else if (a3 == x) {
      value += x1;
    } else if (a4 == x) {
      value += x1;
      // ignore: unrelated_type_equality_checks
    } else if (a5 == x) {
      value += x1;
    }
  }
  //Loop for Spade
  for (var x = 401; x <= 413; x++) {
    var x1 = x;
    if (x1 > 409) {
      x1 = 10;
    }
    if (a1 == x) {
      value = value + x1;
    } else if (a2 == x) {
      value = value + x1;
    } else if (a3 == x) {
      value += x1;
    } else if (a4 == x) {
      value += x1;
    } else if (a5 == x) {
      value += x1;
    }
  }
  tot = value % 100; //To get last two digit
  return (tot);
}
