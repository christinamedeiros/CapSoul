class PicturesController < ApplicationController
  def index
       @picture = Picture.all
    end

    def new
       @picture = Picture.new
    end

    def create
       @picture = Picture.new(picture_params)

       if @picture.save
          redirect_to pictures_path, notice: "The picture #{@picture.name} has been uploaded."
       else
          render "new"
       end

    end

    def destroy
       @picture = Picture.find(params[:id])
       @picture.destroy
       redirect_to pictures_path, notice:  "The picture #{@picture.name} has been deleted."
    end

    def home
    end

    def Snapshot
    end

    private
       def picture_params
       params.require(:picture).permit(:name, :attachment)
    end
end
