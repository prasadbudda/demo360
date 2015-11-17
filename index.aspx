<!DOCTYPE html>
<html>
<head>
<title>Facebook Login</title>
<meta charset="UTF-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!-- Latest compiled and minified JavaScript -->
<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="javascripts/main1.js" />
</head>
<body>

<h1 id="fb-welcome"></h1>

<script>

  window.fbAsyncInit = function() {
    FB.init({
      appId      : '907050789387318',
      xfbml      : true,
      version    : 'v2.5'
    });

    function onLogin(response) {
  if (response.status == 'connected') {
    FB.api('/me?fields=first_name', function(data) {
      var welcomeBlock = document.getElementById('fb-welcome');
      welcomeBlock.innerHTML = 'Hello, ' + data.first_name + '!';
    });
  }
}

FB.getLoginStatus(function(response) {
  // Check login status on load, and if the user is
  // already logged in, go directly to the welcome message.
  if (response.status == 'connected') {
    onLogin(response);
  } else {
    // Otherwise, show Login dialog first.
    FB.login(function(response) {
      onLogin(response);
    }, {scope: 'user_friends, email'});
  }
});
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));

error_page 405 = $uri;

http {
  
      include /nginx.conf;

    
}
</script>

<!--
  Below we include the Login Button social plugin. This button uses
  the JavaScript SDK to present a graphical Login button that triggers
  the FB.login() function when clicked.
-->




<div id="status">
</div>


<div id="fb-root"></div>



    
    
    <div class="row">
      <div class="col-lg-1 col-lg-offset-11">
        <div class="fb-login-button" scope="public_profile,email" onlogin="checkLoginState();"  data-max-rows="2" data-size="medium" data-show-faces="false" data-auto-logout-link="true"></div>
      </div>
      
      <div class="col-lg-8">
        <h1>Main Demo Page</h1>
        </div>
      <div class="col-lg-4">
    <div class="fb-page" data-href="https://www.facebook.com/facebook" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true" data-show-posts="true"><div class="fb-xfbml-parse-ignore"><blockquote cite="https://www.facebook.com/facebook"><a href="https://www.facebook.com/facebook">Facebook</a></blockquote></div></div>
    </div>
    </div>
    
    <div class="fb-comments" data-href="https://www.facebook.com/GeometricLimited/posts/10153788683744630:0/" data-numposts="2"></div>
    </body>
</html>

