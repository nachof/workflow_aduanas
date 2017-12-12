PRODUCTS=workflow.png

build: $(PRODUCTS)

remake: clean build

clean:
	rm $(PRODUCTS)

%.png: %.dot
	dot $< -T png -o $@
