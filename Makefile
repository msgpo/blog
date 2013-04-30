.PHONY: all notebooks

all: notebooks
	nikola build

notebooks: posts/*.ipynb
	python notebook2post.py --header $(basename $<).header --output $(basename $<).markdown $<

clean:
	nikola clean
