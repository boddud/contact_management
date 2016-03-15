jQuery(document).ready(function(){
	// append address fields dynamically
	var i = 0;
	jQuery('.add-address a').click(function(){
		i++;
		var j = parseInt(i)
		jQuery(".address-values").append('<div class="clearfix"></div><hr><label for="contact_addresses_attributes_0_address">Address</label><input type="text" name="contact[addresses_attributes][' + [j] + '][address]" id="contact_addresses_attributes_0_address"><br><label for="contact_addresses_attributes_0_country">Country</label><input type="text" name="contact[addresses_attributes][' + [j] + '][country]" id="contact_addresses_attributes_0_country">');
		return false;
	});
	// append phone fields dynamically
	var x=0
	jQuery('.add-phone a').click(function(){
		x++;
		var j = parseInt(x)
		jQuery(".phone-values").append('<div class="clearfix"></div><hr><label for="contact_phones_attributes_0_phone">Phone</label><input type="text" name="contact[phones_attributes][' + [j] + '][phone]" id="contact_phones_attributes_0_phone">');
		return false;
	});
});
