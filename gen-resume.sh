DIR=$(dirname "${0}")
cat ${DIR}/resume.html | sed s/_CS_/48/g | sed s/_ES_/64/g > /tmp/resume-ywsing.html &&
wkhtmltopdf --encoding UTF-8 --minimum-font-size 36 -d 100 -s A4 /tmp/resume-ywsing.html /tmp/resume-ywsing.pdf &&
scp /tmp/resume-ywsing.{html,pdf} stupidsing.no-ip.org:public_html/
scp /tmp/resume-ywsing.{html,pdf} ywsing.onedse.com:.
echo ssh ywsing.onedse.com sudo mv resume-ywsing.pdf /var/www/html/
echo https://stupidsing.no-ip.org/resume-ywsing.pdf
echo https://ywsing.onedse.com/resume-ywsing.pdf
