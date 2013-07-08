class Web::Admin::HallsController < Web::Admin::ApplicationController
  def index
    @halls = Hall.web
  end

  def new
    @hall = HallType.new
    @hall.slots.build
  end

  def edit
    @hall = Hall.find params[:id]
    @hall = @hall.becomes(HallType)
  end

  def create
    @hall = HallType.new params[:hall]
    if @hall.save
      f(:success)
      redirect_to edit_admin_hall_path(@hall)
    else
      f(:error, now: true)
      render :new
    end
  end

  def update
    @hall = Hall.find params[:id]
    @hall = @hall.becomes(HallType)
    if @hall.update params[:hall]
      f(:success)
      redirect_to edit_admin_hall_path(@hall)
    else
      f(:error, now: true)
      render :edit
    end
  end

  def destroy
    @hall = Hall.find params[:id]
    @hall.destroy
    redirect_to admin_halls_path
  end
end
