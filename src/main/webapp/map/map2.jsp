<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>map2.jsp</title>
<style type="text/css">
	html, body {
        height: 100%;
       
      }
	
	#map {
		width : 100%;
		height: 100%;
	}
</style>
<script type="text/javascript"></script>
</head>
<body>
<button id="loc1" >강남역</button>
<button id="loc2">이대역</button>
<button id="loc3">광화문</button>
<input type="button" value="우리집" id="loc4">

<div id="map">Google Map</div>
</body>

 <script src="https://maps.googleapis.com/maps/api/js"></script>

<script type="text/javascript">

	var latLng ={
		lat : 37.12345 ,
		lng : 127.12345	
	};
	var options = {
			zoom : 5,
			center : latLng
	};
	
	var m = new google.maps.Map(map,options);
	
	m.setCenter({
		lat :0 ,
		lng : 0
	});
	
	m.setZoom(10);
	
	var geoCoder = new google.maps.Geocoder();
		
	
	function geo(str){
		geoCoder.geocode({address : str}, function(result, status){
			
			console.dir(result);
			console.dir(status);
			console.dir(geoCoder);
			
			lat = result[0].geometry.location.lat();
			lng = result[0].geometry.location.lng();
			
			 console.log("lat=" +lat);
			 console.log("lng=" +lng); 			
			
			m.setCenter({	
				lat : lat ,
				lng : lng
			});
			
		});
	}
	
	function marker(lt,lg) {
		var marker = new google.maps.Marker({
			map:m,
			position :{
				lat :lt ,
				lng :lg 
			}
		}); 
		
	}
	function moveMap() {
		
		switch (this.id) {	
		case "loc1":
			console.log("강남역으로...");
			geo("강남역");
			marker(37.498129, 127.027653);
		
		 
			m.setZoom(17);
			break;
		case "loc2":
			console.log("이대역으로...");
			m.setCenter({	
				lat : 36.322505 ,
				lng : 127.370245
			});
			m.setZoom(19);
			break;
		case "loc3":
			console.log("광화문으로...");
			m.setCenter({
				
				lat :   37.571828 ,
				lng : 126.976613
			});
			m.setZoom(18);
			break;
		case "loc4":
			console.log("우리집으로...");
			m.setCenter({
				
				lat : 37.607837 ,
				lng :  126.672748
			});
			m.setZoom(18);
			break;
		default:
			break;
		}
	}
	loc1.onclick=moveMap;
	loc2.onclick=moveMap;
	loc3.onclick=moveMap;
	loc4.onclick=moveMap;
</script>
   
 
       
        
</html>