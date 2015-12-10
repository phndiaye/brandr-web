`import FilePicker from 'ember-cli-file-picker/components/file-picker'`

initialize = () ->
  FilePicker.reopen
    imageAlreadyLoaded: false

    click: (event) ->
      if @get('imageAlreadyLoaded')
        @set 'selectOnClick', false
      else
        @_super(event)
  # application.register 'route', 'foo', 'service:foo'

FilePickerDebounceInitializer =
  name: 'file-picker-debounce'
  initialize: initialize

`export {initialize}`
`export default FilePickerDebounceInitializer`
