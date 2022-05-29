class FooController < ApplicationController
  def index
    raise FooException.new
  end
end
