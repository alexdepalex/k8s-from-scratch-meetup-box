default: prep retrieve_base_box unpack_base_box packer

prep:
	mkdir -p $(CURDIR)/build/{cache,source}

retrieve_base_box: prep
	test -s $(CURDIR)/build/cache/coreos_production_vagrant.box || curl -s -o build/cache/coreos_production_vagrant.box https://stable.release.core-os.net/amd64-usr/1122.2.0/coreos_production_vagrant.box

unpack_base_box: retrieve_base_box
	tar xf $(CURDIR)/build/cache/coreos_production_vagrant.box -C build/source

packer:
	packer build -force k8s-from-scratch-meetup-box.json


clean:
	rm -rf $(CURDIR)/build
