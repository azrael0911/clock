<!doctype html>
<html>
<head>
<!-- #include file="include/webInfo.asp" -->
</head>

<body>
<div class="clock">
	<img src="images/clock.png"/>
	<img class="sec" src="images/sec.png"/>
	<img class="min" src="images/min.png"/>
	<img class="hour" src="images/hour.png"/>
</div>
<script>
	$(document).ready(function(){
		function timer(){
			var time = new Date();
			var hours = time.getHours();
			var mins = time.getMinutes();
   			var secs = time.getSeconds();
			secAngle = secs*6;
			minAngle = mins*6;
			hourAngle = hours*30+mins/2;
			$('.hour').css({
				"transform": "rotate(" + hourAngle + "deg)"
			});
			$('.min').css({
				"transform": "rotate(" + minAngle + "deg)"
			});
			$('.sec').css({
				"transform": "rotate(" + secAngle + "deg)"
			});
		}
		timer();
		setInterval(timer,1000);
	});
</script>
</body>
</html>