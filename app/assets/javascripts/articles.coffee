#// Place all the behaviors and hooks related to the matching controller here.
#// All this logic will automatically be available in application.js.

$(document).on 'ready page:load', ->
  options = {
    buttons: ['html', '|', 'formatting', 'bold', 'italic', 'underline', 'unorderedlist',
              'orderedlist', 'fontcolor', 'backcolor', 'alignment', 'horizontalrule']
    extend_buttons: [ 'link', 'table', 'image']
    minHeight: 200
    emptyHtml: ''
    convertLinksImages: true
    buttonSource: true
    convertLinksVideo: true
  }
  $('#article_content').redactor options