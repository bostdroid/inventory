<%-- 
    Document   : balanceinput
    Created on : Nov 17, 2017, 12:10:57 PM
    Author     : postgres
--%>


<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>ATM Reconciliation Tool</title>

		<meta name="description" content="Static &amp; Dynamic Tables" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->

		<!-- text fonts -->
		<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="assets/js/ace-extra.min.js"></script>

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body class="no-skin">
		<!-- Nav Bar -->
            <%@include file="/WEB-INF/jspf/header.jspf" %>
            <!-- End Nav Bar -->
		<div class="main-container ace-save-state" id="main-container">
			
                        <!--Sidebar-->
                        <%@include file="/WEB-INF/jspf/sidebar.jspf" %>
                        <!--End Sidebar-->

			<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="initHome">Home</a>
							</li>

							<li>
								<a href="">Inventory</a>
							</li>
							<li class="active">Balance</li>
						</ul><!-- /.breadcrumb -->

						
					</div>

					<div class="page-content">
						
						<div class="page-header">
							<h1>
								Balance
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									All recent items
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								

								<div class="row">
									<div class="col-xs-12">
										

										<div class="clearfix">
											<div class="pull-right tableTools-container"></div>
										</div>
										<div class="table-header">
                                                                                    <a href="#" style="text-decoration:none; color:white;">Show All</a>  &nbsp &nbsp &nbsp &nbsp
                                                                                    <a href="#" style="text-decoration:none; color:white;">Create New</a>
										</div>

										<!-- div.table-responsive -->
                                                                                
										<!-- div.dataTables_borderWrap -->
										<div>
                                                                                    <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                                                                                        <thead>
                                                                                            <tr>
                                                                                                <th class="center">
                                                                                                    <label class="pos-rel">
                                                                                                        <input type="checkbox" class="ace" /><span class="lbl"></span>
                                                                                                    </label>
                                                                                                </th>
                                                                                                <th>Branch Name</th>
                                                                                                <th>Address</th>
                                                                                                <th class="hidden-480">Branch Code</th>
                                                                                                <!--<th><i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>Status</th>-->
                                                                                                <th class="hidden-480">Create Date</th>
                                                                                                <th></th>
                                                                                            </tr>
                                                                                        </thead>
                                                                                        <tbody>
                                                                                            <s:iterator value="branches">                      
                                                                                                <tr>
                                                                                                    <td class="center">
                                                                                                        <label class="pos-rel"><input type="checkbox" class="ace" /><span class="lbl"></span></label>
                                                                                                    </td>
                                                                                                    <td><a href="#"><s:property value="branchName"/></a></td>
                                                                                                    <td><s:property value="address"/></td>
                                                                                                    <td class="hidden-480"><s:property value="branchCode"/></td>
                                                                                                    <!--<td><s:property value="status"/></td>-->
                                                                                                    <td class="hidden-480">
                                                                                                        <span class=""><s:property value="createDate"/></span>
                                                                                                    </td>
                                                                                                    
                                                                                                    <td>
                                                                                                        <div class="hidden-sm hidden-xs action-buttons">
                                                                                                            <a class="blue" disabled="true" href='viewBranch?editMode=V&branch.id=<s:property value="id"/>'>
                                                                                                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                                                                                            </a>
                                                                                                            <a class="green" disabled="true" href='viewBranch?editMode=U&branch.id=<s:property value="id"/>'>
                                                                                                                    <i class="ace-icon fa fa-pencil bigger-130"></i>
                                                                                                            </a>
                                                                                                            <a class="red" disabled="true" href='viewBranch?editMode=R&branch.id=<s:property value="id"/>'>
                                                                                                                    <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                                                                                            </a>
                                                                                                        </div>
                                                                                                        <div class="hidden-md hidden-lg">
                                                                                                            <div class="inline pos-rel">
                                                                                                                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                                                                                                        <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                                                                                                </button>
                                                                                                                    <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                                                                                                        <li><a disabled="true" href='viewBranch?editMode=V&branch.id=<s:property value="id"/>' data-toggle="modal" class="tooltip-info" data-rel="tooltip" title="View">
                                                                                                                                <span class="blue">
                                                                                                                                    <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                                                                                                                </span>
                                                                                                                            </a>
                                                                                                                        </li>
                                                                                                                        <li><a disabled="true" href='viewBranch?editMode=U&branch.id=<s:property value="id"/>' data-toggle="modal" class="tooltip-success" data-rel="tooltip" title="Edit">
                                                                                                                                <span class="green">
                                                                                                                                        <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                                                                                </span>
                                                                                                                            </a>
                                                                                                                        </li>
                                                                                                                            <li><a disabled="true" href='viewBranch?editMode=R&branch.id=<s:property value="id"/>' data-toggle="modal" class="tooltip-error" data-rel="tooltip" title="Delete">
                                                                                                                                    <span class="red">
                                                                                                                                            <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                                                                                    </span>
                                                                                                                                </a>
                                                                                                                            </li>
                                                                                                                    </ul>
                                                                                                            </div>
                                                                                                    </div>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </s:iterator>
                                                                                        </tbody>
                                                                                    </table>
										</div>
									</div>
								</div>

								
                                                            
                                                            
								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->

			<div class="footer">
				<div class="footer-inner">
					<div class="footer-content">
						<span class="bigger-120">
							<span class="blue bolder">Ace</span>
							Application &copy; 2013-2014
						</span>

						&nbsp; &nbsp;
						<span class="action-buttons">
							<a href="#">
								<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-rss-square orange bigger-150"></i>
							</a>
						</span>
					</div>
				</div>
			</div>

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="assets/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->
		<script src="assets/js/jquery.dataTables.min.js"></script>
		<script src="assets/js/jquery.dataTables.bootstrap.min.js"></script>
		<script src="assets/js/dataTables.buttons.min.js"></script>
		<script src="assets/js/buttons.flash.min.js"></script>
		<script src="assets/js/buttons.html5.min.js"></script>
		<script src="assets/js/buttons.print.min.js"></script>
		<script src="assets/js/buttons.colVis.min.js"></script>
		<script src="assets/js/dataTables.select.min.js"></script>

		<!-- ace scripts -->
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
				//initiate dataTables plugin
				var myTable = 
				$('#dynamic-table')
				//.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
				.DataTable( {
					bAutoWidth: false,
					"aoColumns": [
					  { "bSortable": false },
					  null, null,null, null, null,
					  { "bSortable": false }
					],
					"aaSorting": [],
					
					
					//"bProcessing": true,
			        //"bServerSide": true,
			        //"sAjaxSource": "http://127.0.0.1/table.php"	,
			
					//,
					//"sScrollY": "200px",
					//"bPaginate": false,
			
					//"sScrollX": "100%",
					//"sScrollXInner": "120%",
					//"bScrollCollapse": true,
					//Note: if you are applying horizontal scrolling (sScrollX) on a ".table-bordered"
					//you may want to wrap the table inside a "div.dataTables_borderWrap" element
			
					//"iDisplayLength": 50
			
			
					select: {
						style: 'multi'
					}
			    } );
			
				
				
				$.fn.dataTable.Buttons.defaults.dom.container.className = 'dt-buttons btn-overlap btn-group btn-overlap';
				
				new $.fn.dataTable.Buttons( myTable, {
					buttons: [
					  {
						"extend": "colvis",
						"text": "<i class='fa fa-search bigger-110 blue'></i> <span class='hidden'>Show/hide columns</span>",
						"className": "btn btn-white btn-primary btn-bold",
						columns: ':not(:first):not(:last)'
					  },
					  {
						"extend": "copy",
						"text": "<i class='fa fa-copy bigger-110 pink'></i> <span class='hidden'>Copy to clipboard</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "csv",
						"text": "<i class='fa fa-database bigger-110 orange'></i> <span class='hidden'>Export to CSV</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "excel",
						"text": "<i class='fa fa-file-excel-o bigger-110 green'></i> <span class='hidden'>Export to Excel</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "pdf",
						"text": "<i class='fa fa-file-pdf-o bigger-110 red'></i> <span class='hidden'>Export to PDF</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "print",
						"text": "<i class='fa fa-print bigger-110 grey'></i> <span class='hidden'>Print</span>",
						"className": "btn btn-white btn-primary btn-bold",
						autoPrint: false,
						message: 'This print was produced using the Print button for DataTables'
					  }		  
					]
				} );
				myTable.buttons().container().appendTo( $('.tableTools-container') );
				
				//style the message box
				var defaultCopyAction = myTable.button(1).action();
				myTable.button(1).action(function (e, dt, button, config) {
					defaultCopyAction(e, dt, button, config);
					$('.dt-button-info').addClass('gritter-item-wrapper gritter-info gritter-center white');
				});
				
				
				var defaultColvisAction = myTable.button(0).action();
				myTable.button(0).action(function (e, dt, button, config) {
					
					defaultColvisAction(e, dt, button, config);
					
					
					if($('.dt-button-collection > .dropdown-menu').length == 0) {
						$('.dt-button-collection')
						.wrapInner('<ul class="dropdown-menu dropdown-light dropdown-caret dropdown-caret" />')
						.find('a').attr('href', '#').wrap("<li />")
					}
					$('.dt-button-collection').appendTo('.tableTools-container .dt-buttons')
				});
			
				////
			
				setTimeout(function() {
					$($('.tableTools-container')).find('a.dt-button').each(function() {
						var div = $(this).find(' > div').first();
						if(div.length == 1) div.tooltip({container: 'body', title: div.parent().text()});
						else $(this).tooltip({container: 'body', title: $(this).text()});
					});
				}, 500);
				
				
				
				
				
				myTable.on( 'select', function ( e, dt, type, index ) {
					if ( type === 'row' ) {
						$( myTable.row( index ).node() ).find('input:checkbox').prop('checked', true);
					}
				} );
				myTable.on( 'deselect', function ( e, dt, type, index ) {
					if ( type === 'row' ) {
						$( myTable.row( index ).node() ).find('input:checkbox').prop('checked', false);
					}
				} );
			
			
			
			
				/////////////////////////////////
				//table checkboxes
				$('th input[type=checkbox], td input[type=checkbox]').prop('checked', false);
				
				//select/deselect all rows according to table header checkbox
				$('#dynamic-table > thead > tr > th input[type=checkbox], #dynamic-table_wrapper input[type=checkbox]').eq(0).on('click', function(){
					var th_checked = this.checked;//checkbox inside "TH" table header
					
					$('#dynamic-table').find('tbody > tr').each(function(){
						var row = this;
						if(th_checked) myTable.row(row).select();
						else  myTable.row(row).deselect();
					});
				});
				
				//select/deselect a row when the checkbox is checked/unchecked
				$('#dynamic-table').on('click', 'td input[type=checkbox]' , function(){
					var row = $(this).closest('tr').get(0);
					if(this.checked) myTable.row(row).deselect();
					else myTable.row(row).select();
				});
			
			
			
				$(document).on('click', '#dynamic-table .dropdown-toggle', function(e) {
					e.stopImmediatePropagation();
					e.stopPropagation();
					e.preventDefault();
				});
				
				
				
				//And for the first simple table, which doesn't have TableTools or dataTables
				//select/deselect all rows according to table header checkbox
				var active_class = 'active';
				$('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function(){
					var th_checked = this.checked;//checkbox inside "TH" table header
					
					$(this).closest('table').find('tbody > tr').each(function(){
						var row = this;
						if(th_checked) $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
						else $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
					});
				});
				
				//select/deselect a row when the checkbox is checked/unchecked
				$('#simple-table').on('click', 'td input[type=checkbox]' , function(){
					var $row = $(this).closest('tr');
					if($row.is('.detail-row ')) return;
					if(this.checked) $row.addClass(active_class);
					else $row.removeClass(active_class);
				});
			
				
			
				/********************************/
				//add tooltip for small view action buttons in dropdown menu
				$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				
				//tooltip placement on right or left
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('table')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					//var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
				
				
				
				
				/***************/
				$('.show-details-btn').on('click', function(e) {
					e.preventDefault();
					$(this).closest('tr').next().toggleClass('open');
					$(this).find(ace.vars['.icon']).toggleClass('fa-angle-double-down').toggleClass('fa-angle-double-up');
				});
				/***************/
				
				
				
				
				
				/**
				//add horizontal scrollbars to a simple table
				$('#simple-table').css({'width':'2000px', 'max-width': 'none'}).wrap('<div style="width: 1000px;" />').parent().ace_scroll(
				  {
					horizontal: true,
					styleClass: 'scroll-top scroll-dark scroll-visible',//show the scrollbars on top(default is bottom)
					size: 2000,
					mouseWheelLock: true
				  }
				).css('padding-top', '12px');
				*/
			
			
			})
		</script>
                <script lang="Javascript">
