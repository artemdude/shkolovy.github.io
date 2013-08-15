$(function () {

    // create a style switch button
    $('#ChangeCloudAppearance').toggle(
		        function () {
		            $("#tags ul").hide().addClass("alt").fadeIn("fast");
		        },
		        function () {
		            $("#tags ul").hide().removeClass("alt").fadeIn("fast");
		        }
	        );


    // create a sort by alphabet button
    $('#sortCloudByAlphabet').toggle(
		        function () {
		            $("#tags ul li").tsort({ order: "asc" });
		            $(this).addClass('filter-selected');
		            $('#SortCloudByStrength').removeClass('filter-selected');
		        },
		        function () {
		            $("#tags ul li").tsort({ order: "desc" });
		            $(this).addClass('filter-selected');
		            $('#SortCloudByStrength').removeClass('filter-selected');
		        }
		    );

    $('#SortCloudByStrength').toggle(
		        function () {
		            $("#tags ul li").tsort({ order: "desc", attr: "level" });
		            $(this).addClass('filter-selected');
		            $('#sortCloudByAlphabet').removeClass('filter-selected');
		        },
		        function () {
		            $("#tags ul li").tsort({ order: "asc", attr: "level" });
		            $(this).addClass('filter-selected');
		            $('#sortCloudByAlphabet').removeClass('filter-selected');
		        }
		    );


});