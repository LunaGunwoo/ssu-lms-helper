"use strict";

function init() {
  const isLmsMyPage =
    location.hostname === "lms.ssu.ac.kr" &&
    ["/mypage", "/mypage/"].includes(location.pathname);
  const isCanvasMyPage =
    location.hostname === "canvas.ssu.ac.kr" &&
    ["/accounts/1/external_tools/67", "/accounts/1/external_tools/67/"].includes(location.pathname);

  if (!isLmsMyPage && !isCanvasMyPage) {
    return;
  }

  console.info("[ssu-lms-helper] 초기화 완료");
}

init();
