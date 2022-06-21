
$('textarea[name="con"]').prop("disabled", true);

let formError = true;

//Product Category Validation
$('#cat-error').hide();

let catError = true;

$('#category').change(function () {
    validateCategory();
});

function validateCategory() {
    let catValue = $('#category').val();
    if (catValue.length == '') {
        $('#cat-error').show();
        catError = false;
        formError = false;
    }
    else {
        $('#cat-error').hide();
        catError = true;
        formError = true;
    }
}


//Product validation

$('#prod-error').hide();
let prodError = true;

$('#product').change(function () {
    validateProduct();
});

function validateProduct() {
    let prodValue = $('#product').val();
    if (prodValue.length == '') {
        $('#prod-error').show();
        prodError = false;
        formError = false;
    }
    else {
        $('#prod-error').hide();
        prodError = true;
        formError = true;
    }
}


//Satisfaction field validation

$('#sat-error').hide();

let satError = true;

$('input[type=radio]').change(function () {
    validateSatisfactory();
})

function validateSatisfactory() {
    var isValid = $("input[name=ratingRadioOptions]").is(":checked")

    let value = $('input[name="ratingRadioOptions"]:checked').val();
    if (!isValid) {
        $('#sat-error').show();
        satError = false;
        formError = false;
    }
    else {
        $('#sat-error').hide();
        satError = true;
        formError = true;
    }
}


//Comment Validation

$('#pro-error').hide();

let proError = true;

$('#pros').keyup(function () {
    validatePros();
});

function validatePros() {
    let pros = $('#pros').val();
    if (pros.length == '') {
        $('#pro-error').show();
        proError = false;
        formError = false;
    }
    else {
        $('#pro-error').hide();
        proError = true;
        formError = true;
    }
}

//Name title validation

$('#title-error').hide();

let titleError = true;

$('#nametitle').change(function () {
    validateTitle();
});

function validateTitle() {
    let pros = $('#nametitle').val();
    if (pros.length == '') {
        $('#title-error').show();
        titleError = false;
        formError = false;
    }
    else {
        $('#title-error').hide();
        titleError = true;
        formError = true;
    }
}

//Name Validation

$('#name-error').hide();

let nameError = true;

$('#name').keyup(function () {
    validateName();
});

function validateName() {
    let nameValue = $('#name').val();
    if (nameValue.length == '') {
        $('#name-error').show();
        nameError = false;
        formError = false;
    }
    else if ((nameValue.length < 3) || (nameValue.length > 50)) {
        $('#name-error').show();
        $('#name-error').html
            ("** length of name must be between 3 and 50")
        nameError = false;
        formError = false;
    }
    else {
        $('#name-error').hide();
        nameError = true;
        formError = true;
    }
}

//Initial error

$('#initial-error').hide();

let initialError = true;

$('#initial').keyup(function () {
    validateInitial();
});

function validateInitial() {
    let initialValue = $('#initial').val();
    if (initialValue.length == '') {
        $('#initial-error').show();
        initialError = false;
        formError = false;
    }
    else {
        $('#initial-error').hide();
        initialError = true;
        formError = true;
    }
}


//Email validation
$('#email-error').hide();

let emailError = true;

$('#email').keyup(function () {
    validateEmail();
})

function validateEmail() {
    let Value = $('#email').val();
    var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
    if (Value.length == '') {
        $('#email-error').show();
        emailError = false;
        formError = false;
    }
    else if (!emailReg.test(Value)) {
        $('#email-error').show();
        $('#email-error').html
            ("** enter valid email")
        emailError = false;
        formError = false;
    }
    else {
        $('#email-error').hide();
        emailError = true;
        formError = true;
    }
}

//Street validation

$('#street-error').hide();

let streetError = true;

$('#street1').keyup(function () {
    validateStreet();
});

function validateStreet() {
    let Value = $('#street1').val();
    if (Value.length == '') {
        $('#street-error').show();
        streetError = false;
        formError = false;
    }
    else {
        $('#street-error').hide();
        streetError = true;
        formError = true;
    }
}

//City validation

$('#city-error').hide();

let cityError = true;

$('#city').keyup(function () {
    validateCity();
});

