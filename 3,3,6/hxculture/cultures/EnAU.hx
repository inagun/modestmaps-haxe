package hxculture.cultures;

import hxculture.Culture;

class EnAU extends Culture {
	function new() {
		language = hxculture.languages.En.language;
		name = "en-AU";
		english = "English (Australia)";
		native = "English (Australia)";
		date = new hxculture.core.DateTimeInfo(
			["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December", ""],
			["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec", ""],
			["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
			["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
			["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"],
			"AM",
			"PM",
			"/",
			":",
			1,
			"%B %Y",
			"%d %B",
			"%A, %e %B %Y",
			"%e/%m/%Y",
			"%a, %d %b %Y %H:%M:%S GMT",
			"%A, %e %B %Y %l:%M:%S %p",
			"%Y-%m-%d %H:%M:%SZ",
			"%Y-%m-%dT%H:%M:%S",
			"%l:%M:%S %p",
			"%l:%M %p");
		symbolNaN = "NaN";
		symbolPercent = "%";
		symbolPermille = "‰";
		signNeg = "-";
		signPos = "+";
		symbolNegInf = "-Infinity";
		symbolPosInf = "Infinity";
		number = new hxculture.core.NumberInfo(2, ".", [3], ",", "-n", "n");
		currency = new hxculture.core.NumberInfo(2, ".", [3], ",", "-$n", "$n");
		percent = new hxculture.core.NumberInfo(2, ".", [3], ",", "-n %", "n %");
		englishCurrency = "Australian Dollar";
		nativeCurrency = "Australian Dollar";
		currencySymbol = "$";
		currencyIso = "AUD";
		englishRegion = "Australia";
		nativeRegion = "Australia";
		iso2Region = "AU";
		iso3Region = "AUS";
		isMetric = false;
		Culture.add(this);
	}
	public static var culture : Culture = new EnAU();
}