function docreate()
//var frm = document.createElement("form");
    {
        var hiddenField1 = document.createElement("input");
            hiddenField1.setAttribute("type", "hidden");
            hiddenField1.setAttribute("name", "editMode");
           frm.setAttribute("method", "POST");    
               frm.setAttribute("action", "createNewUser");
               hiddenField1.setAttribute("value", "C");
               frm.appendChild(hiddenField1);
 
            frm.submit();
    }
                </script>               
	</body>
</html>












<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>


<!DOCTYPE html>
<html>
    <head>
        
        <meta charset="utf-8">
        <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->
        <title>ATM Report Portal</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta name="viewport" content="width=device-width">        
        <link rel="stylesheet" href="css/templatemo_main.css"/>

         <link rel="stylesheet" type="text/css" media="all" href="tablepadding.css" />
    
        <link href="http://cdn.syncfusion.com/15.1.0.41/js/web/flat-azure/ej.web.all.min.css" rel="stylesheet"/>
        
        <link 
        href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css" 
        rel="stylesheet"  type='text/css'>

        <link rel="stylesheet" href="http://cdn.syncfusion.com/13.2.0.29/js/web/flat-azure/ej.web.all.min.css" />
        <script src="//code.jquery.com/jquery-1.12.4.js"></script>
        <script src="syncfusion/jsrender.min.js"></script>
        <script src="syncfusion/ej.web.all.min.js"> </script>
        
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css"/>
        <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
        <style>
    .navbar-inverse {
    background-color: #EAEDED;
    }
    .dataTables_wrapper .dataTables_paginate .paginate_button {
    padding : 0px;
    margin-left: 0px;
    display: inline;
    border: 0px;
    }
    .dataTables_wrapper .dataTables_paginate .paginate_button:hover {
        border: 0px;
    }
