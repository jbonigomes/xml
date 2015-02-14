$(function($) {

  $.get('contacts.xml.txt', function(data) {
    $('#contactsxml').text(data).html();
  });

  $.get('contacts.dtd.txt', function(data) {
    $('#contactsdtd').text(data).html();
  });

  $.get('contacts.xsd.txt', function(data) {
    $('#contactsxsd').text(data).html();
  });

});
