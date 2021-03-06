class Capybara::Typhoeus::Session < Capybara::Session

  [:get, :post, :put, :delete, :head, :patch, :request].each do |method|
    define_method(method) do |url, params={}, headers={}, &block|
      @touched = true

      driver.send method, host_url(url), params, headers, &block
    end
  end

  def authenticate_with(login, password)
    driver.authenticate_with login, password
  end

  def timed_out?
    driver.timed_out?
  end

  def host_url(url)
    if url !~ /^http/ and Capybara.app_host
      url = Capybara.app_host + url.to_s
    end

    if @server
      url = "http://#{@server.host}:#{@server.port}" + url.to_s unless url =~ /^http/

      if Capybara.always_include_port
        uri = URI.parse url
        uri.port = @server.port if uri.port == uri.default_port
        url = uri.to_s
      end
    end

    url
  end

  def timeout
    driver.options[:timeout]
  end

  def request_body
    driver.request_body
  end

  def request_body=(value)
    driver.request_body = value
  end

  def as=(value)
    driver.as = value
  end

end