table.dataTable tbody th, table.dataTable tbody td {
    padding: 4px 10px;
}
        </style>
        <%
        String tableTitle= "Error Report";
        %>
        
    </head>
    <body>
        
        <div class="navbar navbar-inverse" role="navigation">
            <div class="navbar-header">
                <div class="logo">
                <a target="_blank" class="logo" href="http://www.activedgetechnologies.com">
                    <img src="logo3.png"> 

                </a>
                </div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                        <span class = "label label-primary" style="font-family: monospace; 
                              font-weight: bolder;  font-size: 18px;">ATM Report Portal</span>
                    </a>

                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </button> 
            </div>   
        </div>    

        <div id="main-wrapper">
            
            
            
            <div class="template-page-wrapper">
                <div class="navbar-collapse collapse templatemo-sidebar">
                   <ul class="templatemo-sidebar-menu">
                            <!--li class="dropdown">
                                <a href="#" class="dropdown-toggle" role="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fa fa-home"></i>Main Menu
                                <span class="caret"></span></a>
                                 <ul class="dropdown-menu templatemo-sidebar-menu"-->
                                <li class="active"><a href="rp" style="font-size: 14px;font-family: Calibri; font-weight: bolder;"><i class="fa fa-database text-orange"></i> Report</a></li>
                                <li><a href="initFile" style="font-size: 14px;font-family: Calibri; font-weight: bolder;"><i class="fa fa-download text-orange"></i> Download</a></li>
                                <li><a href="initJournalViewer" style="font-size: 14px;font-family: Calibri; font-weight: bolder;"><i class="fa fa-binoculars text-orange"></i> Journal Viewer</a></li>
                                <li><a href="#" style="font-size: 14px;font-family: Calibri; font-weight: bolder;"><i class="fa fa-android text-orange"></i>Dashboard</a></li>
                                 </ul>
                            

                   </ul>
                </div><!--/.navbar-collapse -->
                <div class="templatemo-content-wrapper">
                    <div class="templatemo-content">
                        <ol class="breadcrumb">
                            <li><a href="rp">Home</a></li>
                            <li class="active"><a href="#">Error Report</a></li>
                        </ol>
                  

                                   
                
        <div class="row" style=" font-family: calibri; font-size: 11px;
                 min-height:1950px; overflow: auto;">
            <div class="col-sm-12" style="font-family: calibri; font-size: 12px;">
                   
                
                       
                    <s:form id="myForm" method="post" action="findReportsByCriteria">     
                    <div class="form-group"> 
                        <div class="col-sm-11" >
                            
                            <div class="col-xs-3" > 
                                <span style="font-family: calibri; font-size: 12px;
                                      font-weight: bolder; color:#0059b3;"> 
                                   Transaction Start Date:</span><input type="text" name="report.startDate" required="required" id="startDatePicker"
                                                                    placeholder ="click to select date" style="font-family: calibri; font-size: 15px;"/>
                            </div>
                            <div class="col-xs-3" > 
                                <span style="font-family: calibri; font-size: 12px;
                                      font-weight: bolder; color:#0059b3;"> 
                                    Transaction  End Date:</span><input type="text" name="report.endDate" required="required" id="endDatePicker"
                                                                 onclick="loaddate();return(false);" placeholder ="click to select date" style="font-family: calibri; font-size: 15px;"/>
                            </div>        

                            
                            <div class="col-xs-3" > 
                                <span style="font-family: calibri; font-size: 12px;
                                      font-weight: bolder; color:#0059b3;"> 
                                    Terminals:</span><br>
                                <input type="text" name="report.terminal" id="terminalID" required="required" title="Enter a terminal ID or enter the word 'ALL'" 
                                                                     style="font-family: calibri; font-size: 15px; height: 30px;"/>
                                 
                            </div>
