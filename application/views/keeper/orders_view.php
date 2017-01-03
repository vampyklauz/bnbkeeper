<div class="page-content">
	<div class="page-header">
		<h1>
			Orders
			<small>
				<i class="ace-icon fa fa-angle-double-right"></i>
				List of all orders
			</small>
		</h1>
	</div>
	<div class="row">
		<div class="col-xs-12">
			<table id="grid-table1"></table>
			<div id="grid-pager1"></div>

			<div id="grid-name" class="grid-wrap col-xs-6">
				<table id="grid-table"></table>
			</div>
			<div id="grid-name2" class="grid-wrap col-xs-6">
				<table id="grid-table2"></table>
				<div id="grid-pager2"></div>
			</div>
		</div>
	</div>
</div>

<script src="assets/js/date-time/bootstrap-datepicker.js"></script>
<script src="assets/js/jqGrid/jquery.jqGrid.src.js"></script>
<script src="assets/js/jqGrid/jquery.jqGrid.preset.js"></script>
<script src="assets/js/jqGrid/i18n/grid.locale-en.js"></script>

<script type="text/javascript">
	$('.nav-user-photo').click(function(e){
		e.preventDefault();
		console.log($('#grid-table').wd_jqGrid());
		
		//$('#grid-table').wd_jqGrid('afterSubmit','xxxx','fff');
		//$('#grid-table').jqGrid('navGrid','#grid-pager',{edit:true});
	})
	
	jQuery(function($) {

		$('#grid-table').wd_jqGrid({
			url: 'keeper/jqGrid_ctrl/load_data',
			module: 'viewing_order',
			module_data: {ops:'l_name',status:0},
			colNames: ['Order ID','Order Name','Order Type','Actions'],
			colModel: [	{name:'order_id',index:'order_id', width:60, sorttype:"int"},
						{name:'order_name',index:'order_name',width:90, editable:true},
						{name:'order_type',index:'order_type', width:150, editable: true},
						{name:'actions',index:'actions', width:80, fixed:true, sortable:false, resize:false,
							formatter:'actions', 
							formatoptions:{ 
								keys:true,
								//delbutton: false,//disable delete button
								
								delOptions:{recreateForm: true, beforeShowForm:beforeDeleteCallback},
								//editformbutton:true, editOptions:{recreateForm: true, beforeShowForm:beforeEditCallback}
							}
						},
					],
			sortname: 'order_id',
			toolbarEdit: true,
			toolbarAdd: true,
			toolbarDel: true,
			toolbarSearch: true,
			toolbarRefresh: true,
			toolbarView: true,
			editurl: 'keeper/viewing_order/actions',
			caption: 'Orders',
			height: "100%",
			ondblClickRow: function(rowid){
				console.log(this);
			}
		});


	})

</script>