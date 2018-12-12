var item_prices = new Array();
item_prices["dvd"] = 20;
item_prices["bluray"] = 30;


/*item 1*/

function getItem1Price() {
	var dicsPrice = 0;
	var theForm = document.forms["itemform"];
	var selectedItem = theForm.elements["selecteditem1"];

	for (var i = 0; i < selectedItem.length; i++) {
		if (selectedItem[i].checked) {

			dicsPrice = item_prices[selectedItem[i].value];

			break;
		}
	}




	return dicsPrice;
}

function getQuantity1() {

	var x = document.getElementById("myNumber1").value;

	return x;

}

function calculateTotal1() {

	var itemPrice = getItem1Price();
	var quantity = getQuantity1();
	var n;

	var divobj = document.getElementsByClassName('totalPrice1');
	divobj[0].style.display = 'block';
	divobj[0].innerHTML = "RM " + itemPrice * quantity;
	divobj[1].style.display = 'block';
	divobj[1].innerHTML = "RM " + itemPrice * quantity;

	n = itemPrice * quantity;

	if (itemPrice == 20) {
		document.getElementById('dicsImg1').innerHTML = "<img src='image/DVD-icon.png' />";
	} else if (itemPrice == 30) {
		document.getElementById('dicsImg1').innerHTML = "<img src='image/blu-ray-icon.ico' />";
	}

	document.getElementById('qitem1').innerHTML = quantity;



	return n;

}


/*item 2*/

function getItem2Price() {
	var dicsPrice = 0;
	var theForm = document.forms["itemform"];
	var selectedItem = theForm.elements["selecteditem2"];

	for (var i = 0; i < selectedItem.length; i++) {
		if (selectedItem[i].checked) {

			dicsPrice = item_prices[selectedItem[i].value];
			/*change img here*/

			break;
		}
	}
	return dicsPrice;
}

function getQuantity2() {

	var x = document.getElementById("myNumber2").value;

	return x;

}



function calculateTotal2() {

	var itemPrice = getItem2Price();
	var quantity = getQuantity2();
	var n;

	var divobj = document.getElementsByClassName('totalPrice2');
	divobj[0].style.display = 'block';
	divobj[0].innerHTML = "RM " + itemPrice * quantity;
	divobj[1].style.display = 'block';
	divobj[1].innerHTML = "RM " + itemPrice * quantity;

	n = itemPrice * quantity;

	if (itemPrice == 20) {
		document.getElementById('dicsImg2').innerHTML = "<img src='image/DVD-icon.png' />";
	} else if (itemPrice == 30) {
		document.getElementById('dicsImg2').innerHTML = "<img src='image/blu-ray-icon.ico' />";
	}

	document.getElementById('qitem2').innerHTML = quantity;

	return n;

}

/* Item 3*/

function getItem3Price() {
	var dicsPrice = 0;
	var theForm = document.forms["itemform"];
	var selectedItem = theForm.elements["selecteditem3"];

	for (var i = 0; i < selectedItem.length; i++) {
		if (selectedItem[i].checked) {

			dicsPrice = item_prices[selectedItem[i].value];
			/*change img here*/

			break;
		}
	}
	return dicsPrice;
}

function getQuantity3() {

	var x = document.getElementById("myNumber3").value;

	return x;

}

function calculateTotal3() {

	var itemPrice = getItem3Price();
	var quantity = getQuantity3();
	var n;

	var divobj = document.getElementsByClassName('totalPrice3');
	divobj[0].style.display = 'block';
	divobj[0].innerHTML = "RM " + itemPrice * quantity;
	divobj[1].style.display = 'block';
	divobj[1].innerHTML = "RM " + itemPrice * quantity;

	n = itemPrice * quantity;

	if (itemPrice == 20) {
		document.getElementById('dicsImg3').innerHTML = "<img src='image/DVD-icon.png' />";
	} else if (itemPrice == 30) {
		document.getElementById('dicsImg3').innerHTML = "<img src='image/blu-ray-icon.ico' />";
	}

	document.getElementById('qitem3').innerHTML = quantity;

	return n;

}

/*--On load--*/

function load() {
	calculateTotal1();
	calculateTotal2();
	calculateTotal3();
	subTotal();
}

function subTotal() {
	var item1 = calculateTotal1();
	var item2 = calculateTotal2();
	var item3 = calculateTotal3();
	var subtotal;

	subtotal = item1 + item2 + item3;

	var divobj = document.getElementById('subTotal');
	divobj.style.display = 'block';
	divobj.innerHTML = "RM " + subtotal.valueOf();

}
