*** Variables ***
${Sauce_Labs_Product_Add_To_Cart_BUTTON} =    //div[@class='inventory_item_name ' and contains(text(), 'Product Name')]/parent::a//parent::div[@class='inventory_item_label']/following-sibling::div[@class='pricebar']/button[contains(text(), 'Add to cart')]
${Cart_BUTTON} =    shopping_cart_container
${Cart_Item_LIST} =    //div[@class='cart_item']
