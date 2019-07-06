$(function () {

  $("#contactForm input,#contactForm textarea").jqBootstrapValidation({
    preventSubmit: true,
    submitError: function ($form, event, errors) {
      // additional error messages or events
    },
    submitSuccess: function ($form, event) {
      event.preventDefault(); // prevent default submit behaviour
      grecaptcha.execute();
    },
    filter: function () {
      return $(this).is(":visible");
    },
  });

  $("a[data-toggle=\"tab\"]").click(function (e) {
    e.preventDefault();
    $(this).tab("show");
  });
});

/*When clicking on Full hide fail/success boxes */
$('#name').focus(function () {
  $('#success').html('');
});

function onSubmit(token) {
  $("#sendMessageButton").prop("disabled", true); // Disable submit button until AJAX call is complete to prevent duplicate messages
  // get values from FORM
  var name = $("input#name").val();
  var idvat = $("input#idvat").val();
  var email = $("input#email").val();
  var country = $("input#country").val();
  var phone = $("input#phone").val();
  var message = $("textarea#message").val();

  $.ajax({
    url: "./sendmail.php",
    type: "POST",
    data: {
      name: name,
      idvat: idvat,
      phone: phone,
      email: email,
      country: country,
      message: message,
      token: token
    },
    cache: false,
    success: function () {
      // Success message
      $('#success').html("<div class='alert alert-success'>");
      $('#success > .alert-success').html("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;")
        .append("</button>");
      $('#success > .alert-success')
        .append("<strong>Thanks for contacting us, we'll send you confirmation mail soon!</strong>");
      $('#success > .alert-success')
        .append('</div>');
      //clear all fields
      $('#contactForm').trigger("reset");
    },
    error: function () {
      // Fail message
      $('#success').html("<div class='alert alert-danger'>");
      $('#success > .alert-danger').html("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;")
        .append("</button>");
      $('#success > .alert-danger').append($("<strong>").text("Sorry, it seems that our mail server is not responding. Please try again later!"));
      $('#success > .alert-danger').append('</div>');
      //clear all fields
      $('#contactForm').trigger("reset");
    },
    complete: function () {
      setTimeout(function () {
        $("#sendMessageButton").prop("disabled", false); // Re-enable submit button when AJAX call is complete
      }, 1000);
    }
  });
}