function validateCity() {
    let Value = $('#city').val();
    if (Value.length == '') {
        $('#city-error').show();
        cityError = false;
        formError = false;
    }
    else {
        $('#city-error').hide();
        cityError = true;
        formError = true;
    }
}

//Region Error

$('#reg-error').hide();

let regionError = true;

$('#region').keyup(function () {
    validateRegion();
});

function validateRegion() {
    let Value = $('#region').val();
    if (Value.length == '') {
        $('#reg-error').show();
        regionError = false;
        formError = false;
    }
    else {
        $('#reg-error').hide();
        regionError = true;
        formError = true;
    }
}

//Postal code validation

$('#zip-error').hide();

let postalCodeError = true;

$('#postal').keyup(function () {
    validatePostalCode();
});

function validatePostalCode() {
    let Value = $('#postal').val();
    if (Value.length == '') {
        $('#zip-error').show();
        postalCodeError = false;
        formError = false;
    }
    else {
        $('#zip-error').hide();
        postalCodeError = true;
        formError = true;
    }
}

//Coutry validation

$('#country-error').hide();

let countryError = true;

$('#country').change(function () {
    validateCountry();
});

function validateCountry() {
    let Value = $('#country').val();
    if (Value.length == '') {
        $('#country-error').show();
        countryError = false;
        formError = false;
    }
    else {
        $('#country-error').hide();
        countryError = true;
        formError = true;
    }
}

//File validation

$('#file-error').hide();

$('#fileinput').change(function () {
    validateFile();
})

function validateFile() {
    let file = $('#fileinput');
    console.log(file);
    file = file[0].files[0];

    if (file) {
        if (file.type.split("/")[1] !== "pdf" || (file.size > 500000)) {
            $('#file-error').show();
            $('#fileinput').val("");
            formError = true;
        }
        else {
            formError = true;
        }
    }
}

//enable Cons

function ShowUnsatisfiedComment() {
    $('textarea[name="con"]').prop("disabled", false);
}




//Submit

$('#submitbtn').click(function () {
    console.log("Submit")

    validateCategory();
    validateProduct();
    validateSatisfactory();
    validatePros();
    validateTitle();
    validateName();
    validateInitial();
    validateEmail();
    validateStreet();
    validateCity();
    validateRegion();
    validatePostalCode();
    validateCountry();

    if (formError == true) {
        SubmitForm();
    }
})


//Submit form

function SubmitForm() {
    console.log("submit");
    var formData = new FormData();

    formData.append("Category", $('#category').val());
    formData.append("Product", $('#product').val());
    formData.append("Satisfactory", $('#ratingRadioOptions input[type=radio]:checked').val());
    var purchased = "";
    $.each($("input[name='prod']:checked"), function () {
        purchased += $(this).val() + ',';
    });
    console.log("puchase" + purchased);
    formData.append("PurchasedProducts", purchased);
    formData.append("Pros", $('#pros').val());
    formData.append("NameTitle", $('#nametitle').val());
    formData.append("Name", $('#name').val());
    formData.append("Initial", $('#initial').val());
    formData.append("Email", $('#email').val());
    let street1 = $('#street1').val();
    let street2 = $('#street2').val();
    var street = street1 + ',' + street2;
    formData.append("Street", street);
    formData.append("City", $('#city').val());
    formData.append("Region", $('#region').val());
    formData.append("PoatalCode", $('#postal').val());
    formData.append("Country", $('#country').val());
    formData.append("Cons", $('#cons').val());
    formData.append("File", $("#fileinput")[0].files[0]);
    console.log("file");
    console.log($("#fileinput")[0].files[0]);
    console.log(formData.get('PurchasedProducts'));

    $.ajax({
        type: "POST",
        url: "/Feedback/PostForm/",
        data: formData,
        contentType: false,
        processData: false,
        success: function () {
            alert("Form Submitted");
            $(location).prop('href','/Feedback/Index')
        },
        error: function () {
            alert("Form Submission fail");
        }
    })
}


//Refresh form

$('#resetbtn').click(function () {
    console.log("RESET")
    $('#feedbackform')[0].reset();
})

