App.LeadsNewView = Ember.View.extend
  tagName: 'article'
  classNames: ['lead']

  didInsertElement: ->
    $(@get('element')).addClass 'animated fadeInLeft'
    setTimeout =>
      $(@get('element')).removeClass('animated fadeInLeft')
    , 1500

  willDestroyElement: ->
    clone = this.$().clone()
    this.$().parent().append(clone)
    clone.addClass 'animated fadeOutLeft'
    setTimeout =>
      $(@get('element')).removeClass('animated fadeOutLeft').remove()
    , 1500