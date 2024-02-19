class ExpensesController < ApplicationController
  before_action :set_expense, except: [:index, :new, :create, :show_monthly_expenses]

  def index
    @expenses = Expense.all.order(date: :desc)
    @total_amount = @expenses.sum(:amount)
  end

  def show
    redirect_to expenses_month_path(@expense.date.beginning_of_month)
  end

  def show_monthly_expenses
    month_start = params[:month].to_date.beginning_of_month
    month_end = month_start.end_of_month

    @expenses = Expense.where(date: month_start..month_end).order(date: :desc)
    @total_amount = @expenses.sum(:amount)
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new(expense_params)

    if @expense.save
      flash[:notice] = "Expense item successfully added!"
      redirect_to expenses_path
    else
      flash[:alert] = "Oops, a problem occurred. Please try again."
      render :new, status: 422
    end
  end

  def edit
  end

  def update
    if @expense.update(expense_params)
      flash[:notice] = "Expense item successfully updated!"
      redirect_to expenses_path
    else
      flash[:alert] = "Oops, a problem occurred. Please try again."
      render :edit, status: 422
    end
  end

  def destroy
    if @expense.destroy
      flash[:notice] = "Expense item permanently deleted."
    else
      flash[:alert] = "Oops, a problem occurred. Please try again."
      render :index, status: 422
    end
  end

  private

  def set_expense
    @expense = Expense.find(params[:id])

  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "Oh no! The page you were looking for does not exist."
    redirect_to root_path
  end

  def expense_params
    params
      .require(:expense)
      .permit(
        :expense_item,
        :date,
        :amount,
        :remarks
      )
  end
end
