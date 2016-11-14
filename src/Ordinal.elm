module Ordinal
    exposing
        ( ordinal
        , ordinalSuffix
        )

{-| A library for converting integers (`23`, `0`, `-2`) to English ordinal
strings (`"23rd"`, `"0th"`, `"-2nd"`).

# Ordinal conversion
@docs ordinal
@docs ordinalSuffix

-}

{- Ordinal -}


{-| Get the English ordinal suffix (st/nd/rd/th) for a given integer.

    ordinalSuffix 42 == "nd"
    ordinalSuffix 0 == "th"
    ordinalSuffix (-1) == "st"
-}
ordinalSuffix : Int -> String
ordinalSuffix n =
    let
        n_ =
            abs n
    in
        if n_ % 100 // 10 == 1 then
            "th"
        else
            case n_ % 10 of
                1 ->
                    "st"

                2 ->
                    "nd"

                3 ->
                    "rd"

                _ ->
                    "th"


{-| Convert an integer into an English ordinal number string (like `"4th"`).

    ordinal 42 == "42nd"
    ordinal 0 == "0th"
    ordinal (-1) == "-1st"
-}
ordinal : Int -> String
ordinal n =
    toString n ++ ordinalSuffix n
