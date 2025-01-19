-- 전역 변수 선언
SET @report_contents = '이 사람이 나한테 욕 했어요ㅠㅠ'; -- 신고 내용
SET @reported_user_id = 1; -- 피고인 ID
SET @report_user_id = 2; -- 신고자 ID
SET @report_type = 'MESSAGE'; -- 신고 구분 (COMMENT, COURSE, PLACE, MESSAGE 중 하나)
SET @message_id = 1; -- 메시지 ID (신고 유형이 MESSAGE인 경우 설정)


-- INSERT 쿼리
INSERT INTO report (
    report_contents,
    reported_user_id,
    report_user_id,
    report_type,
    message_id
)
VALUES (
    (SELECT @report_contents),
    (SELECT @reported_user_id),
    (SELECT @report_user_id),
    (SELECT @report_type),
    (SELECT @message_id)
);

