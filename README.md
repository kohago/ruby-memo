 ## <https://railsguides.jp/getting_started.html>
 ##set up
  * install ruby  
    * download install
       * <https://www.ruby-lang.org/ja/downloads/>
       * ruby --version
    * rbenv install
      * rbenv
      * RUBY_CFLAGS="-w" rbenv install 3.0.1
        * xcrun error
          * xcode-select --install
          * xcode-select -v 
            * 2396
            * xcrun,xcodebuild,cc などmacの開発ツールの塊
            * 
        * 
  * install sqllite   
     * <http://www.sqlite.org/download.html/>  
     * windows:
        * down dll and  sqlite-tools-win32 and put them together
        * windowssqilte3.exe --version 
     * sqlite3 --version
  * install gem  
     * <https://rubygems.org/pages/download>  
            cd rubygem  
            ruby setup.rb
            gem -help
  * install rails  
    * msys2:<http://www.msys2.org/>  
    * ridk install
    * gem install rails
    * rails --version
