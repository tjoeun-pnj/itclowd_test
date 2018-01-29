$(function() {
  UserVoice=window.UserVoice||[];(function(){var uv=document.createElement('script');uv.type='text/javascript';uv.async=true;uv.src='//widget.uservoice.com/PN1NQAWEP4cb8TbAbcg.js';var s=document.getElementsByTagName('script')[0];s.parentNode.insertBefore(uv,s)})();

  UserVoice.push(['set', {
    accent_color: '#ff382e',
    trigger_color: 'white',
    trigger_background_color: '#ff382e',
    screenshot_enabled: false
  }]);

  UserVoice.push(['identify', {
    name: "박노준",
    created_at: "1517147232",
    id: "j4PxON9aL5p0Q",
  }]);

  UserVoice.push(['addTrigger', { mode: 'contact', trigger_position: 'bottom-left' }]);

  UserVoice.push(['autoprompt', {}]);
});
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

	  ga('create', 'UA-27006241-2', { 'userId': 'j4PxON9aL5p0Q' });

	  ga('set', 'dimension1', 'member')
	  ga('set', 'dimension2', '2018/1')
	  ga('set', 'dimension3', '28')
	  ga('set', 'dimension4', 'j4PxON9aL5p0Q')
	  ga('set', 'dimension5', '121.140.18.146')

	  var HALF_STAR = "half"
	  var halfStarToUa = 'half_b'

	  ga('set', 'dimension6', halfStarToUa)
	  ga('set', 'dimension7', 'Y:2018;Q:1;M:01;D:28;H:22;WY:2018;WN:04;WD:7');

	  ga('send', 'pageview');
	  $( document ).ready(function() {
		    $(".legal-privacy-button").on("click", function(e) {
		      e.preventDefault();
		      $(".legal-privacy").css("display", "block");
		      $("body").css("overflowY", "hidden");
		    });
		    $(".legal-watcha-button").on("click", function(e) {
		      e.preventDefault();
		      $(".legal-watcha").css("display", "block");
		      $("body").css("overflowY", "hidden");
		    });
		    $(".legal-dialog__close").on("click", function(e){
		      e.preventDefault();
		      $(".legal-element").css("display", "none");
		      $("body").css("overflowY", "auto");
		    });
		  });
	  !function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="https://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");