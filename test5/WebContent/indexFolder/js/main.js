$(document).ready(function(){
    
    var items = $('#stage li'),
        itemsByTags = {};
    
    // Looping though all the li items:
    
    items.each(function(i){
        var elem = $(this),
            tags = elem.data('tags').split(',');
        
        // Adding a data-id attribute. Required by the Quicksand plugin:
        elem.attr('data-id',i);
        
        $.each(tags,function(key,value){
            
            // Removing extra whitespace:
            value = $.trim(value);
            
            if(!(value in itemsByTags)){
                // Create an empty array to hold this item:
                itemsByTags[value] = [];
            }
            
            // Each item is added to one array per tag:
            itemsByTags[value].push(elem);
        });
        
    });

    // Creating the "Everything" option in the menu:
    createList('All',items);

    // Looping though the arrays in itemsByTags:
    $.each(itemsByTags,function(k,v){
        createList(k,v);
    });
    
    $('#filter a').live('click',function(e){
        var link = $(this);
        
        link.addClass('active').siblings().removeClass('active');
        
        // Using the Quicksand plugin to animate the li items.
        // It uses data('list') defined by our createList function:
        
        $('#stage').quicksand(link.data('list').find('li'),
                              function() {
                                 $("a.fsand").fancybox({
                                    'overlayShow'   : false,
                                    'transitionIn'  : 'elastic',
                                    'transitionOut' : 'elastic'
                                });
								$(".play").click(function() {
									$.fancybox({
											'padding'		: 0,
											'autoScale'		: false,
											'transitionIn'	: 'none',
											'transitionOut'	: 'none',
											'title'			: this.title,
											'width'		: 680,
											'height'		: 495,
											'href'			: this.href.replace(new RegExp("watch\\?v=", "i"), 'v/'),
											'type'			: 'swf',
											'swf'			: {
												 'wmode'		: 'transparent',
												'allowfullscreen'	: 'true'
											}
										});
								
									return false;
								});  
                              });
        e.preventDefault();
    });
    
    $('#filter a:first').click();
    
    function createList(text,items){
        
        // This is a helper function that takes the
        // text of a menu button and array of li items
        
        // Creating an empty unordered list:
        var ul = $('<ul>',{'class':'hidden'});
        
        $.each(items,function(){
            // Creating a copy of each li item
            // and adding it to the list:
            
            $(this).clone().appendTo(ul);
        });

        ul.appendTo('#gal-container');

        // Creating a menu item. The unordered list is added
        // as a data parameter (available via .data('list'):
        
        var a = $('<a>',{
            html: text,
            href:'#',
            data: {list:ul}
        }).appendTo('#filter');
    }
    
    $("a#example1").fancybox({
        'overlayShow'   : false,
        'transitionIn'  : 'elastic',
        'transitionOut' : 'elastic'
    });
	  
});
//]]>  