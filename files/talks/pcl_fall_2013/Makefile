notebook:
	ipython notebook --pylab=inline "PCL 2013.ipynb"

slides:
	ipython nbconvert "PCL 2013.ipynb" --to slides;
	mv "PCL 2013.slides.html" index.html

serve:
	python -m SimpleHTTPServer

deploy:
	rsync -av . hansenm@synesthesiam.com:synesthesiam.com/talks/pcl_fall_2013/
