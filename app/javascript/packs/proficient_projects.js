require('select2');

$(document).on("turbolinks:load", function () {
    var x = document.getElementsByClassName('pp-status-button');
    var i;
    for (i = 0; i < x.length; i++) {
        if (x[i].innerHTML === "Revoked") {
            x[i].classList.add('btn-danger');
        } else if (x[i].innerHTML === "Awarded") {
            x[i].classList.add('btn-success');
        } else {
            x[i].classList.add('btn-warning');
        }
    }
});

$(document).on("turbolinks:load", function () {
    $("#badge_requirements").select2({
        allowClear: true,
        multiple: true
    });
});
