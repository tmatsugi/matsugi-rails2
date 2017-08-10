class PeopleController < ApplicationController
  
    layout 'people'
    
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
        @person = Person.new person_params
       	if @person.save then
  		      redirect_to '/people'
        else
            re = ''
            @person.errors.messages.each do |key, vals|
                vals.each do |val|
                    re += '<span style="color:red">' + key.to_s + '</span> ' + val + '<br>'
                end
            end
            @msg = re.html_safe
            render 'add'
        end
    end

    def edit
        @msg = "edit data.[id = " + params[:id] + "]"
        @person = Person.find(params[:id])
    end
    
    def update
        obj = Person.find(params[:id]) # DBで取ってきた値を
        obj.update(person_params) # どの項目に入れるか　timestampを入れてあげる必要がある
        redirect_to '/people'
    end
    
    def delete
        obj = Person.find(params[:id])
        obj.destroy
        redirect_to '/people'
    end
    
    def find
  	    @msg = 'please type search word...'
  	    @people = Array.new
  	    if request.post? then
          	f = params[:find].split(',')
		        @people = Person.all.limit(f[0]).offset(f[1])
  	    end
    end
    
    private
    def person_params
        params.require(:person).permit(:name, :age, :mail)
    end
end
