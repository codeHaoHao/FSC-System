//<![CDATA[

$(document).ready(function(){

	/*
	 * Instance CirclePlayer inside jQuery doc ready
	 *
	 * CirclePlayer(jPlayerSelector, media, options)
	 *   jPlayerSelector: String - The css selector of the jPlayer div.
	 *   media: Object - The media object used in jPlayer("setMedia",media).
	 *   options: Object - The jPlayer options.
	 *
	 * Multiple instances must set the cssSelectorAncestor in the jPlayer options. Defaults to "#cp_container_1" in CirclePlayer.
	 *
	 * The CirclePlayer uses the default supplied:"m4a, oga" if not given, which is different from the jPlayer default of supplied:"mp3"
	 * Note that the {wmode:"window"} option is set to ensure playback in Firefox 3.6 with the Flash solution.
	 * However, the OGA format would be used in this case with the HTML solution.
	 */

	var myCirclePlayer = new CirclePlayer(".jquery_jplayer_1",
	{
		m4a: "http://www.jplayer.org/audio/m4a/Miaow-07-Bubble.m4a",
		oga: "http://www.jplayer.org/audio/ogg/Miaow-07-Bubble.ogg"
	}, {
		cssSelectorAncestor: ".cp_container_1",
		swfPath: "../js",
		wmode: "window"
	});
	var myCirclePlayer = new CirclePlayer(".jquery_jplayer_2",
	{
		m4a: "http://www.jplayer.org/audio/m4a/Miaow-07-Bubble.m4a",
		oga: "http://www.jplayer.org/audio/ogg/Miaow-07-Bubble.ogg"
	}, {
		cssSelectorAncestor: ".cp_container_2",
		swfPath: "../js",
		wmode: "window"
	});
	var myCirclePlayer = new CirclePlayer(".jquery_jplayer_3",
	{
		m4a: "http://www.jplayer.org/audio/m4a/Miaow-07-Bubble.m4a",
		oga: "http://www.jplayer.org/audio/ogg/Miaow-07-Bubble.ogg"
	}, {
		cssSelectorAncestor: ".cp_container_3",
		swfPath: "../js",
		wmode: "window"
	});
	var myCirclePlayer = new CirclePlayer(".jquery_jplayer_4",
	{
		m4a: "http://www.jplayer.org/audio/m4a/Miaow-07-Bubble.m4a",
		oga: "http://www.jplayer.org/audio/ogg/Miaow-07-Bubble.ogg"
	}, {
		cssSelectorAncestor: ".cp_container_4",
		swfPath: "../js",
		wmode: "window"
	});
	var myCirclePlayer = new CirclePlayer(".jquery_jplayer_5",
	{
		m4a: "http://www.jplayer.org/audio/m4a/Miaow-07-Bubble.m4a",
		oga: "http://www.jplayer.org/audio/ogg/Miaow-07-Bubble.ogg"
	}, {
		cssSelectorAncestor: ".cp_container_5",
		swfPath: "../js",
		wmode: "window"
	});
	var myCirclePlayer = new CirclePlayer(".jquery_jplayer_6",
	{
		m4a: "http://www.jplayer.org/audio/m4a/Miaow-07-Bubble.m4a",
		oga: "http://www.jplayer.org/audio/ogg/Miaow-07-Bubble.ogg"
	}, {
		cssSelectorAncestor: ".cp_container_6",
		swfPath: "../js",
		wmode: "window"
	});

});
//]]>