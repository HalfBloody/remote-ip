class IpsController < ApplicationController
  def show
    @remote_ip = request.remote_ip
    @ip = request.ip
    @http_true_client_ip = request.env['HTTP_TRUE_CLIENT_IP']
    @http_x_forwarded_for = request.env['HTTP_X_FORWARDED_FOR']
    @remote_addr = request.env['REMOTE_ADDR']
    @request_env = request.env
  end
end
