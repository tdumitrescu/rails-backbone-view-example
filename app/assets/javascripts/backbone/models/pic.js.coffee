class PicApp.Models.Pic extends Backbone.Model
  index:   -> @collection.models.indexOf(@)
  nextPic: -> @collection.at((@index() + 1) % @collection.length)
  
class PicApp.Collections.Pics extends Backbone.Collection
  model: PicApp.Models.Pic
