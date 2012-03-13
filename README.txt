1. requirement

   ruby 1.9.2
   rails 3.2

2. install ruby 
  
   2.1 install rvm
   bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
   source ~/.bash_profile (or ~/.profile ... )

   2.1 install ruby & rails
   rvm install 1.9.2
   gem install rails

3. deployment

   3.1 copy source 
   git@192.168.72.54:tf4.pdfv5.admin.git
   cd tf4.pdfv5.admin

   3.2 install gems 
   RAILS_ENV=production bundle install --without development test
   
   3.3 init settings
   RAILS_ENV=production rake db:migrate
   nano config/config.yml (적절히 환경에 맞게 수정)

   3.4 run server
   rails s -e production -p 8080 (포트번호 적절히 설정)


   3.5 run server with nginx 
   gem install passenger
   passenger-install-nginx-module (안내에 따라 nginx도 설치)
   nano ~/nginx/conf/nginx.conf (~/nginx 에 nginx를 설치했다고 가정하고 설정을 적절히 수정)
   



   
