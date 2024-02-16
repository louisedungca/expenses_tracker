class ExpensesController < ApplicationController
  before_action :set_expense, except: [:index, :new, :create]

  def index
    @expenses = Expense.all
  end

  def show
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