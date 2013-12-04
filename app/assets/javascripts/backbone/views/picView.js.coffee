class PicApp.Views.PicView extends Backbone.View

  initialize: ->
    @collection = @model.collection
    @index      = @collection.models.indexOf(@model)
    @model      = @model.clone()
    @model.on("change", => @render())

  template: JST["pic"]

  render: -> @$el.html @template @

  events: "click #next-pic": "advancePic"

  advancePic: (e) ->
    e.preventDefault()
    @model.set(@nextPic())

  nextPic: -> @collection.at(@index = (@index + 1) % @collection.length)
