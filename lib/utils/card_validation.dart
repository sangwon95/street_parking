
String cardValidation(String number1, String number2){

  switch(number1){
    case '3560': return 'BC';
    case '3616': return '현대';
    case '4162': return '하나';
    case '4481': return 'BC';
    case '3562':{
        if (number2 == '97') return '신한';
        break;
    }
    case '3568':{
      if (number2 == '20') return '우리'; break;
    }
    case '4009':{
      if (number2 == '12') return '삼성'; break;
    }
    case '4028':{
      if (number2 == '57') return '현대'; break;
    }
    case '4048':{
      if (number2 == '25') return 'BC'; break;
    }
    case '4023':{
      if (number2 == '67') return '하나'; break;
    }
    case '3751':{
      if (number2 == '44') return '국민'; break;
    }
    case '4089':{
      if (number2 == '66') return '하나'; break;
    }
    case '4057':{
      if (number2 == '53') return '신한'; break;
    }
    case '4101':{
      if (number2 == '09') return '씨티'; break;
    }
    case '4063':{
      if (number2 == '57') return '씨티'; break;
    }
    case '3759': {
      if(number2 == '87') return '삼성'; break;
    }
    case '4432': {
      if(number2 == '33') return 'LG'; break;
    }
    case '3799': {
      if(number2 == '83') return '신한'; break;
    }
    case '4046': {
      if(number2 == '78') return '신한'; break;
    }
    case '4140': {
      if(number2 == '25') return 'BC'; break;
    }
    case '4181': {
      if(number2 == '23') return '현대'; break;
    }
    case '4349': {
      if(number2 == '75') return '신한'; break;
    }
    case '4182': {
      if(number2 == '36') return '하나'; break;
    }
    case '4330': {
      if(number2 == '28') return '현대'; break;
    }
    case '4227': {
      if(number2 == '27') return '씨티'; break;
    }
    case '4386': {
      if(number2 == '76') return '신한'; break;
    }
    case '4400': {
      if(number2 == '25') return '하나'; break;
    }
    case '4332': {
      if(number2 == '90') return '국민'; break;
    }
    case '4364': {
      if(number2 == '20') return '신한'; break;
    }
    case '4473': {
      if(number2 == '20') return '우리'; break;
    }
    case '4324': {
      if(number2 == '45') return '수협'; break;
    }
    case '4404': {
      if(number2 == '46') return '씨티'; break;
    }
    case '4499': {
      if(number2 == '14') return '신한'; break;
    }
    case '3563': {
      if(number2 == '16' || number2 == '17') return '농협';
      return 'BC카드';
    }
    case '3565': {
      if(number2 == '16') return '농협';
      else if(number2 == '43'||number2 == '45') return '하나';
      return 'BC법인';
    }
    case '3564': {
      if(number2 == '07' || number2 == '15' || number2 == '16' || number2 == '17') return '국민';
      else if(number2 == '18') return '농협';
      break;
    }
    case '3569': {
      if(number2 == '00' || number2 == '01' || number2 == '02') return '신한';
      else if(number2 == '10' || number2 == '11' || number2 == '12') return '국민';
      else if(number2 == '14' || number2 == '15' || number2 == '16') return '롯데';
      break;
    }
    case '3710': {
      if(number2 == '01' || number2 == '02' || number2 == '03' || number2 == '92') return '하나';
      break;
    }
    case '3747': {
      if(number2 == '22' || number2 == '23' || number2 == '24') return '하나';
      break;
    }
    case '3762': {
      if(number2 == '72' || number2 == '77') return '롯데';
      break;
    }
    case '4554': {
      if(number2 == '37') return '하나';
      break;
    }
    case '3763': {
      if(number2 == '64') return '국민';
      break;
    }
    case '4605': {
      if(number2 == '61') return '신한';
      break;
    }
    case '4570': {
      if(number2 == '47') return '하나';
      break;
    }
    case '4585': {
      if(number2 == '32') return '삼성';
      break;
    }
    case '3779': {
      if(number2 == '69') return '하나';
      else if(number2 == '73') return '롯데';
      else if(number2 == '89') return '삼성';
      else if(number2 == '81' || number2 == '82' ||  number2 == '88') return '신한';
      break;
    }
    case '3791': {
      if(number2 == '83') return '삼성';
      else if(number2 == '92') return '하나';
      else if(number2 == '93') return '하나법인';
      break;
    }
    case '4214': {
      if(number2 == '17' || number2 == '18') return '수협';
      else if(number2 == '20') return '우리';
      else if(number2 == '68') return '롯데';
      break;
    }
    case '4017': {
      if(number2 == '62' || number2 == '87') return '현대';
      break;
    }
    case '4119': {
      if(number2 == '00' || number2 == '04' || number2 == '05') return '하나';
      break;
    }
    case '4221': {
      if(number2 == '55') return '신한';
      else if(number2 == '90') return '수협';
      break;
    }
    case '4512': {
      if(number2 == '45') return '삼성';
      else if(number2 == '81') return '현대';
      break;
    }
    case '4518': {
      if(number2 == '42' || number2 == '45') return '신한';
      break;
    }
    case '4579': {
      if(number2 == '72' || number2 == '73') return '국민';
      break;
    }
    case '4599': {
      if(number2 == '00' ||  number2 == '30'||  number2 == '50') return '하나';
      else if(number2 == '12') return '케이';
      else if(number2 == '52') return '광주';
      break;
    }

    case '9490': {
      if(number2 == '13' ||  number2 == '19'||  number2 == '28'||  number2 == '88'||  number2 == '97') return '현대';
      else if(number2 == '94') return '국민';
      break;
    }
    case '9410': {
      if(number2 == '09' ||  number2 == '29' ||  number2 == '34'||  number2 == '85'||  number2 == '88'||  number2 == '90') return '삼성';
      else if(number2 == '61' ||  number2 == '83'||  number2 == '98') return '신한';
      break;
    }
    case '9411': {
      if(number2 == '16' ||  number2 == '17') return '농협';
      else if(number2 == '61' ) return '신한';
      else if(number2 == '81') return '하나';
      break;
    }
    case '4619': {
      if(number2 == '54') return '신한';
      break;
    }
    case '4628': {
      if(number2 == '90') return '씨티';
      break;
    }
    case '4639': {
      if(number2 == '16') return '제주';
      break;
    }
    case '4649': {
      if(number2 == '42') return '삼성';
      else if(number2 == '59') return '롯데';
      break;
    }
    case '4658': {
      if(number2 == '87') return '신한';
      else if(number2 == '89') return '수협';
      break;
    }
    case '4670': {
      if(number2 == '08') return '롯데';
      break;
    }
    case '4705': {
      if(number2 == '87' || number2 == '88') return '삼성';
      break;
    }
    case '4743': {
      if(number2 == '60') return '씨티';
      break;
    }
    case '4854': {
      if(number2 == '62') return '케이';
      break;
    }
    case '4854': {
      if(number2 == '79') return '농협';
      break;
    }
    case '4854': {
      if(number2 == '79') return '농협';
      break;
    }
    case '4889': {
      if(number2 == '72') return '롯데';
      break;
    }
    case '4902': {
      if(number2 == '20') return '우리';
      break;
    }
    case '4934': {
      if(number2 == '55') return '하나';
      break;
    }
    case '4890': {
      if(number2 == '23') return '신한';
      break;
    }
    case '4870': {
      if(number2 == '33') return '신한';
      break;
    }
    case '5021': {
      if(number2 == '23') return '국민';
      break;
    }
    case '5107': {
      if(number2 == '37') return '신한';
      break;
    }
    case '5111': {
      if(number2 == '87') return '신한';
      break;
    }
    case '5123': {
      if(number2 == '60') return '삼성';
      break;
    }
    case '5124': {
      if(number2 == '62') return '롯데';
      break;
    }
    case '5137': {
      if(number2 == '92') return '롯데';
      break;
    }
    case '5148': {
      if(number2 == '76') return '씨티';
      break;
    }
    case '5155': {
      if(number2 == '94') return '신한';
      break;
    }
    case '5159': {
      if(number2 == '54') return '우리';
      break;
    }
    case '5165': {
      if(number2 == '74') return '하나';
      break;
    }
    case '5171': {
      if(number2 == '34') return '신한';
      break;
    }
    case '5181': {
      if(number2 == '85') return '하나';
      break;
    }
    case '5188': {
      if(number2 == '31') return '삼성';
      break;
    }
    case '5229': {
      if(number2 == '71') return '국민';
      break;
    }
    case '5238': {
      if(number2 == '30') return '하나';
      break;
    }
    case '5240': {
      if(number2 == '40' || number2 == '40') return '농협';
      break;
    }
    case '5241': {
      if(number2 == '44') return '씨티';
      break;
    }
    case '5241': {
      if(number2 == '44') return '씨티';
      break;
    }
    case '5242': {
      if(number2 == '42') return '하나';
      break;
    }
    case '5243': {
      if(number2 == '33') return '현대';
      else if(number2 == '35') return '하나';
      break;
    }
    case '5272': {
      if(number2 == '89') return '국민';
      break;
    }
    case '5310': {
      if(number2 == '70') return '삼성';
      break;
    }
    case '5318': {
      if(number2 == '38') return '하나';
      break;
    }
    case '5320': {
      if(number2 == '92') return '하나';
      break;
    }
    case '5327': {
      if(number2 == '50') return '토스';
      break;
    }
    case '5350': {
      if(number2 == '20') return '우리';
      break;
    }
    case '5365': {
      if(number2 == '10') return '카카오';
      break;
    }
    case '5371': {
      if(number2 == '20'|| number2 =='45') return '우리';
      break;
    }
    case '5381': {
      if(number2 == '59') return 'BC';
      break;
    }
    case '5381': {
      if(number2 == '59') return 'BC';
      break;
    }
    case '5387': {
      if(number2 == '20') return '우리';
      break;
    }
    case '5389': {
      if(number2 == '20') return '우리';
      break;
    }
    case '5404': {
      if(number2 == '47') return '삼성';
      break;
    }
    case '5409': {
      if(number2 == '26' || number2 == '47') return '국민';
      break;
    }
    case '5409': {
      if(number2 == '26') return '국민';
      break;
    }
    case '5430': {
      if(number2 == '00' || number2 == '17') return '농협';
      break;
    }
    case '5433': {
      if(number2 == '33') return '현대';
      break;
    }
    case '5421': {
      if(number2 == '58') return '신한';
      break;
    }
    case '5424': {
      if(number2 == '16') return '농협';
      break;
    }
    case '5428': {
      if(number2 == '79') return '신한';
      break;
    }
    case '5461': {
      if(number2 == '12') return '농협';
      break;
    }
    case '5462': {
      if(number2 == '52') return '하나';
      break;
    }
    case '5480': {
      if(number2 == '20') return '우리';
      break;
    }
    case '5520': {
      if(number2 == '70') return '삼성';
      break;
    }
    case '5522': {
      if(number2 == '20') return '우리';
      else if(number2 == '90') return '현대';
      break;
    }
    case '5522': {
      if(number2 == '20') return '우리';
      else if(number2 == '90') return '현대';
      break;
    }
    case '5523': {
      if(number2 == '77') return '현대';
      break;
    }
    case '5525': {
      if(number2 == '76') return '신한';
      break;
    }
    case '5531': {
      if(number2 == '77') return '하나';
      break;
    }
    case '5549': {
      if(number2 == '59') return '국민';
      break;
    }
    case '5570': {
      if(number2 == '42') return '국민';
      break;
    }
    case '5594': {
      if(number2 == '10') return '신한';
      break;
    }
    case '5599': {
      if(number2 == '24') return '현대';
      break;
    }
    case '5021': {
      if(number2 == '23') return '국민';
      break;
    }
    case '5029': {
      if(number2 == '28') return '하나';
      break;
    }
    case '5886': {
      if(number2 == '44') return '씨티';
      break;
    }
    case '6060': {
      if(number2 == '45') return '신한';
      break;
    }
    case '6361': {
      if(number2 == '89') return '하나';
      break;
    }
    case '6233': {
      if(number2 == '74') return '국민';
      break;
    }
    case '6243': {
      if(number2 == '48') return '신한';
      break;
    }
    case '6251': {
      if(number2 == '04') return '롯데';
      break;
    }
    case '6251': {
      if(number2 == '04') return '롯데';
      break;
    }
    case '6258': {
      if(number2 == '04') return '국민';
      else if(number2 == '17') return '삼성';
      break;
    }
    case '6259': {
      if(number2 == '04') return '롯데';
      break;
    }
    case '6262': {
      if(number2 == '61') return '하나';
      break;
    }
    case '6570': {
      if(number2 == '20') return '우리';
      break;
    }
    case '9409': {
      if(number2 == '15') return '롯데';
      break;
    }
    default: return '';
  }
  return '';
}

