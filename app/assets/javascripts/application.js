//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .

var songList = $('#songlist');

function addSongToDOM(name, id) {
  var newLi = $('<li></li>');
  newLi.html(name);
  newLi.attr('data-id', id);
  songList.append(newLi);
}

function submitSong(event) {
  event.preventDefault();
  var inputField = $('#song-input');
  var songTitle = inputField.val();

  $.ajax({
    url: `/api/artists/${artistId}/songs`,
    method: 'POST',
    data: {
      name: songTitle
    }
  }).success(function (response) {
    var songId = response.song.id;
    addSongToDOM(songTitle, songId);
    console.log(songTitle);
    inputField.val(null);
  }).fail(function (response) {
    alert("wahahjskdhasda");
  });
}
