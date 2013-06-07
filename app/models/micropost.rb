class Micropost < ActiveRecord::Base

	 belongs_to :user
	 
     validates :content, :length => { :maximum => 140 }

     private
     def micropost_params
      params.require(:micropost).permit(:content, :user_id)
     end
end
