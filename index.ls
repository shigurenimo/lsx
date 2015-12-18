require! \react : React

process = ->
    a = []
    unless arguments[0][1] is undefined
    then
        a = Array.prototype.slice.call arguments[0], 1
    else
        a = Array.prototype.slice.call arguments[0], 2
        a.shift arguments[0][1]
    unless arguments[0][0][0] is undefined
    then a.unshift arguments[0][0][0]
    else a.unshift null
    return a

export
    React:React

    Component:React.Component

    io:(component) ->
        if typeof component is 'object'
            component = React.createClass component
        -> React.createFactory component .apply @, process arguments

    type:
        any:React.PropTypes.any
        array:React.PropTypes.array
        arrayOf:React.PropTypes.arrayOf
        bool:React.PropTypes.bool
        element:React.PropTypes.element
        func:React.PropTypes.func
        instanceOf:React.PropTypes.instanceOf
        node:React.PropTypes.node
        number:React.PropTypes.number
        object:React.PropTypes.object
        objectOf:React.PropTypes.objectOf
        oneOf:React.PropTypes.oneOf
        oneOfType:React.PropTypes.oneOfType
        shape:React.PropTypes.shape
        string:React.PropTypes.string

    a: ->
        React.DOM.a
        .apply @, process arguments
    abbr: ->
        React.DOM.abbr
        .apply @, process arguments
    address: ->
        React.DOM.address
        .apply @, process arguments
    area: ->
        React.DOM.area
        .apply @, process arguments
    article: ->
        React.DOM.article
        .apply @, process arguments
    aside: ->
        React.DOM.aside
        .apply @, process arguments
    audio: ->
        React.DOM.audio
        .apply @, process arguments
    b: ->
        React.DOM.b
        .apply @, process arguments
    base: ->
        React.DOM.base
        .apply @, process arguments
    bdi: ->
        React.DOM.bdi
        .apply @, process arguments
    bdo: ->
        React.DOM.bdo
        .apply @, process arguments
    big: ->
        React.DOM.big
        .apply @, process arguments
    blockquote: ->
        React.DOM.blockquote
        .apply @, process arguments
    body: ->
        React.DOM.body
        .apply @, process arguments
    br: ->
        React.DOM.br
        .apply @, process arguments
    button: ->
        React.DOM.button
        .apply @, process arguments
    canvas: ->
        React.DOM.canvas
        .apply @, process arguments
    caption: ->
        React.DOM.caption
        .apply @, process arguments
    cite: ->
        React.DOM.cite
        .apply @, process arguments
    code: ->
        React.DOM.code
        .apply @, process arguments
    col: ->
        React.DOM.col
        .apply @, process arguments
    colgroup: ->
        React.DOM.colgroup
        .apply @, process arguments
    data: ->
        React.DOM.data
        .apply @, process arguments
    datalist: ->
        React.DOM.datalist
        .apply @, process arguments
    dd: ->
        React.DOM.dd
        .apply @, process arguments
    del: ->
        React.DOM.del
        .apply @, process arguments
    details: ->
        React.DOM.details
        .apply @, process arguments
    dfn: ->
        React.DOM.dfn
        .apply @, process arguments
    dialog: ->
        React.DOM.dialog
        .apply @, process arguments
    div: ->
        React.DOM.div
        .apply @, process arguments
    dl: ->
        React.DOM.dl
        .apply @, process arguments
    dt: ->
        React.DOM.dt
        .apply @, process arguments
    em: ->
        React.DOM.em
        .apply @, process arguments
    embed: ->
        React.DOM.embed
        .apply @, process arguments
    fieldset: ->
        React.DOM.fieldset
        .apply @, process arguments
    figcaption: ->
        React.DOM.figcaption
        .apply @, process arguments
    figure: ->
        React.DOM.figure
        .apply @, process arguments
    footer: ->
        React.DOM.footer
        .apply @, process arguments
    form: ->
        React.DOM.form
        .apply @, process arguments
    h1: ->
        React.DOM.h1
        .apply @, process arguments
    h2: ->
        React.DOM.h2
        .apply @, process arguments
    h3: ->
        React.DOM.h3
        .apply @, process arguments
    h4: ->
        React.DOM.h4
        .apply @, process arguments
    h5: ->
        React.DOM.h5
        .apply @, process arguments
    h6: ->
        React.DOM.h6
        .apply @, process arguments
    head: ->
        React.DOM.head
        .apply @, process arguments
    header: ->
        React.DOM.header
        .apply @, process arguments
    hr: ->
        React.DOM.hr
        .apply @, process arguments
    html: ->
        React.DOM.html
        .apply @, process arguments
    i: ->
        React.DOM.i
        .apply @, process arguments
    iframe: ->
        React.DOM.iframe
        .apply @, process arguments
    img: ->
        React.DOM.img
        .apply @, process arguments
    input: ->
        React.DOM.input
        .apply @, process arguments
    ins: ->
        React.DOM.ins
        .apply @, process arguments
    kbd: ->
        React.DOM.kbd
        .apply @, process arguments
    keygen: ->
        React.DOM.keygen
        .apply @, process arguments
    label: ->
        React.DOM.label
        .apply @, process arguments
    legend: ->
        React.DOM.legend
        .apply @, process arguments
    li: ->
        React.DOM.li
        .apply @, process arguments
    link: ->
        React.DOM.link
        .apply @, process arguments
    main: ->
        React.DOM.main
        .apply @, process arguments
    map: -> #!
        React.DOM.map
        .apply @, process arguments
    mark: ->
        React.DOM.mark
        .apply @, process arguments
    menu: ->
        React.DOM.menu
        .apply @, process arguments
    menuitem: ->
        React.DOM.menuitem
        .apply @, process arguments
    meta: ->
        React.DOM.meta
        .apply @, process arguments
    meter: ->
        React.DOM.meter
        .apply @, process arguments
    nav: ->
        React.DOM.nav
        .apply @, process arguments
    noscript: ->
        React.DOM.noscript
        .apply @, process arguments
    object: ->
        React.DOM.object
        .apply @, process arguments
    ol: ->
        React.DOM.ol
        .apply @, process arguments
    optgroup: ->
        React.DOM.optgroup
        .apply @, process arguments
    option: ->
        React.DOM.option
        .apply @, process arguments
    output: ->
        React.DOM.output
        .apply @, process arguments
    p: ->
        React.DOM.p
        .apply @, process arguments
    param: ->
        React.DOM.param
        .apply @, process arguments
    picture: ->
        React.DOM.picture
        .apply @, process arguments
    pre: ->
        React.DOM.pre
        .apply @, process arguments
    progress: ->
        React.DOM.progress
        .apply @, process arguments
    q: ->
        React.DOM.q
        .apply @, process arguments
    rp: ->
        React.DOM.rp
        .apply @, process arguments
    rt: ->
        React.DOM.rt
        .apply @, process arguments
    ruby: ->
        React.DOM.ruby
        .apply @, process arguments
    s: ->
        React.DOM.s
        .apply @, process arguments
    samp: ->
        React.DOM.samp
        .apply @, process arguments
    script: ->
        React.DOM.script
        .apply @, process arguments
    section: ->
        React.DOM.section
        .apply @, process arguments
    select: ->
        React.DOM.select
        .apply @, process arguments
    small: ->
        React.DOM.small
        .apply @, process arguments
    source: ->
        React.DOM.source
        .apply @, process arguments
    span: ->
        React.DOM.span
        .apply @, process arguments
    strong: ->
        React.DOM.strong
        .apply @, process arguments
    style: ->
        React.DOM.style
        .apply @, process arguments
    sub: ->
        React.DOM.sub
        .apply @, process arguments
    summary: ->
        React.DOM.summary
        .apply @, process arguments
    sup: ->
        React.DOM.sup
        .apply @, process arguments
    table: ->
        React.DOM.table
        .apply @, process arguments
    tbody: ->
        React.DOM.tbody
        .apply @, process arguments
    td: ->
        React.DOM.td
        .apply @, process arguments
    textarea: ->
        React.DOM.textarea
        .apply @, process arguments
    tfoot: ->
        React.DOM.tfoot
        .apply @, process arguments
    th: ->
        React.DOM.th
        .apply @, process arguments
    thead: ->
        React.DOM.thead
        .apply @, process arguments
    time: ->
        React.DOM.time
        .apply @, process arguments
    title: ->
        React.DOM.title
        .apply @, process arguments
    tr: ->
        React.DOM.tr
        .apply @, process arguments
    track: ->
        React.DOM.track
        .apply @, process arguments
    u: ->
        React.DOM.u
        .apply @, process arguments
    ul: ->
        React.DOM.ul
        .apply @, process arguments
    video: ->
        React.DOM.video
        .apply @, process arguments
    wbr: ->
        React.DOM.wbr
        .apply @, process arguments

    # svg

    circle: ->
        React.DOM.circle
        .apply @, process arguments
    clipPath: ->
        React.DOM.clipPath
        .apply @, process arguments
    defs: ->
        React.DOM.defs
        .apply @, process arguments
    ellipse: ->
        React.DOM.ellipse
        .apply @, process arguments
    g: ->
        React.DOM.g
        .apply @, process arguments
    line: ->
        React.DOM.line
        .apply @, process arguments
    linearGradient: ->
        React.DOM.linearGradient
        .apply @, process arguments
    mask: ->
        React.DOM.mask
        .apply @, process arguments
    path: ->
        React.DOM.path
        .apply @, process arguments
    pattern: ->
        React.DOM.pattern
        .apply @, process arguments
    polygon: ->
        React.DOM.polygon
        .apply @, process arguments
    polyline: ->
        React.DOM.polyline
        .apply @, process arguments
    radialGradient: ->
        React.DOM.radialGradient
        .apply @, process arguments
    rect: ->
        React.DOM.rect
        .apply @, process arguments
    stop: ->
        React.DOM.stop
        .apply @, process arguments
    svg: ->
        React.DOM.svg
        .apply @, process arguments
    text: ->
        React.DOM.text
        .apply @, process arguments
    tspan: ->
        React.DOM.tspan
        .apply @, process arguments