<!--
                            <div class="col-xs-3" >
                                <span style="font-family: calibri; font-size: 12px;
                                      font-weight: bolder; color:#0059b3;"> 
                                    Report Title</span>
                                <input type="text" name="tabletitle" class="minput"  data-toggle="tooltip" data-placement="left" title="Report Title" 
                                       style="font-family: calibri; font-size: 11px; " placeholder="Enter Your Report Title Here"    required="required"  value="<%= tableTitle%>">


                            </div>-->



                        <div class="col-sm-3" >
                            <button type="submit" onclick="doSubmit()" class="btn btn-primary btn-sm" style="font-family: Calibri; 
                                            font-weight: bolder;  font-size: 11px;"><a href="javascript:doSearch();">Search</a></button> 
                        </div> 


                                        
                    </div>
                                    </div>
                </s:form>
                  
                        </div>
                <!--</div>-->
        <!--</div>-->
        <br><br>
            <div class="errors">
            <h6 style="font-family: Calibri; color:#0059b3;"><span style="color:red;"> ${verify}</span></h6>
        </div>

                

                        

                <%
//                if (verify!=true){
//                    out.println("<h6 style=\"font-family: Calibri; color:#0059b3;\"><span style=\"color:red;\">" + "${verify}" +"</span></h6>");
//                }
//                else{
//                    out.println("<h6 style=\"font-family: Calibri; color:#0059b3;\"><span style=\"color:blue;\">" + "${verify}" +"</span></h6>");
//                }
                %>
                <!--</div>-->
