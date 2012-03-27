// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

jQuery(document).ready(function($) {
    // Animate buttons, shrink and fade shadow
    $("#social_media li").hover(function() {
        var e = this;
        $(e).stop().animate({ marginLeft: "-10px" }, 350, function() {
           //callback for opacity if you/I decide to add it in later Jeremy
              });  
    },function(){
        var e = this;
        $(e).stop().animate({ marginLeft: "0px" }, 350, function() {
            //callback for opacity if you/I decide to add it in later Jeremy
        });
    });
// End jQuery
});

// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

//******************* Contact Us Ajaz ****************************************//

jQuery(function($){
var messageDelay = 2000;  // How long to display status messages (in milliseconds)
 
$( init );
 
 
// Initialize the form
 
function init() {
 
  // Hide the form initially.
  // Make submitForm() the formÃ¢â‚¬â„¢s submit handler.
  // Position the form so it sits in the centre of the browser window.
  $('#contactForm').hide().submit( submitForm ).addClass( 'positioned' );
 
  // When the "Send us an email" link is clicked:
  // 1. Fade the content out
  // 2. Display the form
  // 3. Move focus to the first field
  // 4. Prevent the link being followed
 
  $('a[href="#contactForm"]').click( function() {
    $('#wrapper').fadeTo( 'slow', .2 );
    $('#contactForm').fadeIn( 'slow', function() {
      $('#senderName').focus();
    } )
 
    return false;
  } );
   
  // When the "Cancel" button is clicked, close the form
  $('#cancel').click( function() { 
    $('#contactForm').fadeOut();
    $('#wrapper').fadeTo( 'slow', 1 );
  } );  
 
  // When the "Escape" key is pressed, close the form
  $('#contactForm').keydown( function( event ) {
    if ( event.which == 27 ) {
      $('#contactForm').fadeOut();
      $('#wrapper').fadeTo( 'slow', 1 );
    }
  } );
 
}

function submitForm() {
  var contactForm = $(this);
 
  // Are all the fields filled in?
 
  if ( !$('#senderName').val() || !$('#business_name') || !$('#phone_number') || !$('#senderEmail').val() || !$('#message').val() ) {
 
    // No; display a warning message and return to the form
    $('#incompleteMessage').fadeIn().delay(messageDelay).fadeOut();
    contactForm.fadeOut().delay(messageDelay).fadeIn();
 
  } else {
 
 
    $('#sendingMessage').fadeIn();
    contactForm.fadeOut();
 
    $.ajax( {
      url: contactForm.attr( 'action' ) + "?ajax=true",
      type: contactForm.attr( 'method' ),
      data: contactForm.serialize(),
      success: submitFinished
    } );
  }
 
  // Prevent the default form submission occurring
  return false;
}

function submitFinished( response ) {
  console.log(response.success);
  $('#sendingMessage').fadeOut();
  if ( response.success ) {
 
    // Form submitted successfully:
    // 1. Display the success message
    // 2. Clear the form fields
    // 3. Fade the content back in
 
    $('#successMessage').fadeIn().delay(messageDelay).fadeOut();
    $('#senderName').val( "" );
    $('#senderEmail').val( "" );
    $('#message').val( "" );
 
    $('#wrapper').delay(messageDelay+500).fadeTo( 'slow', 1 );
 
  } else {
 
    // Form submission failed: Display the failure message,
    // then redisplay the form
    $('#failureMessage').fadeIn().delay(messageDelay).fadeOut();
    $('#contactForm').delay(messageDelay+500).fadeIn();
  }
}


});
// ~-------------------
//UK Slideshow

jQuery(function($){
  front_slideshow = function(callbackFnk) {
       
        var $active_i = $('div#slides img.active');  
        var $active_c = $('div#captions div.active');
        //if ( $active_i.length == 0 ) $active_i = $('div#slides img:last');
       
        var $next_i = $active_i.next().length ? $active_i.next() : $('div#slides img:first');
        var $next_c = $active_c.next().length ? $active_c.next() : $('div#captions div:first');

             
            $active_i.animate({opacity: 0.0}, 500, function(){
              $active_i.removeClass('active');
              $next_i.css({opacity: 0.0})
                  .addClass('active')
                  .animate({opacity: 1.0}, 1000).delay(2000);
             });

             $active_c.animate({opacity: 0.0}, 500, function(){
              $active_c.removeClass('active');
              $next_c.css({opacity: 0.0})
                  .addClass('active')
                  .animate({opacity: 1.0}, 1000).delay(2000);
             });
             

      if (typeof callbackFnk === "function") {
        return callbackFnk.call(this);
      }
    }

});
  
jQuery(function($) {
  // hide all the sub-menus
  $("h3.toggle").next().hide();
   
  // prepend a plus sign to signify that the sub-menus aren't expanded
  //$("h3.toggle").prepend("+");
  
  // add a click function that toggles the sub-menu when the corresponding
  // span element is clicked
  $("h3.toggle").click(function() {
    var e = $(this);
    if(e.hasClass('active')){
      e.removeClass('active').next().slideToggle(600);
    }else{
    $('h3.toggle.active').removeClass('active').next().slideToggle(600, function(w){
      //Callback
    });
    e.addClass('active').next().slideToggle(600);
    }
    
     //switch the plus to a minus sign or vice-versa
    //var v = $(this).html().substring( 0, 1 );
   // if ( v == "+" )
  //    $(this).html( "-" + $(this).html().substring( 1 ) );
   // else if ( v == "-" )
  //    $(this).html( "+" + $(this).html().substring( 1 ) );
  });
});