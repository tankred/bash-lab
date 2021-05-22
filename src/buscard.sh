#!/usr/bin/env bash
#ref:https://redd.it/m6erxq
###############################################
# Write a nice business card on the terminal. #
###############################################

# This is a copycat from Bryan Jenks: https://github.com/tallguyjenks/BusinessCard

# ╭═══════════════════════════════════════════════════════╮
# ║                                                       ║
# ║           Michael Tsouchlarakis / michaeltd           ║
# ║                                                       ║
# ║      Work:  tsouchlarakis@gmail.com                   ║
# ║      FOSS:  Gentoo Linux avocado.                     ║
# ║                                                       ║
# ║   Twitter:  https://twitter.com/tsouchlarakismd       ║
# ║       npm:  https://npmjs.com/~michaeltd              ║
# ║    GitHub:  https://github.com/michaeltd              ║
# ║  LinkedIn:  https://linkedin.com/in/michaeltd         ║
# ║       Web:  https://michaeltd.netlify.com/            ║
# ║                                                       ║
# ║      Card:  curl -sL https://tinyurl.com/mtd-card|sh  ║
# ║                                                       ║
# ╰═══════════════════════════════════════════════════════╯

######################################
# Font attributes, colors, bg colors #
######################################
#bg_black="$(tput setab 0)"
#bg_blue="$(tput setab 4)"
#bg_cyan="$(tput setab 6)"
#bg_default="$(tput setab 9)"
#bg_green="$(tput setab 2)"
#bg_magenta="$(tput setab 5)"
#bg_red="$(tput setab 1)"
#bg_white="$(tput setab 7)"
#bg_yellow="$(tput setab 3)"
#black="$(tput setaf 0)"
#blink="$(tput blink)"
#default="$(tput setaf 9)"
#end_underline="$(tput rmul)"
#hidden="$(tput invis)"
#reverse="$(tput rev)"
white="$(tput setaf 7)"
blue="$(tput setaf 4)"
bold="$(tput bold)"
cyan="$(tput setaf 6)"
dim="$(tput dim)"
green="$(tput setaf 2)"
magenta="$(tput setaf 5)"
red="$(tput setaf 1)"
reset="$(tput sgr0)"
underline="$(tput smul)"
yellow="$(tput setaf 3)"

cat <<EOF

${cyan}╔═════════════════════════════════════════════════════════╗
${cyan}║                                                         ║
${cyan}║${reset}             ${red}~      891_ productions     ~${reset}               ${cyan}║
${cyan}║                                                         ║
${cyan}╠═════════════════════════════════════════════════════════╣
${cyan}║                                                         ║
${cyan}║${reset}    ${red}${reset}  ${bold}891_:${reset} ${bold} Art & Web development${reset} ${red}${reset}                      ${cyan}║
${cyan}║                                                         ║
${cyan}║${reset}     ${bold}Email:${reset}  ${green}kurt.duyck@protonmail.com                   ${cyan}║
${cyan}║                                                         ║
${cyan}║${reset}  ${bold}Mastodon:${reset}  ${dim}https://mastodon.social/${reset}${blue}@miccaman           ${cyan}║
${cyan}║${reset}   ${bold}Twitter:${reset}  ${dim}https://twitter.com/${reset}${white}miccaman                ${cyan}║
${cyan}║${reset}    ${bold}Reddit:${reset}  ${dim}https://www.reddit.com/user/${reset}${red}miccaman        ${cyan}║
${cyan}║                                                         ║
${cyan}║${reset}      ${bold}Card:${reset}  ${yellow}curl -sL https://ttm.sh/2eR | sh            ${cyan}║
${cyan}║                                                         ║
${cyan}╚═════════════════════════════════════════════════════════╝

EOF

