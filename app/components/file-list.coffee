`import Ember from 'ember'`
`import PaginateMixin from 'irene/mixins/paginate'`

FileListComponent = Ember.Component.extend PaginateMixin,

  project: null

  targetObject: "file"
  sortProperties: ["id:desc"]

  classNames: ["columns", "margin-top"]

  extraQueryStrings: Ember.computed "project.id", ->
    query =
      projectId: @get "project.id"
    JSON.stringify query, Object.keys(query).sort()

`export default FileListComponent`
