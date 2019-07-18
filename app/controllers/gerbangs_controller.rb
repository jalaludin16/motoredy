class GerbangsController < ApplicationController
    def index
        @gerbangs = Gerbang.all
    end
end