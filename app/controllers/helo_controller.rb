class HeloController < ApplicationController # ApplicationControllerを継承したHeloControllerである
    # defはメソッド宣言
    # htt://ドメイン/○○/aaa -> ○○のaaaを実行
    
    def index
        # render plain:"Hello, This is Rails sample page!"
        
       # msg = '
        #   <html>
        #      <body>
        #           <h1>sample page</h1>
        #           <p>this is Rails sample page!</p>
        #      </body>
        #   </html>
        #
        #render html: msg.html_safe       
        
        #if params['msg'] != nil then
        #    msg = 'Hello, ' + params['msg'] + '!'
        #else
        #    msg = 'This is Rails sample page!'
        #end
        #msg = '
        #    <html>
        #        <body>
        #            <h1>sample page</h1>
        #            <p>' + msg + '</p>
        #        </body>
        #    </html>
        #    '
        #render html: msg.html_safe  
    end

end
