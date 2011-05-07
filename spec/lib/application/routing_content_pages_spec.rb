# encoding: UTF-8
require "spec_helper"
require "rack/test"

describe Mango::Application do
  include Rack::Test::Methods

  def app
    Mango::Application
  end

  #################################################################################################

  describe "GET (empty String)" do
    before(:each) do
      get ""
    end

    it "returns 200 status code" do
      last_response.should be_ok
    end

    it "sends the correct Content-Type header" do
      last_response["Content-Type"].should == "text/html;charset=utf-8"
    end

    it "sends the correct body content" do
      last_response.body.should == <<-EXPECTED
<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8' />
    <title>layout.haml</title>
  </head>
  <body>
    <h1>Welcome to Mango!</h1>
    <p id='template'>page.haml</p>
    <div id='content'>
      <p>/index.haml</p>
    </div>
  </body>
</html>
      EXPECTED
    end
  end

  #################################################################################################

  describe "GET /" do
    before(:each) do
      get "/"
    end

    it "returns 200 status code" do
      last_response.should be_ok
    end

    it "sends the correct Content-Type header" do
      last_response["Content-Type"].should == "text/html;charset=utf-8"
    end

    it "sends the correct body content" do
      last_response.body.should == <<-EXPECTED
<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8' />
    <title>layout.haml</title>
  </head>
  <body>
    <h1>Welcome to Mango!</h1>
    <p id='template'>page.haml</p>
    <div id='content'>
      <p>/index.haml</p>
    </div>
  </body>
</html>
      EXPECTED
    end
  end

  #################################################################################################

  describe "GET /index" do
    before(:each) do
      get "/index"
    end

    it "returns 200 status code" do
      last_response.should be_ok
    end

    it "sends the correct Content-Type header" do
      last_response["Content-Type"].should == "text/html;charset=utf-8"
    end

    it "sends the correct body content" do
      last_response.body.should == <<-EXPECTED
<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8' />
    <title>layout.haml</title>
  </head>
  <body>
    <h1>Welcome to Mango!</h1>
    <p id='template'>page.haml</p>
    <div id='content'>
      <p>/index.haml</p>
    </div>
  </body>
</html>
      EXPECTED
    end
  end

  #################################################################################################

  describe "GET /index?foo=bar" do
    before(:each) do
      get "/index?foo=bar"
    end

    it "returns 200 status code" do
      last_response.should be_ok
    end

    it "sends the correct Content-Type header" do
      last_response["Content-Type"].should == "text/html;charset=utf-8"
    end

    it "sends the correct body content" do
      last_response.body.should == <<-EXPECTED
<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8' />
    <title>layout.haml</title>
  </head>
  <body>
    <h1>Welcome to Mango!</h1>
    <p id='template'>page.haml</p>
    <div id='content'>
      <p>/index.haml</p>
    </div>
  </body>
</html>
      EXPECTED
    end
  end

  #################################################################################################

  describe "GET /about/" do
    before(:each) do
      get "/about/"
    end

    it "returns 200 status code" do
      last_response.should be_ok
    end

    it "sends the correct Content-Type header" do
      last_response["Content-Type"].should == "text/html;charset=utf-8"
    end

    it "sends the correct body content" do
      last_response.body.should == <<-EXPECTED
<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8' />
    <title>layout.haml</title>
  </head>
  <body>
    <h1>Welcome to Mango!</h1>
    <p id='template'>page.haml</p>
    <div id='content'>
      <p>/about/index.haml</p>
    </div>
  </body>
</html>
      EXPECTED
    end
  end

  #################################################################################################

  describe "GET /about/index" do
    before(:each) do
      get "/about/index"
    end

    it "returns 200 status code" do
      last_response.should be_ok
    end

    it "sends the correct Content-Type header" do
      last_response["Content-Type"].should == "text/html;charset=utf-8"
    end

    it "sends the correct body content" do
      last_response.body.should == <<-EXPECTED
<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8' />
    <title>layout.haml</title>
  </head>
  <body>
    <h1>Welcome to Mango!</h1>
    <p id='template'>page.haml</p>
    <div id='content'>
      <p>/about/index.haml</p>
    </div>
  </body>
