

window.onload = function () {
    $.ajax({
        type: "GET",
        url: "/Feedback/GetCategory",
        success: function (data) {
            var option = "";
            for (let category of data) {

                let optionElement = new Option(category.categoryName, category.categoryId);

                $(optionElement).html(category.categoryName);

                $("#category").append(optionElement);

            }

            GetProduct(1);
        }
    });

    $("#category").change(function () {
        catId = $("#category").val();

        GetProduct(catId);
    });

    function GetProduct(id) {
        $.ajax({
            type: "GET",
            url: "/Feedback/GetProduct",
            data: {
                id: id
            },
            success: function (data) {
                $("#product").empty();
                var option = "";
                for (let product of data) {

                    let optionElement = new Option(product.productName, product.productId);

                    $(optionElement).html(product.productName);

                    $("#product").append(optionElement);

                }
            },
            error: (msg) => {
                alert(msg);
            }
        });
    }

}