<!--                        <div class="row">-->
 

                            <div class="col-md-12">
                                            <br><br>
                                <table  id="FlatGrid" class="table table-striped table-bordered"
                                style="font-family: calibri; font-size: 11px;width:100%">
                                <caption style="background-color:#f2f2f2;font-family: Calibri; font-weight: bolder;color:#0059b3;">
                                <span class="align-left"><strong><span  style=" font-weight: bolder;
                                                                        font-family: calibri; font-size: 13px;">&nbsp;<%= tableTitle%></span></strong></span>
                                                                  
                                                        <thead>                                        
                                                        <tr>
                                                        <th>ID</th>
                                                        <th>Terminal</th>
                                                        <th>Source</th>
                                                        <th>Display</th>
                                                        <th>Card Number</th>
                                                        <th>Account No</th>
                                                        <th>STAN</th>
                                                        <th>Amount</th>
                                                        <th>RRN</th>
                                                        <th>Status</th>
                                                        <th>Date</th>
                                                        <th>Time</th>
                                                        <th>Comment</th>
                                                        <th>Add Comment</th>
                                                        
                                                        </tr>
                                                        </thead>
                                                        
                                                        <tbody>
                                                            <s:iterator value="reports">   
                                                                <tr>
                                                                    <td><s:property value="id"/></td>
                                                                    <td><s:property value="terminal"/></td>
                                                                    <td><s:property value="source"/></td>
                                                                    <td><s:property value="display"/></td>
                                                                    <td><s:property value="cardNumber"/></td>
                                                                    <td><s:property value="accountNo"/></td>
                                                                    <td><s:property value="stan"/></td>
                                                                    <td><s:property value="amount"/></td>
                                                                    <td><s:property value="rrn"/></td>
                                                                    <td><s:property value="status"/></td>
                                                                    <td><s:property value="startDate"/></td>
                                                                    <td><s:property value="time"/></td>
                                                                    <td><s:property value="comment"/></td>
                                                                    <td>
                                                                        <s:if test='comment>= "" '>
                                                                            <a href="#" class="tooltip-success" data-rel="tooltip" title="Can't Comment">
                                                                                <span class="green">
                                                                                        <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                                    </span>
                                                                            </a>
                                                                        </s:if>
                                                                        <s:else>
                                                                            <input type="hidden" value="${report.reportId}"/><a href="addCommentLine?report.reportId=<s:property value='id'/>" class="tooltip-success" data-rel="tooltip" title="Comment">
                                                                                 
                                                                            <span class="green">
                                                                                        <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                                    </span>
                                                                                </a>
                                                                        </s:else>
                                                                        
                                                                    </td>
                                                                    
                                                                    
                                                                </tr>
                                                            </s:iterator>
                                                        </tbody>
                                </caption>
                                </table>
                         
                            </div>
                                                                        
                        </div>
     
                <!--</div>-->

