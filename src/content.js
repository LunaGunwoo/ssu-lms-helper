"use strict";

function init() {
  if (location.pathname !== "/mypage" && location.pathname !== "/mypage/") {
    return;
  }

  console.info("[ssu-lms-todo] 초기화 완료");
}

init();