//   9400 10 - 한국씨티은행

//   9407 01 - 수협중앙회
//   9407 02 - 수협중앙회


//   9409 51 - 롯데카드
//
//
//   9420 61 - 신한카드
//   9420 90 - 삼성카드
//   9421 50 - BC카드
//   9425 20 - 우리카드
//   9431 50 - BC카드

//   9436 45 - KB국민카드
//   9436 46 - KB국민카드

//   9441 16 - NH농협카드

//   9444 03 - BC카드 IBK
//   9444 20 - 우리카드 BC카드
//   9444 22 - 우리카드 BC카드

//   9445 20 - 우리카드 BC카드
//   9445 41 - KB국민카드
//   9445 42 - KB국민카드
//   9445 47 - KB국민카드

//   9446 03 - BC카드
//   9460 XX - BC카드
//   9463 16 - NH농협카드
//
//   9491 30 - 나마네카드
//   9530 03 - 광주은행
//
// 4061~4065 우리카드
//
// 4653 XX - 하나카드
// 4655 XX - 하나카드
// 4656 XX - 케이뱅크
// 4673 XX - KB국민카드
// 9440 XX - BC카드 하나카드
// 9430 XX - BC카드
// 5898 직불카드
// 6541 XX
// 6556 XX
// 6244 XX - 하나카드
// 6253 XX - BC카드90
// 6210 XX - BC카드
// 5388 XX - BC카드
// 5441 XX - 하나카드
//
// 9000 XX[8] - 직불카드
// 4906 XX[5] - BC카드
// 6048 XX[5] - BC카드
// 9410 XX[5] - BC카드
// 6360 XX[7] - BC카드
// 9420 XX[5] - BC카드
// 4553 XX[5] - BC카드
// 9461 XX[10] - BC카드