<!--                <div id="commentModal" class="modal fade" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                 <div class="row">
                            <div class="col-md-12">
                                    
                                    <div class="form-group">
                                        <%--<s:form action="createComment" method="POST">--%>
                                            <label for="CommentBox"><span class="fa fa-message"></span>Comment Box  </label>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right" for="Comment1"> Comment </label>

                                                <div class="col-sm-9">
                                                    
                                                    <textarea name="viewer.comment" cols="30" rows="5" placeholder="Enter feedback here"></textarea>
                                                </div>
                                            </div>
                                                    
                                                    <div class="col-md-offset-3 col-md-9">
                                                        <button class="btn btn-info" type="submit">
                                                            <i class="ace-icon fa fa-check bigger-110"></i>
                                                            Submit
                                                        </button>
                                                        
                                                        <button class="btn btn-default" type="submit" data-dismiss="modal">
                                                            <i class="ace-icon fa fa-check bigger-110"></i>
                                                            Cancel
                                                        </button>

                                                    </div>
                                        <%--</s:form>--%>
                                    </div>
                                       
                </div>
                    </div>
                            </div>
                            </div> 
                            </div>
                </div> Delete Modal -->

                
      
                                        </div>
                        
        
        
        
                        

   

          
                <!--End Sign Out Modal-->
                    <footer class="templatemo-footer">
                      <div class="templatemo-copyright">
                        <p>Copyright &copy; 2017 ActivEdge Technologies Ltd</p>
                      </div>
                    </footer>
                  </div>
                                    

        </div>

        </div>

        <script src="js/templatemo_script.js"></script>



