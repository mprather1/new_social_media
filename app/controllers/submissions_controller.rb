class UsersController < ApplicationController

  def index
    @submissions = Submission.all
  end

  def show
    @submission = Submission.find(params[:id])
  end

  def new
    @submission = Submission.new
  end

  def create
    @submission = Submission.new(submission_params)

    if @submission.save
      redirect_to submission_path(@submission)
    else
      render 'new'
    end
  end

  def edit
    @submission = Submission.find(params[:id])
  end

  def update
    @submission = Submission.find(params[:id])

    if @submission.update_attributes(submission_params)
      redirect_to submision_path(@submission)
    else
      render 'edit'
    end
  end

  def delete
    @submision = Submission.find(params[:id])
  end

  def destroy
    @submision = Submission.find(params[:id])
    @submision.destroy
    redirect_to submissions_path
  end

  private

  def submission_params_params
    params.require(:submission).permit(:title, :content)
  end

end
