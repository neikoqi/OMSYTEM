document.addEventListener('DOMContentLoaded', function () {
    // 封装的动画函数 动画对象obj（obj要有定位）  移动的目标举例target ，返回函数callback;
    function animation(obj, target, callback) {
        clearInterval(obj.timer);
        obj.timer = setInterval(function () {
            if (obj.offsetLeft == target) {
                clearInterval(obj.timer);
                //简写利用&& 的短路          
                callback && callback();
            }
            var flag = (target - obj.offsetLeft) / 10;
            var step = flag > 0 ? Math.ceil(flag) : Math.floor(flag);
            obj.style.left = obj.offsetLeft + step + 'px';
        }, 30);
    }
    //获取节点
    var focus = document.querySelector('.focus');
    var focus_l = focus.querySelector('.focus_l');
    var focus_r = focus.querySelector('.focus_r');
    var pic_ul = focus.querySelector('.pic_ul');
    var pic_ol = document.querySelector('.focus_ol');
    //焦点图的第一张的最后一张图是一样的，直接克隆节点
    var pic_li = pic_ul.children[0].cloneNode(true);
    pic_ul.appendChild(pic_li);
    var circle = 0;
    for (var i = 0; i < pic_ul.children.length - 1; i++) {
        var ol_li = document.createElement('li');
        pic_ol.appendChild(ol_li);
        pic_ol.children[i].setAttribute('index', i);
        // 点击小圆圈，可以播放相应图片。
        pic_ol.children[i].addEventListener('click', function () {
            for (var i = 0; i < pic_ol.children.length; i++) {
                pic_ol.children[i].className = '';
            }
            this.className = 'current';
            num = this.getAttribute('index')
            circle = this.getAttribute('index');
            animation(pic_ul, -this.getAttribute('index') * focus.offsetWidth);
        })
    }
    // 鼠标不经过轮播图，轮播图也会自动播放图片 
    var time = setInterval(function () {
        focus_r.click();
    }, 4000);
    // 未点击小圆圈 ，默认选择给第一个加样式
    pic_ol.firstElementChild.className = 'current';
    //1.鼠标经过轮播图模块，左右按钮显示
    focus.addEventListener('mouseenter', function () {
        focus_l.style.display = 'block';
        focus_r.style.display = 'block';
        clearInterval(time); //鼠标经过，轮播图模块， 自动播放停止。
        time = null;
    });
    //1.鼠标经过轮播图模块，离开隐藏左右按钮。
    focus.addEventListener('mouseleave', function () {
        focus_l.style.display = 'none';
        focus_r.style.display = 'none';
        time = setInterval(function () {
            focus_r.click();
        }, 4000);
    });
    var num = 0;
    var flags = true; //节流阀 防止连续点击，造成轮播速度过快
    //.点击右侧按钮一次，图片往左播放一张，以此类推，左侧按钮同理。
    focus_r.addEventListener('click', function () {
        if (flags) {
            flags = false;
            if (num == pic_ul.children.length - 1) {
                num = 0;
                pic_ul.style.left = '0px';
            };
            num++;
            animation(pic_ul, -num * focus.offsetWidth, function () {
                flags = true;
            });
            circle++;
            if (circle == pic_ol.children.length) {
                circle = 0;
            }
            for (var i = 0; i < pic_ol.children.length; i++) {
                pic_ol.children[i].className = '';
            }
            pic_ol.children[circle].className = 'current';
        }
    });
    focus_l.addEventListener('click', function () {
        if (flags) {
            flags = false;
            if (num == 0) {
                num = pic_ul.children.length - 1;
                pic_ul.style.left = -num * focus.offsetWidth + 'px';
            }
            num--;
            animation(pic_ul, -num * focus.offsetWidth, function () {
                flags = true;
            });
            circle--;
            if (circle < 0) {
                circle = pic_ol.children.length - 1;
            }
            for (var i = 0; i < pic_ol.children.length; i++) {
                pic_ol.children[i].className = '';
            }
            pic_ol.children[circle].className = 'current';
        }
    });
})