</html>
      EXPECTED
    end
  end

  #################################################################################################

  describe "GET /about/us" do
    before(:each) do
      get "/about/us"
    end

    it "returns 200 status code" do
      last_response.should be_ok
    end

    it "sends the correct Content-Type header" do
      last_response["Content-Type"].should == "text/html;charset=utf-8"
    end

    it "sends the correct body content" do
      last_response.body.should == <<-EXPECTED
<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8' />
    <title>layout.haml</title>
  </head>
  <body>
    <h1>Welcome to Mango!</h1>
    <p id='template'>page.haml</p>
    <div id='content'>
      <p>/about/us.haml</p>
    </div>
  </body>
</html>
      EXPECTED
    end
  end

  #################################################################################################

  describe "GET /turner%2Bhooch" do
    before(:each) do
      get "/turner%2Bhooch"
    end

    it "returns 200 status code" do
      last_response.should be_ok
    end

    it "sends the correct Content-Type header" do
      last_response["Content-Type"].should == "text/html;charset=utf-8"
    end

    it "sends the correct body content" do
      last_response.body.should == <<-EXPECTED
<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8' />
    <title>layout.haml</title>
  </head>
  <body>
    <h1>Welcome to Mango!</h1>
    <p id='template'>page.haml</p>
    <div id='content'>
      <p>/turner+hooch.haml</p>
    </div>
  </body>
</html>
      EXPECTED
    end
  end

  #################################################################################################

  describe "GET /view_engines/erb" do
    before(:each) do
      get "/view_engines/erb"
    end

    it "returns 200 status code" do
      last_response.should be_ok
    end

    it "sends the correct Content-Type header" do
      last_response["Content-Type"].should == "text/html;charset=utf-8"
    end

    it "sends the correct body content" do
      last_response.body.should == <<-EXPECTED
<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8' />
    <title>layout.erb</title>
  </head>
  <body>
<h1>Welcome to Mango!</h1>

<p id="template">page.erb</p>

<div id="content">
  <p>/view_engines/erb.haml</p>

</div>

  </body>
</html>
      EXPECTED
    end
  end

  #################################################################################################

  describe "GET /page_not_found" do
    before(:each) do
      get "/page_not_found"
    end

    it "returns 404 status code" do
      last_response.should be_not_found
    end

    it "sends the correct Content-Type header" do
      last_response["Content-Type"].should == "text/html;charset=utf-8"
    end

    it "sends the correct body content" do
      last_response.body.should == <<-EXPECTED
<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8' />
    <title>404 Page</title>
  </head>
  <body>
    <h1>Page not found</h1>
    <p id='template'>404.haml</p>
  </body>
</html>
      EXPECTED
    end
  end

  #################################################################################################

  describe "GET /page_with_unregistered_view" do
    it "raises an exception" do
      path    = FIXTURE_ROOT + "themes/default/views/unregistered.extension"
      message = "Cannot find a registered engine for view template file -- #{path}"
      lambda {
        get "/page_with_unregistered_view"
      }.should raise_exception(Mango::Application::RegisteredEngineNotFound, message)
    end
  end

  #################################################################################################

  describe "GET /page_with_missing_view" do
    it "raises an exception" do
      path    = FIXTURE_ROOT + "themes/default/views/missing.haml"
      message = "Cannot find a view template file -- #{path}"
      lambda {
        get "/page_with_missing_view"
      }.should raise_exception(Mango::Application::ViewTemplateNotFound, message)
    end
  end

  #################################################################################################

  describe "GET /../security_hole" do
    before(:each) do
      get "/../security_hole"
    end

    it "returns 404 status code" do
      last_response.should be_not_found
    end

    it "sends the correct Content-Type header" do
      last_response["Content-Type"].should == "text/html;charset=utf-8"
    end

    it "sends the correct body content" do
      last_response.body.should == <<-EXPECTED
<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8' />
    <title>404 Page</title>
  </head>
  <body>
    <h1>Page not found</h1>
    <p id='template'>404.haml</p>
  </body>
</html>
      EXPECTED
    end
  end
end
