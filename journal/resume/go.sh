#sudo npm install hackmyresume -g;
#
#npm install jsonresume-theme-elegant-leonth;
#npm install jsonresume-theme-bootstrap-icons;
#npm install jsonresume-theme-light-classy-responsive;
#hackmyresume BUILD res.json TO ./index_jsonresume-theme-elegant-leonth.html -t ../node_modules/jsonresume-theme-elegant-leonth;
#hackmyresume BUILD res.json TO ./index_lightClassyResponsive.html -t ../node_modules/jsonresume-theme-light-classy-responsive;
#cp ./resume.html ./index_lightClassyResponsive.html;
#hackmyresume BUILD res.json TO ./index_jsonresume-theme-bootstrap-icons.html -t ../node_modules/jsonresume-theme-bootstrap-icons;
#cp ./resume.html ./index_jsonresume-theme-bootstrap-icons.html;
#cp ./resume.html ./index_jsonresume-theme-elegant-leonth.html;
#cp ./resume.html ./index.html;
#hackmyresume ANALYZE res.json
#open ./index.html

#resume serve --theme light-classy-responsive
#resume serve --light-classy-responsive
#resume serve --theme bootstrap-icons
#npm i -g jsonresume-theme-elegant-leonth;
#resume export --format html --theme elegant-leonth index.html
#resume export --format html  index.html
#hackmyresume BUILD res.json TO ./index.html -t ../node_modules/jsonresume-theme-elegant-leonth;
hackmyresume BUILD resume.json TO ./index.html -t ../node_modules/jsonresume-theme-elegant-leonth;
