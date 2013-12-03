$ -> $("#next-pic").on 'click', (e) ->
  e.preventDefault()
  gon.picIndex = (gon.picIndex + 1) % gon.pics.length
  currentPic = gon.pics[gon.picIndex]
  $('#pic-index').text "#{gon.picIndex + 1}"
  $('#current-pic h5').text currentPic.name
  $('#current-pic img').attr "src", currentPic.url
