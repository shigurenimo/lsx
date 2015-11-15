require! \react-dom           : ReactDOM
require! \./React-Live-Plugin : { Live, init, type, div, a, p }

test-div = init class extends Live

    (props) !->
        super props
        @state =
            count: []

    @propTypes =
        test:type.string

    @defaultProps =
        test:\defaultID

    render: ->
        div [id:@props.test],
            p [] @props.children

Main = init class extends Live
    render: ->
        div [],
            div [] \r
            div [],
                div [] \hello
                test-div [test:"s"],
                    a []
                    a [] \world
            div [ class-name: \q ]
            div [ class-name: \fff ] \ss

window.onload = ->
    \app |> document.createElement
         |> document.body.appendChild
    ReactDOM.render do
        Main []
        \app |> document.querySelector
