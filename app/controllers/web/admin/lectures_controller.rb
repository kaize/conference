class Web::Admin::LecturesController < ApplicationController
  def index
    @lectures = Lecture.web
  end

  def new
    @lecture = Lecture.new
    @lecture = @lecture.becomes(LectureType)
  end

  def edit
    @lecture = Lecture.find params[:id]
    @lecture = @lecture.becomes(LectureType)
  end

  def create
    @lecture = LectureType.new params[:lecture]
    if @lecture.save
      f(:success)
      redirect_to edit_admin_lecture_path(@lecture)
    else
      f(:errror)
      render :new
    end
  end

  def update
    @lecture = Lecture.find params[:id]
    @lecture = @lecture.becomes(LectureType)
    if @lecture.update params[:lecture]
      f(:success)
      redirect_to edit_admin_lecture_path(@lecture)
    else
      f(:error)
      render :edit
    end
  end
end
