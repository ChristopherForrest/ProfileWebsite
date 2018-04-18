class ProfilesController < ApplicationController


    def index
        @f = Profile.all
      
    end


    def new
        @profile = Profile.new    
    end

    def create
        @profile = Profile.new(profile_params)

        if @profile.save then
        #    render :index
        redirect_to :action => 'index'
        end


    end

    def edit
        
    end


    def update

    end

    def destroy

    end

    def show
        @profile = Profile.find(params[:id]) 
    end





    private

    def set_profile
        @profile = Profile.find(params[:id])    
    end

    def profile_params
        params.require(:profile).permit(:name,:age,:description,:likes,:dislikes)
    end
    



 

end
