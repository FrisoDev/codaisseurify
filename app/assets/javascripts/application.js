//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .

$(document).on('ready page:load', function (){

  var songsList = $('#songs-list');
  var deleteButtons = $('.delete-button');
  var deleteAllSongsButton = $('#delete-all');
  var emptyListMsg = $('#empty-list');

  toggleListStatus();
  initializeEventListeners();


function addSongToDOM(name, id) {
  var newLi = $('<li></li>');
  newLi.html(name);
  newLi.attr('data-id', id);
  songList.append(newLi);

  var deleteButton = $('<button></button>');
 deleteButton.html('x');
 deleteButton.addClass('delete-button');
 deleteButton.on('click', deleteSong);
 listItem.append(deleteButton);
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
    inputField.val(null);
  }).fail(function (response) {
    alert("wahahjskdhasda");
  });
}

function removeSongFromDOM(item) {
  item.remove();
  toggleListStatus();
}

function deleteSong(event) {
  var listItem = $(event.target.parentElement);
  var songId = listItem.attr('data-id');

  $.ajax({
    url: `/api/artists/${artistId}/songs/${songId}`,
    method: 'DELETE',
  }).success(function () {
    removeSongFromDOM(listItem);
  }).fail(function () {
    alert('Could not delete song.');
  });
}

function removeSongsFromDOM() {
  songsList.html("");
}

function deleteAllSongs() {
  $.ajax({
    url: `/api/artists/${artistId}/songs`,
    method: 'DELETE',
  }).success(function () {
    removeSongsFromDOM();
    toggleListStatus();
  }).fail(function () {
    alert('Could not delete songs.');
  });
}

function toggleListStatus() {
  if (songsList.html().trim() == "") {
    emptyListMsg.show();
  } else {
    emptyListMsg.hide();
  }
}

function initializeEventListeners() {
  deleteButtons.on('click', deleteSong);
  deleteAllSongsButton.on('click', deleteAllSongs);
}
});
