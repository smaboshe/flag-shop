class FlagsController < ApplicationController
  def index
    @flags = Flag.all
  end
end
