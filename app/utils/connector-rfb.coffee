`import ENV from 'irene/config/environment';`

window.vncHeight = 512
window.vncWidth = 385


class ConnectorRFB

  rfb: null

  constructor: (@canvasEl, @deviceToken) ->

  connect: ->
    @rfb = new RFB
      'target': @canvasEl
      'encrypt': ENV.deviceFarmSsl
      'repeaterID': ''
      'true_color': true
      'local_cursor': false
      'shared': true
      'view_only': false

      'onUpdateState': ->
        display = @get_display()
        scaleRatio = display.autoscale window.vncHeight, window.vncWidth  # TODO: This needs to be set Dynamically
        @get_mouse().set_scale scaleRatio
        true

      'onXvpInit': ->
        true

    @rfb.connect ENV.deviceFarmHost, ENV.deviceFarmPort, '1234', "#{ENV.deviceFarmPath}?token=#{@deviceToken}"

  disconnect: ->
    @rfb.disconnect()


`export default ConnectorRFB`

