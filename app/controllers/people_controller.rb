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
  
end
