/*  
 *  And Nick Achatz said, let Phoenii look nice;
 *	and it did, and it was good.
 */

$("document").ready(function(){
	
	// INIT loginBox
	$("div#loginBox").hide(0);

	// INIT applyBox
	$("div#applyBox").hide(0);
	$("div#applyBox").animate({height : 0},0);

	//$("div#investorBox").animate({height : 0},0);


	// Open the login box
	var openLogin = function() {
		
		/** SHOW LOGIN BOX */
		$("div#loginBox").show(0);
		$("div#loginBox").animate({
			'padding-left' : 20,
			'padding-right' : 20,
		},0);
		$("div#loginBox").animate({
			'height' : 130,
			'margin-top' : 40,
			'padding-top' : 20,
			'padding-bottom' : 20,
		},600);
			
	};

	// Close the login box
	var closeLogin = function() {
		
		/** HIDE LOGIN BOX */
		$("div#loginBox").animate({
			'height' : 0,
			'margin-top' : 0,
			'padding-top' : 0,
			'padding-bottom' : 0,
		},600);
		$("div#loginBox").hide(0);
	};

	// Open the apply box
	var openApply = function() {

		/** SHOW APPLY BOX */
		$("div#applyBox").show(0);
		
		// INIT investorBox
		$("div#investorBox").hide(0);
		// INIT entBox
		$("div#entBox").hide(0);

		$("div#applyBox").animate({
			'padding-left' : 20,
			'padding-right' : 20,
		},0);
		$("div#applyBox").animate({
			'height' : 100,
			'margin-top' : 40,
			'padding-top' : 30,
			'padding-bottom' : 30,
		},600);
	};

	// Close the apply box
	var closeApply = function() {

		/** HIDE APPLY BOX */
		$("div#applyBox").animate({
			'height' : 0,
			'margin-top' : 0,
			'padding-top' : 0,
			'padding-bottom' : 0,
		},600);
		$("div#applyBox").hide(0);
	};


	// Open the Investor box
	var openInvestor = function() {

		/** SHOW INVESTOR BOX */
		$("div#investorBox").show(0);
		$("div#investorBox").animate({'height' : 0,},0);
		$("div#investorBox").animate({'height' : 140, 'padding-top' : 10},600);
		$("div#applyBox").animate({
			'width' : 275,
			'height' : 225,
		},600);
	};

	// Close the Investor box
	var closeInvestor = function() {
		$("div#investorBox").animate({'height' : 0, 'padding-top' : 0},600);
		$("div#investorBox").hide(0);
		var wat = $("div#entBox").css("display");
		if (wat == "none") {
			$("div#applyBox").animate({'height' : 100, 'width' : 200});
		}
	};

	// Open the Ent box
	var openEnt = function() {

		/** SHOW ENT BOX */
		$("div#entBox").show(0);
		$("div#entBox").animate({'height' : 0,},0);
		$("div#entBox").animate({'height' : 140, 'padding-top' : 10},600);
		$("div#applyBox").animate({
			'width' : 275,
			'height' : 225,
		},600);
	};

	// Close the Investor box
	var closeEnt = function() {
		$("div#entBox").animate({'height' : 0, 'padding-top' : 0},600);
		$("div#entBox").hide(0);
		var wat = $("div#investorBox").css("display");
		if (wat == "none") {
			$("div#applyBox").animate({'height' : 100, 'width' : 200});
		}
	};

	// Show login box, hide apply box
	$("a#loginOpen").click(function(){
		var wat = $("div#loginBox").css("display");
		if (wat == "none") {
			closeApply();
			openLogin();
		} else {
			closeLogin();
		}
	});

	$("a#applyOpen").click(function(){
		var wat = $("div#applyBox").css("display");
		if (wat == "none") {
			closeLogin();
			openApply();
		} else {
			closeApply();
		}
	});

	// Open investor ane
	$("a#investorOpen").click(function(){
		var wat = $("div#investorBox").css("display");
		if (wat == "none") {
			openInvestor();
			closeEnt();
		} else {
			closeInvestor();
		}
	});

	// Open entrepreneur pane
	$("a#entOpen").click(function(){
		var wat = $("div#entBox").css("display");
		if (wat == "none") {
			openEnt();
			closeInvestor();
		} else {
			closeEnt();
		}
	});
});

