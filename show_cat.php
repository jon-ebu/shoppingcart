<?php
  include ('sticker_sc_fns.php');
  // The shopping cart needs sessions, so start one
  session_start();

  $catid = $_GET['catid'];
  $name = get_category_name($catid);

  do_html_header($name);

  // get the sticker info out from db
  $sticker_array = get_stickers($catid);

  display_stickers($sticker_array);


 
 display_button("index.php", "continue-shopping", "Continue Shopping");
 

  do_html_footer();
?>
