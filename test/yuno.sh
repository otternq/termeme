#!/usr/bin/env roundup
termeme="ruby ./bin/termeme"

describe "meme/yuno"

it_shows_help() {
  $termeme generate yuno rock their face off | grep "Generating Y U No meme!"
}
