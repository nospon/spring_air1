<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="UTF-8">
<title>untitle</title>




<style>
* {
	margin: 0;
	padding: 0;
	text-decoration: none;
}

li {
	list-style: none
}

.gallery-wrapper {
	position: relative;
	width: 1910px;		
	margin: 0 auto;	
	margin-left: -352px;
}

.gallery-wrapper .gallery-list {
	overflow: visible;
	position: relative;
	width: 1910px;
	height: 580px;
}

.gallery-wrapper .gallery-list li {
	position: absolute;
	left: 0;
	display: none
}

.gallery-wrapper .gallery-list li:first-child {
	display: block;
}

.gallery-wrapper .gallery-list li.active {
	display: block;
}

.gallery-wrapper .gallery-list li a {
	display: block;
	text-align: center;
}

.gallery-wrapper .gallery-list li a img {
	display: block;
}

.gallery-wrapper .btn-prev, .gallery-wrapper .btn-next {
	position: absolute;
	top: 160px;
	color: #f4e9ed;
	font-size: 28px;
}

.gallery-wrapper .btn-prev {
	left: 20px;	
	top: 240px;
}

.gallery-wrapper .btn-next {
	right: 20px;
	top: 240px;	
}

.ctrl-box {
	margin-top: -45px;
	margin-left: 380px;
	text-align: center;
	position: relative;
	z-index: 100;
}

.ctrl-box a {
	background: rgba(0,0,0,0);
}

.ctrl-box a .bullet {
	display: inline-block;
	width: 17px;
	height: 17px;
	border: 2px solid #cfd2d7;
	border-radius: 100%;
	background: #dfe2e7;
	text-indent: -9999em;
	font-size: 0;
	margin-left: 7px;
	vertical-align: middle
}


.ctrl-box a.active .bullet {
	border: 2px solid #d43a3a;
	background: #fe5674;
}

.btn-ctrl {
	margin-left: 10px;
	padding: 0 4px;
	border: 1px solid #b6b6b6;
	border-radius: 4px;
	background-color: #dadada;
	line-height: 20px;
}
</style>

<script>
	window.console = window.console || function(t) {
	};
</script>



<script>
	if (document.location.search.match(/type=embed/gi)) {
		window.parent.postMessage("resize", "*");
	}
</script>


</head>

