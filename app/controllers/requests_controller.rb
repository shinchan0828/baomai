class RequestsController < ApplicationController
    def index
        @requests = Request.all
    end
    
    def new
        @request = Request.new
    end
    
    def create
        @request = current_user.requests.new(request_params)
        if @request.save
            redirect_to root_path, notice: 'リクエストの投稿に成功しました'
        else
            logger.debug("エラー内容は下記")
            logger.debug(@request.errors.messages)
            flash.now[:alert] = "リクエストの投稿に失敗しました"
            render :new
        end
    end
    
    private
    
    def request_params
        params.require(:request).permit(:title, :budget, :description)
    end
    
end
