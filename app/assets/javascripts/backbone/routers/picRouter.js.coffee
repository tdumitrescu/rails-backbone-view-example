class PicApp.Routers.PicRouter extends Backbone.Router

  initialize: ->
    @pics = new PicApp.Collections.Pics(gon.pics)
    @currentPicView = new PicApp.Views.PicView
      el:    $("#current-pic")
      model: @pics.at(gon.picIndex)
    
$ -> window.picRouter = new PicApp.Routers.PicRouter()
