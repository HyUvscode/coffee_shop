// Lấy đối tượng div v-pills-tab
var vPillsTab = document.querySelector("#v-pills-tab");

// Lấy đối tượng div v-pills-tabContent
var vPillsTabContent = document.querySelector("#v-pills-tabContent");

// Số lượng tab và div cần thêm
var numberOfItems = category;
console.log(numberOfItems);
var numberOfProducts = 3;

// Tạo các tab và div mới
for (var i = 1; i <= numberOfItems; i++) {
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

    var subArray = jsList2s[i - 1];

    for (var j = 1; j <= numberOfProducts; j++) {

        var product = subArray[j - 1];

        var newInnerDiv = document.createElement("div");
        newInnerDiv.className = "col-md-" + (12 / numberOfProducts) + " text-center";
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
