

//zTree
		var setting = {
			view: {
				addHoverDom: addHoverDom,
				removeHoverDom: removeHoverDom,
				selectedMulti: false
			},
			edit: {
				enable: true,
				showRenameBtn: false,
				showRemoveBtn:false,
			},
			data: {
				simpleData: {
					enable: true
				}
			},
			callback: {
				beforeDrag: beforeDrag,
				
			}
		};

		var zNodes =[
			{ id:1, pId:0, name:"父节点 1", open:true},
			{ id:11, pId:1, name:"叶子节点 1-1"},
			{ id:12, pId:1, name:"叶子节点 1-2"},
			{ id:13, pId:1, name:"叶子节点 1-3"},
			{ id:2, pId:0, name:"父节点 2", open:true},
			{ id:21, pId:2, name:"叶子节点 2-1"},
			{ id:22, pId:2, name:"叶子节点 2-2"},
			{ id:23, pId:2, name:"叶子节点 2-3"},
			{ id:3, pId:0, name:"父节点 3", open:true},
			{ id:31, pId:3, name:"叶子节点 3-1"},
			{ id:32, pId:3, name:"叶子节点 3-2"},
			{ id:33, pId:3, name:"叶子节点 3-3"}
		];
		function beforeDrag(treeId, treeNodes) {
			return false;
		}
		var newCount = 1;
		var ztreeObj;
		function addHoverDom(treeId, treeNode) {
		
			ztreeObj = treeNode;
			var sObj = $("#" + treeNode.tId + "_span");
			if (treeNode.editNameFlag || $("#addBtn_"+treeNode.id).length>0) return;
			var addStr = "<i class='fa fa-plus-square-o' data-toggle='modal' data-target='#addDeptModal' id='addBtn_" + treeNode.id
				+ "' title='add' onfocus='this.blur();'></i><i class='fa fa-pencil-square-o' data-toggle='modal' data-target='#editDeptModal' id='editBtn_" + treeNode.id
				+ "' title='edit' onfocus='this.blur();'></i><i class='fa fa-minus-square-o' id='removeBtn_" + treeNode.id
				+ "' title='remove' onfocus='this.blur();'></i>";
			sObj.after(addStr);
			/*
			var btn = $("#addBtn_"+treeNode.tId);
			
			if (btn) btn.bind("click", function(){
				var zTree = $.fn.zTree.getZTreeObj("treeDemo");
				zTree.addNodes(treeNode, {id:(100 + newCount), pId:treeNode.id, name:"new node" + (newCount++)});
				return false;
			});
			*/
		};
		function removeHoverDom(treeId, treeNode) {
			$("#addBtn_"+treeNode.id).unbind().remove();
			$("#editBtn_"+treeNode.id).unbind().remove();
			$("#removeBtn_"+treeNode.id).unbind().remove();
		};
		
		$("#confirmDeptAddBtn").click(function(){
			var name ="";
			name= document.getElementById("deptname").value
			var newNodes = {id:112, pId:ztreeObj.id, name:name};
			//var parNodes = {};
			var treeObj = $.fn.zTree.getZTreeObj("treeDemo");
			treeObj.addNodes(ztreeObj,newNodes);
			$("#addDeptModal").modal('hide');
			zNodes[zNodes.length]=newNodes;
			});
			
		//ztree end

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
			$("#deptInfo-Id").click(function(){
				var ca = this.className;				
				if(ca=="fa fa-chevron-up"){
					this.className="fa fa-chevron-down";
					this.innerHTML="展开";
					$("#deptInfo-Id").hide();
				}else{
					this.className="fa fa-chevron-up";
					this.innerHTML="隐藏";
					$("#deptInfo-Id").show();
				}
				
			});

			$("#deptMnmt").click(function(){
				$("#treeDemo").toggle();
			});

			$('#deptMnmt').click(function(){
				$(".action-content").hide();
				$(".dept-content").show();
			});
			$('#actionMnmt').click(function(){
				$(".dept-content").hide();
				$(".action-content").show();
			});
		});
