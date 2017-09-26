// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function(){
	
	var response  = "";
	response = $.ajax({ type: "GET",   
         url: "/deadline",   
		     async: false,
         success : function(json){
         		var myDate = new Date();
         		var deadDate = new Date(json.deadline);
						var delta = Math.abs(deadDate - myDate) / 1000;
						
						var days = Math.floor(delta / 86400);
						delta -= days * 86400;
						
						var hours = Math.floor(delta / 3600) % 24;
						delta -= hours * 3600;
						
						var minutes = Math.floor(delta / 60) % 60;
						delta -= minutes * 60;
						
						var seconds = delta % 60; 
         		myDate.setDate(myDate.getDate() + days);
         		myDate.setHours(myDate.getHours() + hours);
         		myDate.setMinutes(myDate.getMinutes() + minutes);
         		myDate.setSeconds(myDate.getSeconds() + seconds);

						$("#countdown").countdown(myDate, function (event) {
								$(this).html(
									event.strftime(
									'<div class="timer-wrapper"><div class="time">%D</div><span class="text">DAYS </span></div><div class="timer-wrapper"><div class="time">%H</div><span class="text">HRS </span></div><div class="timer-wrapper"><div class="time">%M </div><span class="text">MINS </span></div><div class="timer-wrapper"><div class="time">%S</div><span class="text">SEC </span></div>'
									)
								);
							});
         }
 });
});
