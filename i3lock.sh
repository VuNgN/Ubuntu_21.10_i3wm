#!/bin/sh

BACKGROUND='#222831'
BORDER='#00ADB5'
BACKGROUND2='#393E46'
TEXT='#EEEEEE'
WARNING='#F05454'


i3lock \
	--insidever-color=$BACKGROUND     \
	--ringver-color=$BORDER           \
	\
	--insidewrong-color=$BACKGROUND   \
	--ringwrong-color=$WARNING        \
	\
	--inside-color=$BACKGROUND        \
	--ring-color=$BACKGROUND2         \
	--line-color=$BACKGROUND          \
	--separator-color=$BACKGROUND2    \
	\
	--verif-color=$TEXT               \
	--wrong-color=$WARNING            \
	--time-color=$TEXT                \
	--date-color=$TEXT                \
	--layout-color=$TEXT              \
	--keyhl-color=$BORDER             \
	--bshl-color=$BORDER              \
	\
	--screen 1                   \
	--blur 5                     \
	--clock                      \
	--indicator                  \
	--time-str="%H:%M:%S"        \
	--date-str="%A, %m %Y"       \
	--keylayout 1                \
	--nofork                     \
