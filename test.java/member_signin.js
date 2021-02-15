var bId = false;
var bPwd = false;
var bPwdCheck = false;
var bName = false;
var bPhone = false;

// 버튼 활성화
function buttonAble() {
    if(bId === true && pPwd === true && bPwdCheck === true && bName === true && bPhone === true) {
        document.getElementById("submit").removeAttribute("disabled");
    }else {
        document.getElementById("submit").disabled = "true";
    }
}

// 아이디 유효성 검사 , 중복 확인
function checkId() {
    var userId = document.getElementById("userId");
    var checkId = document.getElementById("checkId");
    var idCheckRegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}/i;
    if(!idCheckRegExp.test(userid.value)){
        checkId.innerHTML = "<p class='fail'>이메일 형식에 맞게 입력해주세요.</p>";
        bId = false;
        buttonAble();
    }else{
        $.ajax({
            url:"MemberIdCheckController",
            type:"get",
            data:{userid : userid.value},
            success:function(result){
                if(result == "fail"){
                    checkId.innerHTML = "<p class='fail'>" + userid.value +" 사용 중인 아이디입니다. </p>";
                    bId = false;
                    buttonAble();
                }else{
                    checkId.innerHTML = "<p class='success'>" + userid.value + " 사용 가능한 아이디입니다</p>";
                    bId = true;
                    buttonAble();
                }
            }
        });
    }

}

// 비밀번호 유효성검사 (이벤트는 focusout시 발생)
function checkPwd(){
    var userpwd = document.getElementById("userpwd");
    var checkPwd = document.getElementById("checkPwd");
    var regExp = /^[a-z\d!@#$%^&*]{8,16}$/i
    if(!regExp.test(userpwd.value)){
        checkPwd.innerHTML = "<p class='fail'>8~16자 영문, 숫자, 특수문자만 사용가능합니다.</p>";
        cPwd = false;
        buttonAble();
    }else{
        checkPwd.innerHTML = "<p class='success'>안전한 비밀번호입니다!</p>";
        cPwd = true;
        buttonAble();
    }
}
// 비밀번호 확인 유효성검사 (이벤트는 focusout시 발생)
function checkPwdCheck(){
    var userpwd = document.getElementById("userpwd");
    var userPwdCheck = document.getElementById("userPwdCheck");
    var checkPwdCheck = document.getElementById("checkPwdCheck");
    var regExp = /^[a-z\d!@#$%^&*]{8,16}$/i
    if(!regExp.test(userPwdCheck.value)){
        checkPwdCheck.innerHTML = "<p class='fail'>8~16자 영문, 숫자, 특수문자를 혼용해 입력해주세요.</p>";
    }else{
        if(userpwd.value != userPwdCheck.value){
            checkPwdCheck.innerHTML = "<p class='fail'>비밀번호가 일치하지 않습니다.</p>";
            cPwdCheck = false;
            buttonAble();
        }else{
            checkPwdCheck.innerHTML = "<p class='success'>비밀번호가 일치합니다!</p>";
            cPwdCheck = true;
            buttonAble();
        }
    }
}
