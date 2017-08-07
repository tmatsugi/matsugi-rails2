class HeloController < ApplicationController # ApplicationControllerを継承したHeloControllerである
    # defはメソッド宣言
    # htt://ドメイン/○○/aaa -> ○○のaaaを実行
    
    def index
        render plain:"Hello, This is Rails sample page!"
    end

end
