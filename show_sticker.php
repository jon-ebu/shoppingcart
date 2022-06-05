<?php
  include ('sticker_sc_fns.php');
  // The shopping cart needs sessions, so start one
  session_start();

  $stickerID = $_GET['stickerID'];

  // get this sticker out of database
  $sticker = get_sticker_details($stickerID);
  do_html_header($sticker['title']);
  display_sticker_details($sticker);

  // set url for "continue button"
  $target = "index.php";
  if($sticker['catid']) {
    $target = "show_cat.php?catid=".$sticker['catid'];
  }

 
    display_button("show_cart.php?new=".$stickerID, "add-to-cart",
                   "Add ".$sticker['title']." To My Shopping Cart");
    display_button($target, "continue-shopping", "Continue Shopping");
  
  do_html_footer();
?>
