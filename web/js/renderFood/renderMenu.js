
var myRow = document.querySelector("#render");


var flag = (category % 2 == 0 ? false : true);

for (var i = 1; i <= category; i++) {
    var subProduct = jsList2s[i - 1];
    var cate = jsCategory[i - 1]
    if (i == category && flag) {
        var totalDiv = document.createElement("div");
        totalDiv.className = "col-md-12 mb-5 pb-3";


        var texth3 = document.createElement("h3");
        texth3.className = "mb-5 heading-pricing";
        texth3.id = "ab";
        texth3.textContent = cate.category_name;

        totalDiv.appendChild(texth3);

        for (var j = 1; j <= renderNumber; j++) {
            var product = subProduct[j - 1];
            var divItem = document.createElement("div");
            divItem.className = "pricing-entry d-flexd";
            divItem.id = "ab";

            var divImg = document.createElement("div");
            divImg.className = "img";
            divImg.style.backgroundImage = `url(imageDist/` + product.product_img + `)`;

            var divInfo = document.createElement("div");
            divInfo.className = "desc pl-3";

            var divNamePrice = document.createElement("div");
            divNamePrice.className = "d-flex text align-items-center";

            var textName = document.createElement("h3");
            var spann = document.createElement("span");
            spann.textContent = product.product_name;

            var spanPrice = document.createElement("span");
            spanPrice.className = "price";
            spanPrice.textContent = product.price + `₫`;

            var textDes = document.createElement("div");
            textDes.className = "d-block";
            var pDes = document.createElement("p");
            pDes.textContent = product.product_description;

            textDes.appendChild(pDes);

            textName.appendChild(spann);

            divNamePrice.appendChild(textName);
            divNamePrice.appendChild(spanPrice);

            divInfo.appendChild(divNamePrice);
            divInfo.appendChild(textDes);

            divItem.appendChild(divImg);
            divItem.appendChild(divInfo);

            totalDiv.appendChild(divItem);

        }

        myRow.appendChild(totalDiv);
    } else {

        var totalDiv = document.createElement("div");
        totalDiv.className = "col-md-6 mb-5 pb-3";


        var texth3 = document.createElement("h3");
        texth3.className = "mb-5 heading-pricing";
        texth3.textContent = cate.category_name;
        texth3.id = "ab";

        totalDiv.appendChild(texth3);

        for (var j = 1; j <= renderNumber; j++) {
            var product = subProduct[j - 1];
            var divItem = document.createElement("div");
            divItem.className = "pricing-entry d-flex";
            divItem.id = "ab";

            var divImg = document.createElement("div");
            divImg.className = "img";
            divImg.style.backgroundImage = `url(imageDist/` + product.product_img + `)`;

            var divInfo = document.createElement("div");
            divInfo.className = "desc pl-3";

            var divNamePrice = document.createElement("div");
            divNamePrice.className = "d-flex text align-items-center";

            var textName = document.createElement("h3");
            var spann = document.createElement("span");
            spann.textContent = product.product_name;

            var spanPrice = document.createElement("span");
            spanPrice.className = "price";
            spanPrice.textContent = product.price + `₫`;

            var textDes = document.createElement("div");
            textDes.className = "d-block";
            var pDes = document.createElement("p");
            pDes.textContent = product.product_description;

            textDes.appendChild(pDes);

            textName.appendChild(spann);

            divNamePrice.appendChild(textName);
            divNamePrice.appendChild(spanPrice);

            divInfo.appendChild(divNamePrice);
            divInfo.appendChild(textDes);

            divItem.appendChild(divImg);
            divItem.appendChild(divInfo);

            totalDiv.appendChild(divItem);

        }

        myRow.appendChild(totalDiv);
    }

    var et = document.getElementById("ab");
    et.classList.add("ftco-animate", "fadeInUp", "ftco-animated");
}

console.log(jsList2ss);

var vPillsTab = document.querySelector("#v-pills-tab");

