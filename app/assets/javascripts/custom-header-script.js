$(document).ready(function () {
			$('#menu-bttn, #exit-menu-bttn').on('click', function(event){
			   
				event.preventDefault();
				// create menu variables
				var slideoutMenu = $('#menu');
				var slideoutMenuWidth = $('#menu').width();
				
				// toggle open class
				slideoutMenu.toggleClass("open");
				
				// slide menu
				if (slideoutMenu.hasClass("open")) {
					slideoutMenu.animate({
						left: "0px"
					});	
					
				} else {
					slideoutMenu.animate({
						left: -slideoutMenuWidth
					}, 235);	
				}
			});
			
			$(window).resize( function() {
			   var w = $(window).width();
			   
			   if (w>808) {
			  $("#menu").removeAttr('style'); 
			}
			});
			
			$(document).click(function(event) {
			  
			});
			
		});
