describe "One Dark UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('h1-black-ui')

  it "allows the font size to be set via config", ->
    expect(document.documentElement.style.fontSize).toBe ''

    atom.config.set('h1-black-ui.fontSize', '10')
    expect(document.documentElement.style.fontSize).toBe '10px'

    atom.config.set('h1-black-ui.fontSize', 'Auto')
    expect(document.documentElement.style.fontSize).toBe ''

  it "allows the tab sizing to be set via config", ->
    atom.config.set('h1-black-ui.tabSizing', 'Maximum')
    expect(document.documentElement.getAttribute('theme-h1-black-ui-tabsizing')).toBe 'maximum'

  it "allows the tab sizing to be set via config", ->
    atom.config.set('h1-black-ui.tabSizing', 'Minimum')
    expect(document.documentElement.getAttribute('theme-h1-black-ui-tabsizing')).toBe 'minimum'

  it "allows the dock toggle buttons to be hidden via config", ->
    atom.config.set('h1-black-ui.hideDockButtons', true)
    expect(document.documentElement.getAttribute('theme-h1-black-ui-dock-buttons')).toBe 'hidden'
