App.LeadsNewRoute = Ember.Route.extend

  setupController: (controller) ->
    controller.set 'showError', false
    controller.set 'fields', {}