class PicApp.Views.PicView extends Backbone.View
  
  initialize: ->
    @collection = @model.collection
    @index      = @collection.models.indexOf(@model)
    @model      = @model.clone()
    @model.on("change", => @render())

  render: ->
    @$('#pic-index').text "#{@index + 1}"
    @$('h5').text @model.get("name")
    @$('img').attr "src", @model.get("url")

  events: "click #next-pic": "advancePic"

  advancePic: (e) ->
    e.preventDefault()
    @model.set(@nextPic())

  nextPic: -> @collection.at(@index = (@index + 1) % @collection.length)
