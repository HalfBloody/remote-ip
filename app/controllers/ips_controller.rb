class IpsController < ApplicationController
  def show
    # request.env['HTTP_TRUE_CLIENT_IP'] = "185.249.154.33"
    # request.env['HTTP_X_FORWARDED_FOR'] = "185.249.154.33, 162.158.106.34, 162.158.106.34,10.105.82.3,10.104.48.228, 10.104.82.74, 10.104.82.48"
    # request.env['REMOTE_ADDR'] = nil

    @remote_ip = request.remote_ip
    @ip = request.ip
    @http_true_client_ip = request.env['HTTP_TRUE_CLIENT_IP']
    @http_x_forwarded_for = request.env['HTTP_X_FORWARDED_FOR']
    @remote_addr = request.env['REMOTE_ADDR']
    @request_env = request.env
    @request_headers = @_headers
  end
end
