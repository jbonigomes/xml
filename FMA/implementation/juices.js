(function() {
  var juicelinks = document.querySelectorAll('.leftnavcontainer a');
  var rightcols  = document.querySelectorAll('.rightcol');

  for(i = 0; i < juicelinks.length; i++) {
    juicelinks[i].addEventListener('click', function(e) {
      
      var link   = e.target;
      var typeid = link.getAttribute('data-type');

      for(j = 0; j < juicelinks.length; j++) {
        juicelinks[j].classList.remove('current');  
      }

      for(j = 0; j < rightcols.length; j++) {
        rightcols[j].classList.add('hidden');  
      }
      
      link.classList.add('current');

      document.getElementById('type_' + typeid).classList.remove('hidden');
    });
  }
})();
