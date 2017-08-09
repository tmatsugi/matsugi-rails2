class PeopleController < ApplicationController
  def index
    @msg = 'people data.'
    # 変数=《モデルクラス》.all allメソッドで全て取り出す Select * from People と同じ
    @data = Person.all
  end
  
  def show
	@msg = "Indexed data."
	# 変数=《モデルクラス》.find(params[:id]) idを指定して取り出す select * from People where id=1
	@data = Person.find(params[:id])
  end
  
  def add
  	@msg = "add new data."
  	@person = Person.new
  end

  protect_from_forgery # formヘルパー

  def create
	  	if request.post? then
		Person.create(person_params)
	end
	redirect_to '/people'
  end
  
  private
    def person_params
	    params.require(:person).permit(:name, :age, :mail)
    end
end
