class Web::Admin::LecturesController < Web::Admin::ApplicationController
  def index
    lectures = Lecture.web
    @lectures = lectures.decorate
  end

  def new
    @lecture = LectureType.new
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
      f(:error, now: true)
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
      f(:error, now: true)
      render :edit
    end
  end
end
