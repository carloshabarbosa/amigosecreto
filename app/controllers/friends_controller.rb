class FriendsController < ApplicationController
    def new
        @friend = Friend.new
    end

    def create
        @friend = Friend.new(friend_param)
        if @friend.save
            flash[:notice] = "Friend was created successfully!"
            redirect_to friend_path(@friend)        
        else   
            render 'new'
        end
    end
    
    def show
       @friend = set_friend
    end

    def edit
        @friend = set_friend
    end

    def update
        @friend = set_friend
        if @friend.update(friend_param)
            flash[:notice] ="Friend was successfully updated"
            redirect_to friend_path(@friend)
        else
            render 'edit'
        end
    end

    def sort
    end

    def index
        @friends = Friend.all
    end

    def destroy
        @friend = set_friend
        @friend.destroy

        flash[:notice] = "Friend was deleted successfully"
        redirect_to friends_path
    end

    private
    def friend_param
        params.require(:friend).permit(:name, :exception, :wasChoiced)
    end

    def set_friend
        @friend = Friend.find(params[:id])
    end


end
