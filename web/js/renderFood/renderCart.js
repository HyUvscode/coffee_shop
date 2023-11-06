
function updateCart() {
    var price = parseInt(document.getElementById("price").innerHTML);
    var quantity = parseInt(document.getElementById("quantity").value);
    var total = price * quantity;
    document.getElementById("total").innerHTML = total;

    var table = document.getElementById("myTable");
    var priceCells = table.getElementsByClassName("total");
    total = 0;

    for (var i = 0; i < priceCells.length; i++) {
        var price = parseFloat(priceCells[i].innerHTML);
        if (!isNaN(price)) {
            total += price;
        }
    }

    document.getElementById("subSpan").innerText = total;

    document.getElementById("deliverySpan").innerText = 30;

    document.getElementById("discountSpan").innerText = 2;

    document.getElementById("totalSpans").innerText = parseInt(document.getElementById("subSpan").innerHTML)
            + parseInt(document.getElementById("deliverySpan").innerHTML)
            + parseInt(document.getElementById("discountSpan").innerHTML);
}
function updateCart(inputElement) {
    var row = inputElement.closest('tr');
    var price = parseFloat(row.querySelector('.price').innerText);
    var quantity = parseInt(inputElement.value);
    var total = price * quantity;
    row.querySelector('.total').innerText = total;

    // Recalculate subtotal
    var rows = document.querySelectorAll('#cartBody .total');
    var subtotal = 0;
    rows.forEach(function (row) {
        subtotal += parseFloat(row.innerText);
    });

    document.getElementById("subSpan").innerText = subtotal;
    document.getElementById("deliverySpan").innerText = 30;
    document.getElementById("discountSpan").innerText = 2;
    document.getElementById("totalSpans").innerText = subtotal + 30 - 2;
}

