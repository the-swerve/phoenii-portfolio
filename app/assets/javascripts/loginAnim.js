/*  
 *  And Nick Achatz said, let Phoenii look nice;
 *	and it did, and it was good.
 */

$("document").ready(function(){
	
	$("a#loginOpen").click(function(){

		/** SHOW LOGIN BOX */
		$("div#loginBox").show(0);
		$("div#loginBox").animate({
			'padding-left' : 20,
			'padding-right' : 20,
		},0);

		$("div#loginBox").animate({
			'height' : 130,
			'margin-top' : 30,
			'padding-top' : 20,
			'padding-bottom' : 20,
		},600);

	});

});

