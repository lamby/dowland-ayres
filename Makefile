TARGET = output

all:
	mkdir -p $(TARGET)
	for X in */; do pdftk $$X/*.pdf output $(TARGET)/`basename $$X`.pdf; done

clean:
	rm -rf $(TARGET)
