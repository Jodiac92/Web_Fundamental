<%@ page pageEncoding="UTF-8"%>
 <!DOCTYPE html>
    <html>
    <head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
    <title>CAPTCHA Demo - Naver JavaScript SDK</title>
    <script src="/js/jquery-3.4.1.js"></script>
    </head>
    <body>
    <div>
    <img id="img_form_url" src=""/>
    </div>
    <div>
    <input type="text" id="name" name="name">
    <button id="checkNumber">전송</button>
    <button id="refreshNumber">리프레쉬</button>
    </div>
    <script>
    var _key = "";
    $("#refreshNumber").bind('click',function(e){
    		$("#name").val('');
    		loadImage()	;
    });
    $("#checkNumber").bind('click',function(e){
    		$.ajax({
			url : 'getKeyResult.jsp',
			data : {
		    		key :_key,
		    		value : $("#name").val()
		    	},
			type : 'GET',
			dataType : 'json',
			timeout : 1000,//최대시간설정(밀리세컨드로 설정)
			error : function(){
				alert('Error loading JSON');
			},
			success : function(json){
				if(json.result){
					alert('성공하셨습니다..')	
				}else{
					alert('실패..')
				}
			}
		});
    });
    var loadImage = function (){
    	$.ajax({
			url : 'getKey.jsp',
			type : 'GET',
			dataType : 'json',
			timeout : 1000,//최대시간설정(밀리세컨드로 설정)
			error : function(){
				alert('Error loading JSON');
			},
			success : function(json){
				_key = json.key;
				
				console.log('getImage.jsp?key='+_key);
				
				
				var xhr = new XMLHttpRequest();
				xhr.onreadystatechange = function(){
				    if (this.readyState == 4 && this.status == 200){
				        //this.response is what you're looking for
				        //handler(this.response);
				        console.log(this.response);
				        var img = document.getElementById('img_form_url');
				        var url = window.URL || window.webkitURL;
				        img.src = url.createObjectURL(this.response);
				    }
				}
				xhr.open('GET', 'getImage.jsp?key='+_key);
				xhr.responseType = 'blob';
				xhr.send();  
				
				/*
				$.ajax({
			        url: 'getImage.jsp?key='+_key,
			        type:'GET',
			        dataType: 'binary',
			        headers:{'Content-Type':'image/jpg','X-Requested-With':'XMLHttpRequest'},
			        processData: false,
			        success: function(data){    
			        		console.log(data);
			            var blobData = data;
			            var url = window.URL || window.webkitURL;
			            var src = url.createObjectURL(data);
			            $('#img_form_url').attr("src", src);
			        }
				});
				*/
			}
		});
    }
    loadImage();
    </script>
    </body>
    </html>
