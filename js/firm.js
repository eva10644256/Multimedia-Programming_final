function imgPreview(fileDom){
    //判斷是否支援FileReader
    if (window.FileReader) {
        var reader = new FileReader();
    } else {
        alert("您的裝置不支援圖片預覽功能，如需該功能請升級您的裝置！");
    }

    //獲取檔案
    var file = fileDom.files[0];
    var imageType = /^image\//;
    //是否是圖片
    if (!imageType.test(file.type)) {
        alert("請選擇圖片！");
        return;
    }
    //讀取完成
    reader.onload = function(e) {
        //獲取圖片dom
        var img = document.getElementById("preview");
        //圖片路徑設定為讀取的圖片
        img.src = e.target.result;

        // ajax 上傳圖片  
        $.post("upload_h5.php", {img: e.target.result}, function(ret) { 
            if (ret.img!='') {  
                alert('upload success');  
                $('#showimg').html('<img src="' + ret.img + '">');  
            } else {  
                alert('upload fail');  
            }
        },'json');  
    };
    reader.readAsDataURL(file);

}