<script src="bootstrap/js/bootstrap.min.js"></script>

<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables/dataTables.bootstrap.min.js"></script>

<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>

<script src="plugins/fastclick/fastclick.js"></script>

<script src="dist/js/app.min.js"></script>

<script src="dist/js/demo.js"></script>




<script src="plugins/bt/swf/flashExport.swf.swf"></script>


<link rel="stylesheet" type="text/css" href="plugin/DT/datatables.min.css"/>

<link rel="stylesheet" type="text/css" media="all" href="plugins/medate/jsDatePick_ltr.min.css" />

<script type="text/javascript" src="plugins/medate/jsDatePick.min.1.3.js"></script>

<script src="bootstrap/js/bootstrap.min.js"></script>

<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables/dataTables.bootstrap.min.js"></script>

<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>

<script src="plugins/fastclick/fastclick.js"></script>

<script src="dist/js/app.min.js"></script>

<script src="dist/js/demo.js"></script>
<script src="DT/Buttons-1.2.2/swf/flashExport.swf"></script>

<link rel="stylesheet" href="plugins/bt/css/buttons.bootstrap.css">
<link rel="stylesheet" href="plugins/bt/css/buttons.bootstrap.min.css">
<link rel="stylesheet" href="plugins/bt/css/buttons.bootstrap4.css">
<link rel="stylesheet" href="plugins/bt/css/buttons.bootstrap4.min.css">
<link rel="stylesheet" href="plugins/bt/css/buttons.dataTables.css">
<link rel="stylesheet" href="plugins/bt/css/buttons.dataTables.min.css">
<link rel="stylesheet" href="plugins/bt/css/buttons.foundation.css">
<link rel="stylesheet" href="plugins/bt/css/buttons.foundation.min.css">
<link rel="stylesheet" href="plugins/bt/css/buttons.jqueryui.css">
<link rel="stylesheet" href="plugins/bt/css/buttons.jqueryui.min.css">
<link rel="stylesheet" href="plugins/bt/css/buttons.semanticui.css">
<link rel="stylesheet" href="plugins/bt/css/buttons.semanticui.min.css">
<link rel="stylesheet" href="plugins/bt/css/common.scss">
<link rel="stylesheet" href="plugins/bt/css/mixins.scss">

<script src="plugins/bt/js/dataTables.buttons.js"></script>
<script src="plugins/bt/js/dataTables.buttons.min.js"></script>
<script src="plugins/bt/js/buttons.bootstrap.js"></script>
<script src="plugins/bt/js/buttons.bootstrap.min.js"></script>
<script src="plugins/bt/js/buttons.bootstrap4.js"></script>
<script src="plugins/bt/js/buttons.bootstrap4.min.js"></script>
<script src="plugins/bt/js/buttons.colVis.js"></script>
<script src="plugins/bt/js/buttons.colVis.min.js"></script>
<script src="plugins/bt/js/buttons.flash.js"></script>
<script src="plugins/bt/js/buttons.flash.min.js"></script>
<script src="plugins/bt/js/buttons.foundation.js"></script>
<script src="plugins/bt/js/buttons.foundation.min.js"></script>
<script src="plugins/bt/js/buttons.html5.js"></script>
<script src="plugins/bt/js/buttons.html5.min.js"></script>
<script src="plugins/bt/js/buttons.jqueryui.js"></script>
<script src="plugins/bt/js/buttons.jqueryui.min.js"></script>
<script src="plugins/bt/js/buttons.print.js"></script>
<script src="plugins/bt/js/buttons.print.min.js"></script>
<script src="plugins/bt/js/buttons.semanticui.js"></script>
<script src="plugins/bt/js/buttons.semanticui.min.js"></script>


<script src="plugins/bt/swf/flashExport.swf.swf"></script>
    </body>
</html>

	

