$(function(){
	$(".myhacknote span").click(function(){
		                for (var i = 0;i<5;i++){
					                        $(".myhacknote span")[i].onmouseleave=function(e){return false;};
					                        $(".myhacknote span")[i].onmouseenter=function(e){return false;};
					                }
		                var mynote=$(this)[0].dataset.id;

		                $.ajax({url: $("#myroutenote").html(), type:"post",
					                        data:{note:{tip_id:$("#myhackid").html(),note: mynote, user_id:$("#userid").html()}},
					                        success:function(data){
									                          $(".note_total_nb").html("("+data.note_total_nb+")");
									                var note=data.notemoy;
												                        $(".notemoy").html(note)
									                        }});

		        });
});
