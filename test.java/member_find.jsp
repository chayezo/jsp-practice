<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
    <style>
    	*, *:before, *:after {
 		 	box-sizing: border-box;
		}
	    html {
			overflow-y: scroll; 
		}
		
		body {
		  	font-family: 'Titillium Web', sans-serif;
		}
		.form_tab {
			 max-width: 400px;
		    margin: 0 auto 50px;
		    list-style: none;
		    padding-inline-start: 0px;
		}
		
		.form_tab a {
		    text-decoration:none;
		    color:#1ab188;
		    transition:.5s ease;
  		}
		.form_tab a:hover {
	  		color:darken(#1ab188,5%);
		}
  
		.form {
	    	background:rgba(#13232f,.9);
	    	padding: 40px;
	    	max-width:600px;
	    	margin:40px auto;
	    	border-radius:4px;
	    	box-shadow:0 4px 10px 4px rgba(#13232f,.3);
	  	}
  
  		.tab-group {
    		list-style:none;
		    padding:0;
		    margin:0 0 40px 0;
  		}
  		
  .tab-group:after {
    content: "";
    display: table;
    clear: both;
  }

  .tab-group li a {
    display:block;
    text-decoration:none;
    padding:15px;
    background:rgba(#a0b3b0,.25);
    color:#a0b3b0;
    font-size:20px;
    float:left;
    width:50%;
    text-align:center;
    cursor:pointer;
    transition:.5s ease;
    
  }
  .tab-group li a:hover {
    background:darken(#1ab188,5%);
    color:#ffffff;
  }
  .active a {
    background:#1ab188;
    color:#ffffff;
  }
  
  .tab-content > div:last-child {
    display:none;
  }
  
  
  .tab-group p {
    text-align:center;
    color:#ffffff;
    font-weight:300;
    margin:0 0 40px;
  }
  
  label {
    position:absolute;
    transform:translateY(6px);
    left:13px;
    color:rgba(#ffffff,.5);
    transition:all 0.25s ease;
    -webkit-backface-visibility: hidden;
    pointer-events: none;
    font-size:22px;

  }
  label.req {
    margin:2px;
    color:#1ab188;
  }
  
  label.active {
    transform:translateY(50px);
    left:2px;
    font-size:14px;
    
  }
  label.active.req {
    opacity:0;
  }
  
  label.highlight {
      color:#ffffff;
  }
  
  input, textarea {
    font-size:22px;
    display:block;
    width:100%;
    height:100%;
    padding:5px 10px;
    background:none;
    background-image:none;
    border:1px solid #a0b3b0;
    color:#ffffff;
    border-radius:0;
    transition:border-color .25s ease, box-shadow .25s ease;
  }

  input, textarea:focus {
    outline:0;
    border-color:#1ab188;
  }
  
  textarea {
    border:2px solid #a0b3b0;
    resize: vertical;
  }
  
  .field-wrap {
    position:relative;
    margin-bottom:40px;
  }
  
  
    .top-row:after {
      content: "";
      display: table;
      clear: both;
    }
  
    .top-row > div {
      float:left;
      width:48%;
      margin-right:4%;
    }
    .top-row > div:last-child { 
        margin:0;
    }
 
  .tab-content .button {
    border:0;
    outline:none;
    border-radius:0;
    padding:15px 0;
    font-size:2rem;
    font-weight:600;
    text-transform:uppercase;
    letter-spacing:.1em;
    background:#1ab188;
    color:#ffffff;
    transition:all.5s ease;
    -webkit-appearance: none;

  }
  .tab-content .button:hover, .tab-content .button:focus {
    background:darken(#1ab188,5%);
  }
  
  .tab-content .button-block {
    display:block;
    width:100%;
  }
    </style>
  </head>
  <body>
	<div class="form_tab">
      <ul class="tab-group">
        <li class="tab active"><a class="tab active" href="#findId">아이디 찾기</a></li>
        <li class="tab"><a class="tab active" href="#findPwd">비밀번호 찾기</a></li>
      </ul>
      
      <div class="tab-content">
        <div id="findId">   
          	<p>
           		본인인증을 통해 아이디(이메일) 확인 및
             	<br />
             	비밀번호를 변경하실 수 있습니다.
           	</p>
          
          <form action="/" method="post">
          <div class="top-row">
          <div class="field-wrap">
          	<label>
          		이름<span class="req">*</span>
          	</label>
            <input
              type="text"
              id="username"
              name="username"
              autocorrect="off"
              autocapitalize="none"
              required
              autofocus
            />
          </div>
          
          <div class="field-wrap">
          	<label>
          		전화번호(-없이)<span class="req">*</span>
          	</label>
            <input
               type="text"
               id="userphnumber"
               name="userphnumber"
               autocorrect="off"
               autocapitalize="none"
               required
             />
          </div>
          </div>
          <button type="submit" class="button button-block">본인인증 하기</button>
        </form>
        </div>
        
        
        
        <div id="login">   
          	<p>
           		본인인증을 통해 아이디(이메일) 확인 및
             	<br />
             	비밀번호를 변경하실 수 있습니다.
           	</p>
          
          <form action="/" method="post">
          
           <div class="field-wrap">
			<label>
                아이디<span class="req">*</span>
            </label>
                <input
                 type="text"
                 id="userid"
                 name="userid"
                 autocorrect="off"
                 autocapitalize="none"
                 required
               />
          </div>
          <div class="field-wrap">
			<label>
                이름<span class="req">*</span>
            </label>
            	<input
                    type="text"
                    id="username"
                    name="username"
                    autocorrect="off"
                    autocapitalize="none"
                    required
                    autofocus
                  />
          </div>
          <div class="field-wrap">
          	<label>
                연락처<span class="req">*</span>
            </label>
                <input
                 type="text"
                 id="userphnumber"
                 name="userphnumber"
                 autocorrect="off"
                 autocapitalize="none"
                 required
               />
          </div>          
          
          <button class="button button-block">본인인증 하기</button>
         </form>
        </div>
        
        
      </div><!-- tab-content -->
	</div> <!-- /form -->
  </body>
  <script>
  $('.form_tab').find('input, textarea').on('keyup blur focus', function (e) {
	  
	    var $this = $(this),
	        label = $this.prev('label');

	        if (e.type === 'keyup') {
	              if ($this.val() === '') {
	            label.removeClass('active highlight');
	          } else {
	            label.addClass('active highlight');
	          }
	      } else if (e.type === 'blur') {
	          if( $this.val() === '' ) {
	              label.removeClass('active highlight'); 
	              } else {
	              label.removeClass('highlight');   
	              }   
	      } else if (e.type === 'focus') {
	        
	        if( $this.val() === '' ) {
	              label.removeClass('highlight'); 
	              } 
	        else if( $this.val() !== '' ) {
	              label.addClass('highlight');
	              }
	      }

	  });

	  $('.tab a').on('click', function (e) {
	    
	    e.preventDefault();
	    
	    $(this).parent().addClass('active');
	    $(this).parent().siblings().removeClass('active');
	    
	    target = $(this).attr('href');

	    $('.tab-content > div').not(target).hide();
	    
	    $(target).fadeIn(600);
	    
	  });
  </script>
  <script src="resources/JS/menubar.js"></script>
</html>