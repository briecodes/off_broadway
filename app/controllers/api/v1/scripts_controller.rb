class Api::V1::ScriptsController < ApplicationController
    before_action :get_script, only: [:show, :edit, :delete]
    def index
        @scripts = Script.all
        render json: @scripts
    end

    def show
        render json: @script
    end

    def edit
        render json: @script
    end

    def create
        script = Script.new(script_params)
        if script.save
            render json: script.id
        else
            render json: {error: 'Something went wrong!'}
        end
    end

    def update
        @script.update(user_params)
        if @script.save
            render json: @script, status: :accepted
        else
            render json: {errors: @script.errors.full_messages}
        end
    end

    def destroy
        @script.destroy
        render json: {status: 'Deleted!'}
    end

    private
        def get_script
            @script = Script.find(params[:id])
        end

        def script_params
            params.require(:script).permit(:user_id, :img_url, :line_1, :line_2, :line_3, :line_4, :line_5, :title)
        end

end
