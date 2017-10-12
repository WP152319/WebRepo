function menu_over(e) {
         e.setAttribute("class", "nav-item active");
     }
function menu_out(e) {
         e.setAttribute("class", "nav-item");
     }
$(document).ready(function(){
    $('#loginForm').submit(function(event) {
        // 자동 submit 되는 기능을 막음
        event.preventDefault();

        // id, pwd값을 가져오기
        // document.getElementById("id").value
        var id = $('#id').val();
        var pwd = $('#pwd').val();

        //console.log(id, pwd);
        // 서버로 post 방식으로 전송
        	$.post("/WebClass/bloglogin",
                    { id: id, pwd: pwd},
                    function(data) {
                        //alert(data.form.id + '님 로그인 되었습니다.');
                    	if(data.msg=="error"){
                    		var myModal = $('#myModal');
                          	//console.log("아이디 : "+data.form.id);
                            document.getElementById('loginResult').innerHTML = "로그인에 실패했습니다."
                            myModal.modal();
                    	}
                    	else{
                    		location.reload();
                    	}
            });
    });
});

$(document).ready(function(){
    $('#signForm').submit(function(event) {
        // 자동 submit 되는 기능을 막음
        event.preventDefault();

        // name값을 가져오기
        // document.getElementById("id").value
        var name = $('#name').val();
        // 서버로 post 방식으로 전송
        	$.post("http://httpbin.org/post",
                    { name: name},
                    function(data) {
                        //alert(data.form.name + '님 회원가입 되었습니다.');
                        var myModal = $('#myModal');
                      	//console.log("이름 : "+data.form.name);
                        document.getElementById('signResult').innerHTML = data.form.name + '님 회원가입 되었습니다';
                        myModal.modal();
                    });
    });
});