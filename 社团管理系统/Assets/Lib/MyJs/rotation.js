window.onload = function () {
	function getIdName(id, tagName) {
		if (tagName != 0) {
			return document.getElementById(id).getElementsByTagName(tagName);
		}
		else {
			return document.getElementById(id);
		}
	}

	function rotation(json) {
		var that;
		var start = 0;
		var index = 0;
		var timer = null;
		var option = {
			li: "li",		//默认用li包裹
			wrapperId: "",	//最外面 id
			imageId: "",		//图片外面id
			buttonId: "",	//按钮外面id
			ms: 4000			//多少毫秒切换一张,默认4000毫秒
		}

		for (var i in option) {
			if (json[i] != undefined) {
				option[i] = json[i];
			}
		}

		var wrapper = getIdName(option.wrapperId, 0);
		var images = getIdName(option.imageId, option.li);
		var buttons = getIdName(option.buttonId, option.li);

		function scrollImage(that) {
			if (that >= 0) {
				index = that;
			}
			else {
				if (start == 0) {
					index++;
				}
				else {
					index--;
					start = 0;
				}
			}

			if (index >= buttons.length) index = 0;

			if (index < 0) index = buttons.length - 1;

			for (var j = 0; j < buttons.length; j++) {
				images[j].className = "";
				buttons[j].className = "";
			}

			images[index].className = "current";
			buttons[index].className = "on";
		}

		images[index].className = "current";
		buttons[index].className = "on";

		for (var i = 0; i < buttons.length; i++) {
			buttons[i].index = i;

			buttons[i].onclick = function () {
				that = this.index;
				scrollImage(that);
			}
		}

		timer = setInterval(scrollImage, option.ms);

		wrapper.onmouseover = function () {
			clearInterval(timer);
		}

		wrapper.onmouseout = function () {
			timer = setInterval(scrollImage, option.ms);
		}
	}

	rotation({
		wrapperId: "focus_wrapper",
		imageId: "focus_image",
		buttonId: "focus_button"
	});
}