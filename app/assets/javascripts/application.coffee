#= require jquery
#= require jquery_ujs
#= require bootstrap
#= require bootstrap_select
#= require jquery.minicolors
#= require turbolinks

$ ->
  $('input.colors[type=text]').minicolors
    theme: 'bootstrap'
