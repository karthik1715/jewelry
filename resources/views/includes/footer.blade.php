
<!-- Container fluid end -->

<!-- *************
    ************ Required JavaScript Files *************
************* -->
<!-- Required jQuery first, then Bootstrap Bundle JS -->
<script src="{{ URL::asset('public/assets/js/jquery.min.js') }}"></script>
<script src="{{ URL::asset('public/assets/js/bootstrap.bundle.min.js') }}"></script>
<script src="{{ URL::asset('public/assets/js/moment.js') }}"></script>
<!-- <script src="{{ URL::asset('public/assets/js/jquery-ui.min.js') }}"></script> -->

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
}); */

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

</script>