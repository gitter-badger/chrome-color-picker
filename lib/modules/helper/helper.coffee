# all the helper functions and prototypes are bundled here
module.exports =
class Helper
  String::isRegistered = ->
    document.createElement(this).constructor isnt HTMLElement

  # create a new component
  createComponent: (name) ->
    # create a custom element for the inner panel if not already done
    if not name.isRegistered()
      document.registerElement name

    component = document.createElement name

  # add element to the panel
  add: (element) ->
    @component.appendChild element.component

  # delete the element from it's parentNode
  delete: ->
    @component.parentNode.removeChild @component

  # add class to the panel
  addClass: (classes) ->
    @component.classList.add classes

  # remove class from the panel
  removeClass: (classes) ->
    @component.classList.remove classes
