module Test.Html.Event.Extra exposing
    ( pressEnter
    , releaseEnter
    , pressSpace
    , releaseSpace
    , change
    )

{-| Additional builder functions for simulating Html events.

@docs pressEnter
@docs releaseEnter
@docs pressSpace
@docs releaseSpace
@docs change

-}

import Json.Encode as JE exposing (Value)


{-| Simulate the event when the enter key is pressed down, by setting `event.keyCode` value `13`.
-}
pressEnter : ( String, Value )
pressEnter =
    ( "keydown"
    , JE.object
        [ ( "keyCode"
          , JE.int 13
          )
        ]
    )


{-| Simulate the event when the enter key is released, by setting `event.keyCode` value `13`.
-}
releaseEnter : ( String, Value )
releaseEnter =
    ( "keyup"
    , JE.object
        [ ( "keyCode"
          , JE.int 13
          )
        ]
    )


{-| Simulate the event when the space key is pressed down, by setting `event.keyCode` value `32`.
-}
pressSpace : ( String, Value )
pressSpace =
    ( "keydown"
    , JE.object
        [ ( "keyCode"
          , JE.int 32
          )
        ]
    )


{-| Simulate the event when the space key is released, by setting `event.keyCode` value `32`.
-}
releaseSpace : ( String, Value )
releaseSpace =
    ( "keyup"
    , JE.object
        [ ( "keyCode"
          , JE.int 32
          )
        ]
    )


{-| Simulate [change](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/change_event) events for things like text fields or text areas.

Specify the string value for `event.target.value`.

-}
change : String -> ( String, Value )
change str =
    ( "change"
    , JE.object
        [ ( "target"
          , JE.object
                [ ( "value"
                  , JE.string str
                  )
                ]
          )
        ]
    )
