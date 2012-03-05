function placeStatusBar(v) {
	var seed = Math.floor(Math.random()*9999);
	document.write('<div class="probar" id="wat'+String(seed)+'">&nbsp;</div>');
	//document.write('<div class="probar" id="wat">&nbsp;</div>');
	$("#wat"+String(seed)).progressbar({ value : Number(v) });
};
