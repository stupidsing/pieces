DIR=$(dirname "${0}")
cat ${DIR}/resume.html | sed s/_CS_/40/g | sed s/_ES_/48/g > /tmp/resume.html &&
wkhtmltopdf --encoding UTF-8 --minimum-font-size 36 -d 100 -s A4 /tmp/resume.html /tmp/resume.pdf &&
scp /tmp/resume.{html,pdf} stupidsing.no-ip.org:public_html/
echo https://stupidsing.no-ip.org/resume.pdf
