
<!-- Container fluid end -->

<!-- *************
    ************ Required JavaScript Files *************
************* -->
<!-- Required jQuery first, then Bootstrap Bundle JS -->
<script src="{{ URL::asset('public/assets/js/jquery.min.js') }}"></script>
<script src="{{ URL::asset('public/assets/js/bootstrap.bundle.min.js') }}"></script>
<script src="{{ URL::asset('public/assets/js/moment.js') }}"></script>
<script src="{{ URL::asset('public/assets/js/jquery-ui.min.js') }}"></script>

<script src="{{ URL::asset('public/assets/js/typeahead.min.js') }}"></script>


<!-- *************
    ************ Vendor Js Files *************
************* -->
<!-- Slimscroll JS -->
<script src="{{ URL::asset('public/assets/scripts/slimscroll/slimscroll.min.js') }}"></script>
<script src="{{ URL::asset('public/assets/scripts/slimscroll/custom-scrollbar.js') }}"></script>

<!-- Daterange -->
<script src="{{ URL::asset('public/assets/scripts/daterange/daterange.js') }}"></script>
<script src="{{ URL::asset('public/assets/scripts/daterange/custom-daterange.js') }}"></script>

<!-- Apex Charts -->
<script src="{{ URL::asset('public/assets/scripts/apex/apexcharts.min.js') }}"></script>
<script src="{{ URL::asset('public/assets/scripts/apex/custom/apexAllCustomGraphs.js') }}"></script>

<!-- Flot Charts -->
<script src="{{ URL::asset('public/assets/scripts/flot/flot.js') }}"></script>
<script src="{{ URL::asset('public/assets/scripts/flot/resize.js') }}"></script>
<script src="{{ URL::asset('public/assets/scripts/flot/custom/small-graphs.js') }}"></script>

<!-- Circliful JS -->
<script src="{{ URL::asset('public/assets/scripts/circliful/circliful.min.js') }}"></script>
<script src="{{ URL::asset('public/assets/scripts/circliful/circliful.custom.js') }}"></script>

<!-- Steps wizard JS -->
<script src="{{ URL::asset('public/assets/scripts/wizard/jquery.steps.min.js') }}"></script>
<script src="{{ URL::asset('public/assets/scripts/wizard/jquery.steps.custom.js') }}"></script>

<!-- Main Js Required -->
<script src="{{ URL::asset('public/assets/js/main.js') }}"></script>
<script src="{{ URL::asset('public/assets/js/customs.js') }}"></script>

<script type="text/javascript">

/* $('.nav-link li').find('a').each(function () {
    var link = new RegExp($(this).attr('href')); //Check if some menu compares inside your the browsers link
    if (link.test(document.location.href)) {
        if(!$(this).parents().hasClass('active-page')){
            $(this).parents('li').addClass('active-page').siblings().removeClass('active-page');  
        }
    }
}); */

/* $(':input.groupname').typeahead({
    source: function(query, process) {
        var path = "{{url('autocomplete-search')}}";
        $.get(path, { query: query }, function (data) {
            process(data);
        });
    },
    updater: function(item) {
        $('#hidden_group_id').val(item.id);
        return item;
    }
}); 

function toggleFullScreen(elem) {
    // ## The below if statement seems to work better ## if ((document.fullScreenElement && document.fullScreenElement !== null) || (document.msfullscreenElement && document.msfullscreenElement !== null) || (!document.mozFullScreen && !document.webkitIsFullScreen)) {
    if ((document.fullScreenElement !== undefined && document.fullScreenElement === null) || (document.msFullscreenElement !== undefined && document.msFullscreenElement === null) || (document.mozFullScreen !== undefined && !document.mozFullScreen) || (document.webkitIsFullScreen !== undefined && !document.webkitIsFullScreen)) {
        if (elem.requestFullScreen) {
            elem.requestFullScreen();
        } else if (elem.mozRequestFullScreen) {
            elem.mozRequestFullScreen();
        } else if (elem.webkitRequestFullScreen) {
            elem.webkitRequestFullScreen(Element.ALLOW_KEYBOARD_INPUT);
        } else if (elem.msRequestFullscreen) {
            elem.msRequestFullscreen();
        }
    } else {
        if (document.cancelFullScreen) {
            document.cancelFullScreen();
        } else if (document.mozCancelFullScreen) {
            document.mozCancelFullScreen();
        } else if (document.webkitCancelFullScreen) {
            document.webkitCancelFullScreen();
        } else if (document.msExitFullscreen) {
            document.msExitFullscreen();
        }
    }
}
window.onload = toggleFullScreen(document.body);
*/

