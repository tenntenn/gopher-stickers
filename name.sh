#!/bin/bash

LIST=(
    "hi"
    "cry"
    "angry"
    "cheer"
    "hide"
    "hide_away"
    "sigh"
    "hungry"
    "beer"
    "sleepy"
    "sleeping"
    "awake"
    "embarrass"
    "ok"
    "no"
    "good_morning"
    "hot"
    "cold"
    "work"
    "lovely"
    "question"
    "surprise"
    "tehepero"
    "bye"
    "thank_you"
    "hot_spring"
    "scare"
    "faint"
    "sorry"
    "run_away"
    "cook"
    "baseball"
    "balloon"
    "autumn"
    "spring"
    "ninja"
)

for (( I = 0; I < ${#LIST[@]}; ++I ))
do
    mv png/$(printf "%02d" $(expr $I + 1)).png png/${LIST[$I]}.png
done

mv png/sheet.png stickers.png
