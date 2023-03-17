/**
 * Look under your chair! console.log FOR EVERYONE!
 *
 * @see http://paulirish.com/2009/log-a-lightweight-wrapper-for-consolelog/
 */
 (function(b){function c(){}for(var d="assert,count,debug,dir,dirxml,error,exception,group,groupCollapsed,groupEnd,info,log,timeStamp,profile,profileEnd,time,timeEnd,trace,warn".split(","),a;a=d.pop();){b[a]=b[a]||c}})((function(){try
    {console.log();return window.console;}catch(err){return window.console={};}})());
    
    
    
    /**
     * Page-specific call-backs
     * Called after dom has loaded.
     */
    var GLOBAL = {
    
        common : {
            init: function(){
                $('.add_to_cart').bind( 'click', addToCart );
                $('.product-btn-buy').bind( 'click', addToCart );
            }
        },
    
        templateIndex : {
            init: function(){
    
            }
        },
    
        templateProduct : {
            init: function(){
    
            }
        },
    
        templateCart : {
            init: function(){
    
            }
        }
    
    }
    var UTIL = {
    
        fire : function(func,funcname, args){
            var namespace = GLOBAL;
            funcname = (funcname === undefined) ? 'init' : funcname;
            if (func !== '' && namespace[func] && typeof namespace[func][funcname] == 'function'){
                namespace[func][funcname](args);
            }
        },
    
        loadEvents : function(){
            var bodyId = document.body.id;
    
            // hit up common first.
            UTIL.fire('common');
    
            // do all the classes too.
            $.each(document.body.className.split(/\s+/),function(i,classnm){
                UTIL.fire(classnm);
                UTIL.fire(classnm,bodyId);
            });
        }
    
    };
    $(document).ready(UTIL.loadEvents);
    
    
    
    
    
    /**
     * Popup notify add-to-cart
     */
    function notifyProduct($info){
        var wait = setTimeout(function(){
            $.jGrowl($info,{
                life: 5000
            });	
        });
    }
    
    
    /**
     * Ajaxy add-to-cart
     */
    function addToCart(e){
    
        if (typeof e !== 'undefined') e.preventDefault();
    
        var $this = $(this);
    
        var form = $this.parents('form');
    
        $.ajax({
            type: 'POST',
            url: '/cart/add.js',
            async: false,
            data: form.serialize(),
            dataType: 'json',
            error: addToCartFail,
            success: addToCartSuccess,
            cache: false
        });
    }
    function loadCart(cart) {
        $(".cart-icon").html(cart.item_count);
    }
    function addToCartSuccess (jqXHR, textStatus, errorThrown){
    
        $.ajax({
            type: 'GET',
            url: '/cart.js',
            async: false,
            cache: false,
            dataType: 'json',
            success: function(){
            }
        });
        Bizweb.getCart(loadCart);
        var $info = '<div class="row"><div class="col-md-4"><a href="'+ jqXHR['url'] +'"><img width="70px" src="'+ Bizweb.resizeImage(jqXHR['image'], 'small') +'" alt="'+ jqXHR['title'] +'"/></a></div><div class="col-md-8"><div class="jGrowl-note">Sáº£n pháº©m Ä‘Ă£ cho <a href="/cart">Giá» hĂ ng</a></div><a class="jGrowl-title" href="'+ jqXHR['url'] +'">'+ jqXHR['name'] +'</a></div></div>';
        notifyProduct($info);
    }
    
    function addToCartFail(jqXHR, textStatus, errorThrown){
        var response = $.parseJSON(jqXHR.responseText);
    
        var $info = '<div class="error">'+ response.description +'</div>';
        notifyProduct($info);
    }