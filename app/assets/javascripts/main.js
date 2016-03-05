jQuery(document).ready(function(){
	var i = 0;
	jQuery('.add-address a').click(function(){
		i++;
		var j = parseInt(i)
		jQuery(".address-values").append('<div class="clearfix"></div><label for="contact_addresses_attributes_0_address">Address</label><br><input type="text" name="contact[addresses_attributes][' + [j] + '][address]" id="contact_addresses_attributes_0_address"><br><label for="contact_addresses_attributes_0_country">Country</label><br><input type="text" name="contact[addresses_attributes][' + [j] + '][country]" id="contact_addresses_attributes_0_country">');
		return false;
	});
});
