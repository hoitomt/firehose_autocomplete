function hideTable() {
  $('#result_table').hide();
};

function showTable() {
  $('#result_table').show();
};

function bindSearchBox(){
  $('#search_term').on('input', function() {
    var searchTerm = $('#search_term').val();
    console.log("Search Term: " + searchTerm);
    if(searchTerm.length >= 2) {
      $.get('/states/search?search_term=' + searchTerm, function(data){
        $.each(data.states, function(index, state){
          var html = '<tr>';
          html += '<td>' + state.abbreviation + '</td>';
          html += '<td>' + state.name + '</td>';
          html += '<td>' + state.capital + '</td>';
          html += '</tr>';
          $('table#result_table').append(html);
        });
        showTable();
      });
    }
  });
};

// Runs on Page Load
$(function(){
  hideTable();
  bindSearchBox();
});

