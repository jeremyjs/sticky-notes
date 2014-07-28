removePeople = (project_id, person_id) ->
  $.post "/projects/" + project_id + "/remove_people",
    _method: 'patch'
    id: project_id
    people:
      people: person_id
    (data) ->
      console.log("Successfully posted.")
      location.reload()

addPeople = (project_id, person_id) ->
  $.post "/projects/" + project_id + "/add_people",
    _method: 'patch'
    id: project_id
    people:
      people: person_id
    (data) ->
      console.log("Successfully posted.")
      location.reload()

$ ->
  $('input.colors[type=text]').minicolors
    theme: 'bootstrap'

  $('.multiselect').multiselect()

  $('.grid').shapeshift()
  .on "ss-removed", (event, item) ->
    # TODO: data-id
    project_id = this.id
    item_id = item.id
    console.log("removing person " + item_id + " from project " + project_id)
    removePeople(project_id, item_id)

  .on "ss-added", (event, item) ->
    # TODO: data-id
    project_id = this.id
    item_id = item.id
    console.log("adding person " + item_id + " to project " + project_id)
    addPeople(project_id, item_id)

  $('.media-heading .action').click (event)->
    event.preventDefault()
    $action = $(event.target).first()
    person_id = $action.closest('.grid-item')[0].id
    project_id = $action.closest('.grid')[0].id
    console.log "removing person " + person_id + " from project " + project_id
    removePeople(project_id, person_id)
    location.reload()

  $('.media-heading').each ->
    margin = $(this).width() - $(this).children('.name').width()
    $(this).children('.name').css('margin-left', margin/2)

