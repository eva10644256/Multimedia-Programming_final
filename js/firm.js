$('#file').change(function() {
    var file = $('#file')[0].files[0];
    var reader = new FileReader;
    reader.onload = function(e) {
      $('#demo').attr('src', e.target.result);
    };
    reader.readAsDataURL(file);
  });