class SortController < ApplicationController
  def sort
    @friends = Friend.all
  end

  def realize 
    
    @friend = Friend.find(params[:get][:friend_id])

    @friends = Friend.where.not(id: @friend.id).where.not(name: @friend.exception).where(wasChoiced: false).sample(1)

    @friendChoiced = Friend.find(@friends[0].id)

    @friendChoiced.wasChoiced = true

    @friendChoiced.save


    render 'result'
  end

  def result
    
  end

end
