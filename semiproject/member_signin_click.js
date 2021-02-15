
// 체크박스 전체 선택, 해제
$(".checkbox_group").on("click", "#allckbox", function () {
    var checked = $(this).is(":checked");
  
    if(checked){
        $(this).parents(".checkbox_group").find('input').prop("checked", true);
    } else {
        $(this).parents(".checkbox_group").find('input').prop("checked", false);
    }
  });

// 전체선택 후 하나만 해제했을 때, 전체선택도 해제해주기
// 체크박스 개별 선택
$(".checkbox_group").on("click", ".checkbox_msg", function() {
    var checked = $(this).is(":checked");

    if (!checked) {
        $("#allckbox").prop("checked", false);
    }
});

/*

// allckbox 체크 되었을때 다음 버튼 활성화
$('input[name="chktmp"]').change(function() {
    var tmpLength = $('input[name="chktmp"]').length;
    var checkedLength = $('input[name="chktmp"]:checked').length;
    var selectChk = (tmpLength == checkedLength);
    $('#allckbox').prop('checked',selectChk);
    selectChk ? $('.btn_next_step').removeAttr('disabled'):$('.btn_next_step').attr('disabled', disabled);
});
$('#allckbox').change(function() {
    $(this).prop('checked') ? $('.btn_next_step').removeAttr('disabled') : $('.btn_next_step').attr('disabled', disabled);
});

*/


/*
// 전체 체크에 따른 하위 체크박스의 활성-비활성화 여부
$('#allckbox').change(function() {
    var checked = $(this).prop('checked');
    $('input[name="chktmp"]').prop('checked', checked);
});


// allckbox 체크 되었을때 다음 버튼 활성화
$('input[name="chktmp"]').change(function() {
    var tmpLength = $('input[name="chktmp"]').length;
    var checkedLength = $('input[name="chktmp"]:checked').length;
    var selectChk = (tmpLength == checkedLength);
    $('#allckbox').prop('checked',selectChk);
    selectChk ? $('.btn_next_step').removeAttr('disabled'):$('.btn_next_step').attr('disabled', disabled);
});

//
$('#allckbox').change(function() {
    $(this).prop('checked') ? $('.btn_next_step').removeAttr('disabled') : $('.btn_next_step').attr('disabled', disabled);
});
*/