$('#btnSubmit').on('click', function(e) {
    
    var group_name = $("#group_name").val();

    if( group_name =='' ){
        $('#group_name').css("border","2px solid red");
        return false;
    }
    else {
        $('#group_name').css("border","");
    }
    
});

$(':input.groupname').typeahead({
    source: function(query, process) {
        var path = "{{url('autocomplete-search')}}";
        $.get(path, { query: query }, function (data) {
            if(!data.length) {
                $("#btnSubmit").addClass('disabled');
            }
            process(data);
        });
    },
    updater: function(item) {

        $("#btnSubmit").removeClass('disabled');

        if( item.id != '' ) {
            $('#hidden_group_id').val(item.id);
            $('#group_name').css("border","");
            return item;
        }
    }
});

$(':input.itemname').typeahead({
    source: function(query, process) {
        var path = "{{url('item-autocomplete-search')}}";
        $.get(path, { query: query }, function (data) {
            if(!data.length) {
                $("#schemeSubmit").addClass('disabled');
            }
            process(data);
        });
    },
    updater: function(item) {

        $("#schemeSubmit").removeClass('disabled');

        if( item.id != '' ) {
            $('#hidden_scheme_id').val(item.id);
            $('#item_name').css("border","");
            return item;
        }
    }
});

$(':input.customercode').typeahead({
    source: function(query, process) {
        var path = "{{url('cuscode-autocomplete-search')}}";
        $.get(path, { query: query }, function (data) {
            if(!data.length) {
                // $("#schemeSubmit").addClass('disabled');
            }
            process(data);
        });
    },
    updater: function(item) {

        // $("#schemeSubmit").removeClass('disabled');
        if( item.id != '' ) {
            $("#gl_card").removeClass('d-none');
            $('#hidden_customer_id').val(item.id);
            $('#hidden_customer_code').val(item.customer_code);
            $('#hidden_nominee_name').val(item.nominee_name);
            $('#hidden_nominee_relation').val(item.nominee_relation);
            $('#hidden_nominee_dob').val(item.nominee_dob);
            $('#hidden_nominee_age').val(item.nominee_age);
            return item;
        }
    }
});

$(':input.schemename').typeahead({
    source: function(query, process) {
        var path = "{{url('schemecode-autocomplete-search')}}";
        var scheme_type = $("#payment_ref_id").val();
        $.get(path, { query: query, scheme_type:scheme_type }, function (data) {
            if(!data.length) {
                // $("#schemeSubmit").addClass('disabled');
            }
            process(data);
        });
    },
    updater: function(item) {

        // $("#schemeSubmit").removeClass('disabled');
        if( item.id != '' ) {
            $("#navlink_next").removeClass('disabled');
            $("#navlink_previous").removeClass('disabled');
            
            var intvalue = 0;
            if(item.interests.length > 0) {

                $("#interestDetails").removeClass('d-none');
                intvalue = item.interests[0].interest_value;

                var tableBody  = document.getElementById("interestTable");
                var tableBody1 = document.getElementById("interestTable1");
                
                for(var i=0; i< item.interests.length; i++) {
                    tableBody.innerHTML += '<tr><td>' + item.interests[i]['from']+ ' to ' + item.interests[i]['to'] +" "+ item.interests[i]['type'] + '</td>'+
                                                '<td>' + item.interests[i]['interest_value'] + '</td></tr>';
                    tableBody1.innerHTML += '<tr><td>' + item.interests[i]['from']+ ' to ' + item.interests[i]['to'] +" "+ item.interests[i]['type'] + '</td>'+
                                                '<td>' + item.interests[i]['interest_value'] + '</td></tr>';
                }
            }
            var current_gold_rate = 0;
            if( item.gold_rates ) {
                current_gold_rate = item.gold_rates[0].current_rate;
            }

            $('#hidden_scheme_id').val(item.id);
            $('#hidden_group_ref_id').val(item.group_ref_id);
            $('#hidden_group_gold_rate').val(current_gold_rate);
            $('#hidden_tenure').val(item.loan_period);
            $('#hidden_interest_rate').val(intvalue);
            $('.hidden_scheme_name').html(item.name);
            $('.hidden_scheme_tenure').html(item.loan_period);
            $('.hidden_scheme_ir').html(intvalue);
            $('.hidden_pay_frequency').html(item.payment_basis_on);
            $('.hidden_pay_advance').html(item.payment_in_advance);
            $('.hidden_pay_basis').html(item.payment_basis_on);
            $('.hidden_min_loan').html(item.minimum_loan_amount);
            $('.hidden_max_loan').html(item.maximum_loan_amount);
            $('.hidden_document_chrg').html(item.processing_fees);
            $('.hidden_lend_rate').val(item.lending_rate);
            
            $("#schemeDetails").removeClass('d-none');

            return item;
        }
    }
});
</script>