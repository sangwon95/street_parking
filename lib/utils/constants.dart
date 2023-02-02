
const String APP_NAME = '휴 스테이션';
const String APP_VERSION = '1.0.14';


const String BASE_URL                 = 'onwards.iptime.org:50013';
//const String BASE_URL                 = '192.168.0.54:60070';
const String API_PREFIX               = 'http://$BASE_URL/ws';
const String API_CHAT_BOT             = '$API_PREFIX/public/hustage/chat';
const String API_URL_LOGIN            = '$API_PREFIX/public/user/login';
const String API_URL_USER             = '$API_PREFIX/public/user';
const String API_URL_RESILIENCE       = '$API_PREFIX/private/stress/test/answer/insert';
const String API_URL_SATISFACTION     = '$API_PREFIX/private/satisfaction/answer/insert';

const String API_URL_USER_DUPLICATE   = '$API_PREFIX/private/user/duplicateId';
const String API_URL_USER_GET         = '$API_PREFIX/private/user/get';
const String API_URL_USER_FIND_ID     = '$API_PREFIX/private/user/findId';
const String API_URL_USER_FIND_PASS   = '$API_PREFIX/private/user/findPwd';
const String API_URL_ACCIDENT_INFO    = '$API_PREFIX/private/accident/info/insert';
const String API_URL_ACCIDENT_GET     = '$API_PREFIX/private/accident/get';
const String API_URL_CHAT_PTSD_TEST   = '$API_PREFIX/private/stepbystep/test';
const String API_URL_CHAT_IESRK_TEST  = '$API_PREFIX/private/iesrk/test';
const String API_URL_IESRK_LIST       = '$API_PREFIX/private/iesrk/get';
const String API_URL_MENU_LIST        = '$API_PREFIX/private/test/menu/list';
const String API_URL_PRIVATE_USER     = '$API_PREFIX/private/user';
const String API_URL_UPDATE_BURNOUT   = '$API_PREFIX/private/burnout/update';
const String API_URL_COMPLETECNT_GET  = '$API_PREFIX/private/stress/test/completecnt';
const String API_URL_UPDATE_RESULT_BURNOUT   = '$API_PREFIX/private/burnout/result/update';

const String API_URL_UPDATE_PWD       = '$API_PREFIX/private/user/updatepwd';
const String API_URL_USER_UPDATE      = '$API_PREFIX/private/user/update';
const String API_URL_USER_DELETE      = '$API_PREFIX/private/user/delete';


// MESSAGE_
const String MESSAGE_LOGIN_FALSE          = '로그인 실패';
const String MESSAGE_CHECK_ID_PASS        = '아이디 또는 비밀번호를 확인하세요.';
const String MESSAGE_SERVER_ERROR_DEFAULT = '서버 오류 발생 재시도 바랍니다.';
const String MESSAGE_NOT_EXIST_RESULT     = '요청한 파라미터의 결과 데이터가 존재하지 않습니다.';
const String MESSAGE_ERROR_CONNECT_SERVER = '서버 연결 오류입니다. 재시도 바랍니다.';
const String MESSAGE_AVAILABLE_ID         = '사용 가능한 ID입니다.';
const String MESSAGE_INSERT_FAILURE       = '입력되지 못했습니다. 다시 시도바랍니다.';
const String MESSAGE_UPDATE_FAILURE       = '회원 정보 변경이 실패 했습니다. 다시 시도바랍니다.';
const String MESSAGE_DB_DUPLICATE_ERROR   = 'DB 키중복 오류가 발생했습니다.';

const String MSG_SIGN_SUCCESS = '회원가입이 완료 되었습니다.';
const String SING_GUIDE_PHRASE = '정확한 연구분석과 맞춤형 심리 케어 솔루션 제공을 위해 아래의 정보를 입력해 주시기 바랍니다.';
const String SING_GUIDE_PHRASE_EDIT = '정확한 연구분석과 맞춤형 심리 케어 솔루션 제공을 위해 아래의 정보를 정확하게 입력 및 수정 바랍니다.';
const String PASS_GUIDE_PHRASE_EDIT = '비밀번호 변경 후 로그인 화면으로 이동되며, 변경 된 비밀번호로 로그인 바랍니다.';
const String RESILIENCE_GUIDE_PHRASE = '지난 일주일 동안 아래의 문항을 어느 정도 경험했는지 질문에 응답해주세요.';
const String RESILIENCE_GUIDE_PHRASE2 = '지난 며칠 동안 어느 정도 변화가 있었는지 경험했는지 질문에 응답해주세요.';
const String TERMS_GUIDE_PHRASE = '휴스테이션이 처음이시군요.\n약관내용에 동의해주세요.';
const String LOGIN_TEXT = '스트레스에 지친 직장인을 위한\n마음 회복관리 심리챗봇';

const String RESILIENCE_END_MESSAGE = '수고하셨습니다. 위 선택한 내용 다시 확인 후 버튼 눌러주세요.';
const String CHATBOT_NOT_SERVICE = '상담 전문가 소개 메뉴로 이동';
const String CHATBOT_END_MESSAGE = '상담 메뉴 선택 화면으로 이동';

const String FIND_ID_DESCRIPTION   = '$APP_NAME에 가입했던 이름, 이메일을 입력해주세요.\n아이디를 메일로 보내드립니다.';
const String FIND_PASS_DESCRIPTION  = '$APP_NAME에 가입했던 아이디,이름,이메일을 입력해주세요.\n임시 비밀번호를 메일로 보내드립니다.';
const String FIND_COMPLETE_MAIL_MSG = '메일이 전송되었습니다. 확인바랍니다.';

const jobNameList  = [
 ' 보건의료직',
 ' 제조생산직',
 ' 고객응대직',
 ' 심리상담직',
 ' 기타'
];


abstract class ResilienceStep {
 static const first  = '1';
 static const second = '2';
}

abstract class ChatFileCode {
 static const burnout = 'in';
 static const main = 'fi';
 static const resilience = 're';
 static const satisfaction = 'sa';
 static const endGuide = 'en';
}

enum MessagePosition {
 left,
 right
}

enum ChatBotType {
 consult,
 burnout,
 end
}

// abstract class ChatBotStatus {
//  static const chatBot = 'ch';   // 상담 메뉴 챗봇
//  static const burnout = 'burn'; // 초기 번아웃 스크리닝
//  static const end = 'end';      // 마무리 후 번아웃 스크리닝
// }






