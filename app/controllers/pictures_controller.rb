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
        @array_pictures  = [Picture.all]
        @random_no = rand(5)
        @random_image = @array_pictures[@random_no]
    end

    private
       def picture_params
       params.require(:picture).permit(:name, :attachment)
    end
end
