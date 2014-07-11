#!/usr/bin/env roundup
termeme="ruby ./bin/termeme"

describe "cli"

it_shows_help() {
  $termeme help | grep "termeme: help"
}

it_shows_help_yuno() {
  $termeme usage | grep "termeme generate yuno <top text>"
}

it_shows_help_yuno() {
  $termeme help yuno | grep "termeme generate yuno <top text>"
}

it_shows_usage_yuno() {
  $termeme help yuno | grep "termeme generate yuno <top text>"
}

it_shows_yuno_help() {
  $termeme help yuno | grep "termeme generate yuno <top text>"
}

it_shows_yuno_usage() {
  $termeme help yuno | grep "termeme generate yuno <top text>"
}
