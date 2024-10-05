package;

class Progress {
	public var current:Int;
	public var total:Int;

	public function new(inCurrent:Int, inTotal:Int) {
		current = inCurrent;
		total = inTotal;
	}

	public function progress(inCurrent:Int) {
		current += inCurrent;
	}

	public function getProgress() {
		var percent = current / total;
		var pct = Std.int(percent * 1000) / 10;
		var str = Std.string(pct);
		var vvv = Std.int(pct);
		var funnyStr = str;
		if (pct == vvv) {
			if (str.length == 1)
				funnyStr = "    " + str + "%    ";
			else if (str.length == 2)
				funnyStr = "    " + str + "%   ";
			else if (str.length == 3)
				funnyStr = "   " + str + "%   ";
		} else  {
			if (str.length == 1)
				funnyStr = "     " + str + "%     ";
			else if (str.length == 2)
				funnyStr = "    " + str + "%    ";
			else if (str.length == 3)
				funnyStr = "   " + str + "%   ";
			else if (str.length == 4)
				funnyStr = "  " + str + "%   ";
		}
		return "\x1b[" + 90 + "m[\x1b[" + 96 + "m" + funnyStr + "\x1b[" + 90 + "m]";
	}
}