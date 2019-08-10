/**
 * 
 */

$(document).ready(function(){
	//alert('Me');
	$('#request-link').click(function(e){
		e.preventDefault();
		//alert(ctx);
		$.post(ctx+"/resource/request",$("form").serialize(),function(data){
			alert(data);
		});
		return false;
	});
	
});