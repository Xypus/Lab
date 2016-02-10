$(document).ready(function() {
  $('#staining_protocol_id').on('change', function() {
    var protocols = JSON.parse($('#protocols').val());
    $('#staining_protocol_text').val(protocols[this.value]);
  });
});