// Lấy đối tượng div v-pills-tabContent
var vPillsTabContent = document.querySelector("#v-pills-tabContent");

// Số lượng tab và div cần thêm
var numberOfItems = category;
var numberOfProducts = 3;

var numberOfIteminRow = 3;
var numberOfItem1Turn = 6;


// Tạo các tab và div mới
for (var i = 1; i <= jsList2ss.length; i++) {
    // Tạo một thẻ a mới

    var category = jsCategory[i - 1]

    var newTabLink = document.createElement("a");
    newTabLink.className = "nav-link";
    newTabLink.id = "v-pills-" + i + "-tab";
    newTabLink.setAttribute("data-toggle", "pill");
    newTabLink.href = "#v-pills-" + i;
    newTabLink.setAttribute("role", "tab");
    newTabLink.setAttribute("aria-controls", "v-pills-" + i);
    newTabLink.setAttribute("aria-selected", i === 1 ? "true" : "false");
    newTabLink.textContent = category.category_name;

    // Thêm thẻ a mới vào div v-pills-tab
    vPillsTab.appendChild(newTabLink);

    // Tạo một div mới
    var newDiv = document.createElement("div");
    newDiv.className = "tab-pane fade";
    newDiv.id = "v-pills-" + i;
    newDiv.setAttribute("role", "tabpanel");
    newDiv.setAttribute("aria-labelledby", "v-pills-" + i + "-tab");

    var newDivRow = document.createElement("div");
    newDivRow.className = "row";

    var subArray = jsList2ss[i - 1];

    // console.log(chiaCot);

    for (var j = 1; j <= jsList2ss[i - 1].length; j++) {

        var product = subArray[j - 1];

        var newInnerDiv = document.createElement("div");
        newInnerDiv.className = "col-md-" + (12 / 3) + " text-center";
        var newD1 = document.createElement("div");
        newD1.className = 'menu-wrap';

        const link = document.createElement('a');
        link.href = '#';
        link.className = 'menu-img img mb-4';
        link.style.backgroundImage = `url(imageDist/` + product.product_img + `)`;

        // Tạo phần tử div
        const textDiv = document.createElement('div');
        textDiv.className = 'text';

        // Tạo phần tử h3
        const heading = document.createElement('h3');
        const headingLink = document.createElement('a');
        headingLink.href = '#';
        headingLink.textContent = product.product_name;
        heading.appendChild(headingLink);

        // Tạo phần tử p (mô tả)
        const description = document.createElement('p');
        description.textContent = product.product_description;

        // Tạo phần tử p (giá)
        const price = document.createElement('p');
        price.className = 'price';
        const priceSpan = document.createElement('span');
        priceSpan.textContent = `` + product.price;
        price.appendChild(priceSpan);

        // Tạo phần tử p (nút "Add to cart")
        const addToCart = document.createElement('p');
        const addToCartLink = document.createElement('a');
        addToCartLink.href = '#';
        addToCartLink.className = 'btn btn-primary btn-outline-primary';
        addToCartLink.textContent = 'Add to cart';
        addToCart.appendChild(addToCartLink);

        textDiv.appendChild(heading);
        textDiv.appendChild(description);
        textDiv.appendChild(price);
        textDiv.appendChild(addToCart);

        newD1.appendChild(link);
        newD1.appendChild(textDiv);

        newInnerDiv.appendChild(newD1);
        // Thêm div con vào newDiv
        newDivRow.appendChild(newInnerDiv);

    }



    newDiv.appendChild(newDivRow);
    // Thêm div mới vào div v-pills-tabContent
    vPillsTabContent.appendChild(newDiv);

    document.addEventListener("DOMContentLoaded", function () {
        var element = document.getElementById("v-pills-1-tab");
        element.classList.add("nav-link", "active", "show");
        var element = document.getElementById("v-pills-1");
        element.classList.add("tab-pane", "fade", "active", "show");
    });
}
