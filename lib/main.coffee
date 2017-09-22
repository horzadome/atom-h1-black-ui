root = document.documentElement

module.exports =
  activate: (state) ->
    atom.config.observe 'h1-black-ui.fontSize', (value) ->
      setFontSize(value)

    atom.config.observe 'h1-black-ui.tabSizing', (value) ->
      setTabSizing(value)

    atom.config.observe 'h1-black-ui.hideDockButtons', (value) ->
      setHideDockButtons(value)

    # DEPRECATED: This can be removed at some point (added in Atom 1.17/1.18ish)
    # It removes `layoutMode`
    if atom.config.get('h1-black-ui.layoutMode')
      atom.config.unset('h1-black-ui.layoutMode')

  deactivate: ->
    unsetFontSize()
    unsetTabSizing()
    unsetHideDockButtons()


# Font Size -----------------------

setFontSize = (currentFontSize) ->
  if Number.isInteger(currentFontSize)
    root.style.fontSize = "#{currentFontSize}px"
  else if currentFontSize is 'Auto'
    unsetFontSize()

unsetFontSize = ->
  root.style.fontSize = ''


# Tab Sizing -----------------------

setTabSizing = (tabSizing) ->
  root.setAttribute('theme-h1-black-ui-tabsizing', tabSizing.toLowerCase())

unsetTabSizing = ->
  root.removeAttribute('theme-h1-black-ui-tabsizing')


# Dock Buttons -----------------------

setHideDockButtons = (hideDockButtons) ->
  if hideDockButtons
    root.setAttribute('theme-h1-black-ui-dock-buttons', 'hidden')
  else
    unsetHideDockButtons()

unsetHideDockButtons = ->
  root.removeAttribute('theme-h1-black-ui-dock-buttons')