<body translate="no">

	<div id="slider01" class="gallery-wrapper">
		<ul class="gallery-list">
			<li><a href="#none"><img
					src="resources/image/main_images/main_top2.PNG" alt="" /></a></li>
			<li><a href="#none"><img
					src="resources/image/main_images/main_top1.PNG" alt="" /></a></li>
			<li><a href="#none"><img
					src="resources/image/main_images/main_top3.PNG" alt="" /></a></li>			
		</ul>
		<a class="btn-prev" href="#none">◀</a> <a class="btn-next"
			href="#none">▶</a>

		<div class="ctrl-box">
			<a href="#none" class="active"><i class="bullet">1</i></a> <a
				href="#none"><i class="bullet">2</i></a> <a href="#none"><i
				class="bullet">3</i></a> <button type="button" class="btn-ctrl auto">정지</button>
		</div>
	</div>
	<script
		src="//static.codepen.io/assets/common/stopExecutionOnTimeout-41c52890748cd7143004e05d3c5f786c66b19939c4500ce446314d1748483e13.js"></script>

	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>



	<script>
		var JUI = JUI || {};

		!function(param) {
			var global = param.g, $ = param.jQ;

			JUI.slider = function(selector, options) {

				var container = $(selector), detect = {}, config = {
					speed : 800,
					isSelected : 'active',
					autoPlay : true,
					duration : 2500
				};

				if (!container.length) {
					return;
				}

				$.extend(config, options);

				function setting() {

					detect.$listBox = container.find('.gallery-list');
					detect.$lists = detect.$listBox.children('li');
					detect.width = detect.$listBox.width();
					detect.$indicate = container.find('.ctrl-box a');
					detect.view = '.gallery-list';
					detect.indicate = '.ctrl-box a';
					detect.prev = '.btn-prev';
					detect.next = '.btn-next';
					detect.ctrl = '.btn-ctrl';
					detect.max = detect.$indicate.length - 1;
					detect.min = 0;
					detect.currentIndex = 0;
					detect.selectedIndex = null;
					detect.intervalId = null;

				}
				setting();

				function next(evt) {

					if (evt.type === 'mouseenter') {
						clearInterval(detect.intervalId);
						return false;
					}

					detect.selectedIndex = detect.currentIndex + 1;
					if (detect.selectedIndex > detect.max) {
						detect.selectedIndex = 0;
					}

					toMove(detect.selectedIndex, detect.width);

				}

				function prev(evt) {

					if (evt.type === 'mouseenter') {
						clearInterval(detect.intervalId);
						return false;
					}

					detect.selectedIndex = detect.currentIndex - 1;
					if (detect.selectedIndex < detect.min) {
						detect.selectedIndex = detect.max;
					}
					toMove(detect.selectedIndex, -detect.width);
				}

				function direction(selectedIndex) {
					return detect.currentIndex < selectedIndex ? 'goToRight'
							: 'goToLeft';
				}

				function toMove(selectedIndex, offset) {

					if (detect.selectedIndex == detect.currentIndex)
						return;
					if (detect.$lists.is(':animated'))
						return;

					detect.$lists.eq(selectedIndex).css({
						'left' : offset
					}).addClass(config.isSelected);
					detect.$lists.eq(selectedIndex).animate({
						'left' : 0
					}, config.speed);

					detect.$indicate.eq(detect.currentIndex).removeClass(
							config.isSelected);
					detect.$indicate.eq(selectedIndex).addClass(
							config.isSelected);

					detect.$lists.eq(detect.currentIndex).animate({
						'left' : -offset
					}, config.speed, function() {
						afterMoving(selectedIndex);
					});
				}

				function afterMoving(selectedIndex) {
					detect.$lists.eq(detect.currentIndex).removeClass(
							config.isSelected);
					detect.currentIndex = selectedIndex;
				}

				$(document)
						.on(
								'click.slide.indicate',
								detect.indicate,
								function() {
									detect.selectedIndex = $(this).index();
									var position = direction(detect.selectedIndex), offset = null;

									switch (position) {
									case 'goToRight':
										offset = detect.width;
										break;
									case 'goToLeft':
										offset = -detect.width;
									}
									toMove(detect.selectedIndex, offset);
								}).on('click.slide.next, mouseenter',
								detect.next, next).on(
								'click.slide.prev, mouseenter', detect.prev,
								prev).on('click.slide.ctrl', detect.ctrl,
								controller);

				function startInterval() {
					detect.intervalId = setInterval(autoMoving, config.duration);
				}

				function autoMoving() {
					$(detect.next).trigger('click');
				}

				config.autoPlay ? startInterval() : controlState();

				function controller() {
					var $target = $(this);
					if ($target.is('.auto')) {
						clearInterval(detect.intervalId);
						$target.removeClass('auto').text('재생');
					} else {
						$target.addClass('auto').text('정지');
						startInterval();
					}
				}

				function controlState() {
					$(detect.ctrl).removeClass('auto').text('재생')
				}

				$(detect.view + "," + detect.indicate).on({
					'mouseenter' : function() {
						clearInterval(detect.intervalId);
					},
					'mouseleave' : function() {
						if (!$(detect.ctrl).is('.auto')) {
							return;
						}
						startInterval();
					}
				});

			};

		}({
			g : window,
			jQ : window.jQuery
		});

		$(function() {
			/**
			 * @param1 필수, @param2 옵션
			 * @param @type selector : 슬라이드 컨테이닝 박스
			 * @param @type {} : 객체 리터럴(옵션값)
			 * 기본값 {isSelected : 'active', speed:400, duration: 2500, autoPlay: true}
			 */

			// 기본 옵션값으로 호출할 경우 옵션 생략가능
			JUI.slider('#slider01');

			// 사용자 정의 옵션값으로 호출
			/*
			JUI.slider('#slider01', {
				speed : 200,
				duration: 4000,
				autoPlay: false
			})
			 */
		});
		//# sourceURL=pen.js
	</script>






</body>

