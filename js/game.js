$.ajax({
    url:"game/pve.php",    //the page containing php script
    type: "post",    //request type,
    dataType: 'json',
    data: {registration: "success", name: "xyz", email: "abc@gmail.com"},
    success:function(result){
        console.log(result.abc);
    }
});