<script type="text/javascript" class="init">


    function doSearch(){
        if (document.getElementById('startDatePicker').value === "" || document.getElementById('endDatePicker').value === "" || document.getElementById('terminalID').value===""){
            alert("Please specify the journal date or the terminal."); 
        }
        
//        else if (document.getElementById('startDatePicker').value !== "" && document.getElementById('endDatePicker').value !== "" && document.getElementById('terminalID').value==="ALL") {
//           document.getElementById('myForm').action="findReportsByDate";
//           document.getElementById('myForm').submit();
//        }
//        else
//        {
//            document.getElementById('myForm').submit();
////            alert("Please specify the journal date or the terminal.");
//        }
else{
    document.getElementById('myForm').submit();
}
        
    }
    
    function doBack(){
        window.location = "rp";
    }
            
</script>

<script>
            window.onload = function() {
            new JsDatePick({
            useMode: 2,
            target: "endDatePicker",
            yearsRange: [1998, 2040],
            dateFormat: "%Y-%m-%d"
            });
    };
</script>
    <script type="text/javascript">
        $(function () {
            // declaration of ejDatePicker
            $("#sstartDatePicker").ejDatePicker({

                dateFormat: "yyyy-MM-dd"
        });

            
        });
        
            window.onload = function() {
            new JsDatePick({
            useMode: 2,
            target: "sttartDatePicker",
            yearsRange: [1998, 2040],
            dateFormat: "%Y-%m-%d"
            });
    };
        
    </script>
</script>

    <script type="text/javascript">
        
                $(function () {
            // declaration of ejDatePicker
            $("#eendDatePicker").ejDatePicker({

                dateFormat: "yyyy-MM-dd"
        });

            
        });
        
        
    </script>

<script>

$(document).ready(function() {
    var selected = [];
    $('#FlatGrid').DataTable( {
        dom: 'lBfrtip',
//        dom: '<"top"B>rlft<"bottom" p>',
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print' 
        ],

        "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
        data: dataSet,
        "oLanguage": {
        "sSearch": "<span>Filter:</span> _INPUT_" //search
},
//        "ajax": "/cgi-bin/test",
//        "rowCallback": function(row, data){
//            if ($.inArray(data.DT_RowId, selected) != -1){
//                $(row).addClass('selected');
//            }
//        },
                
//        columns : [ 
//                        { data: "TERMINAL" },
//			{ data: "SOURCE" },
//			{ data: "DISPLAY" },
//                        { data: "CARD NUMBER" },
//                        { data: "ACCOUNT NO" },
//                        { data: "STAN" },
//                        { data: "AMOUNT"},
//                        { data: "RRN" },
//                        { data: "STATUS" },
//                        { data: "DATE" },
//                        { data: "TIME"}
//                        { data: "COMMENT"}
//                        {"mRender": function (data, type, row){
//                                return '<a href=comment.jsp?id="'+row[0]+'">Comment</a>';
//                        }}
                        

//        ]                  

    });
        
    });



    var dataSet = [        
        <%--<s:iterator value="reports">--%>   
//            { "ID": '<s:property value="id"/>',
//              "TERMINAL": '<s:property value="terminal"/>',
//              "SOURCE": '<s:property value="source"/>', 
//              "DISPLAY": '<s:property value="display"/>',
//              "CARD NUMBER": '<s:property value="cardNumber"/>',
//              "ACCOUNT NO": '<s:property value="accountNo"/>',
//              "STAN": '<s:property value="stan"/>',
//              "AMOUNT": '<s:property value="amount"/>',
//              "RRN": '<s:property value="rrn"/>',
//              "STATUS": '<s:property value="status"/>',
//              "DATE": '<s:property value="startDate"/>',
//              "TIME": '<s:property value="time"/>',
//              "COMMENT": '<s:property value="comment"/>'
//  
//             },
        <%--</s:iterator>--%> 
    ];
     
    function doSubmit()    
    {
        document.body.style.cursor = 'wait';

    }
</script>
<script type="text/javascript" class="init">
    window.onload = function() {
        new JsDatePick({
            useMode: 2,
            target: "startDatePicker",
            yearsRange: [1998, 2040],
            dateFormat: "%Y-%m-%d"

        });
    };


    function loaddate()
    {
        new JsDatePick({
            useMode: 2,
            target: "endDatePicker",
            yearsRange: [1998, 2040],
            dateFormat: "%Y-%m-%d"

        });
    }
</script>