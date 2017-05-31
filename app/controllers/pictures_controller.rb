class PicturesController < ApplicationController

  def index
       @picture = Picture.all

       @client= Aws::Rekognition::Client.new(
         access_key_id: ENV['AWS_ACCESS_KEY_ID'],
         secret_access_key: ENV['AWS_SECRET_ACCESS_KEY']
       )
    end

    def new
       @picture = Picture.new
    end

    def show
    end

    def create
       @picture = Picture.new(picture_params)
       @picture.user_id = current_user.id

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

    def snapshot
        # @array_pictures  = [Picture.all]
        # @random_no = rand(5)
        # @random_image = @array_pictures[@random_no]
        # @rand_picture= Picture.order('RAND()').limit(1)
        rand = current_user.pictures
        @random = rand.sample
        # Picture.all.each do |picture|
        #   @random.push(picture)
        # end
        # @random_pic =
    end

    private
       def picture_params
       params.require(:picture).permit(:name, :memo, :category, :attachment)
    end
end
