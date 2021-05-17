    async
    var $ONLINE=$(".ad");
    var $WIN=$(window);
    var $DOCUMENT=$(document);
    var POS;
    var $HTML=$("html,body");
    var $IMG01 = $("#img01");
    
    POS=$WIN.height()-340;
    $ONLINE.delay(2000).stop(true,false).animate({top:POS},800,"easeOutBack");
    
    $WIN.on("scroll resize",onSERVICE);
    onSERVICE();
    function onSERVICE(){
      if($WIN.innerWidth()>768){
      var POS = $WIN.scrollTop();
      if(POS>520){
        $IMG01.fadeIn(800);
      }else{
        $IMG01.fadeOut(800);
      }
      POS=$WIN.height()-450;
      $ONLINE.stop(true,false).animate({top:POS+$WIN.scrollTop()},800,"easeOutBack");
      }
    }
    
    $goTOP.on("click", goTOP);
    $IMG01.on("click", goTOP);
    
    function goTOP(){
      $HTML.animate({scrollTop:0},500);
      return false;
    }
    
  