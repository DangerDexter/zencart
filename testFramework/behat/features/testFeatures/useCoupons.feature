Feature: Customer Discount Coupons
  Test the use of coupons in catalog


  @javascript
  Scenario: I Test tax non inclusive excluding shipping tax
    Given I do a standard customer login with <param>"default_customer_email", <param>"default_customer_password"
    Then I visit "index.php?main_page=shopping_cart&action=empty_cart"
    And I visit "index.php?main_page=product_info&cPath=1_9&products_id=27&action=buy_now"
    And I visit "index.php?main_page=checkout_shipping"
    Then I select "storepickup_storepickup0" from "shipping"
    And I click on the element with xpath "//*[@id='checkoutShipping']/form/div[5]/input"
    And I select "cod" from "payment"
    And I fill in "dc_redeem_code" with "test10percent"
    And I click on the element with css "#paymentSubmit > input[type='submit']"
    Then I should see "499.99"
    And I should see "-$50.00"
    And I should see "31.50"
    And I should see "481.49"
    Then I press button "btn_submit"


    Given I visit "index.php?main_page=shopping_cart&action=empty_cart"
    Then I visit "index.php?main_page=product_info&cPath=1_9&products_id=27&action=buy_now"
    And I visit "index.php?main_page=checkout_shipping"
    Then I select "storepickup_storepickup0" from "shipping"
    And I click on the element with xpath "//*[@id='checkoutShipping']/form/div[5]/input"
    And I select "cod" from "payment"
    And I fill in "dc_redeem_code" with "test100percent"
    And I click on the element with css "#paymentSubmit > input[type='submit']"
    Then I should see "499.99"
    And I should see "-$499.99"
    And I should see "0.00"
    Then I press button "btn_submit"

    Given I visit "index.php?main_page=shopping_cart&action=empty_cart"
    Then I visit "index.php?main_page=product_info&cPath=1_9&products_id=27&action=buy_now"
    And I visit "index.php?main_page=checkout_shipping"
    Then I select "storepickup_storepickup0" from "shipping"
    And I click on the element with xpath "//*[@id='checkoutShipping']/form/div[5]/input"
    And I select "cod" from "payment"
    And I fill in "dc_redeem_code" with "test10fixed"
    And I click on the element with css "#paymentSubmit > input[type='submit']"
    And I should see "499.99"
    And I should see "-$10.00"
    And I should see "34.30"
    And I should see "524.29"
    Then I press button "btn_submit"

    Given I visit "index.php?main_page=shopping_cart&action=empty_cart"
    Then I visit "index.php?main_page=product_info&cPath=1_9&products_id=3&action=buy_now"
    And I visit "index.php?main_page=product_info&cPath=1_9&products_id=3&action=buy_now"
    And I visit "index.php?main_page=product_info&cPath=1_9&products_id=27&action=buy_now"
    And I visit "index.php?main_page=checkout_shipping"
    Then I select "storepickup_storepickup0" from "shipping"
    And I click on the element with xpath "//*[@id='checkoutShipping']/form/div[5]/input"
    And I select "cod" from "payment"
    And I fill in "dc_redeem_code" with "test10percentrestricted"
    And I click on the element with css "#paymentSubmit > input[type='submit']"
    Then I should see "579.97"
    And I should see "-$8.00"
    And I should see "40.04"
    And I should see "612.01"
    Then I press button "btn_submit"

  @javascript
  Scenario: I Test tax inclusive excluding shipping tax
    Given I switch to tax "inclusive"
    Then I do a standard customer login with <param>"default_customer_email", <param>"default_customer_password"
    Then I visit "index.php?main_page=shopping_cart&action=empty_cart"
    And I visit "index.php?main_page=product_info&cPath=1_9&products_id=27&action=buy_now"
    And I visit "index.php?main_page=checkout_shipping"
    Then I select "item_item" from "shipping"
    Then I click on the element with xpath "//*[@id='checkoutShipping']/form/div[5]/input"
    Then I select "cod" from "payment"
    Then I fill in "dc_redeem_code" with "test10percent"
    Then I click on the element with css "#paymentSubmit > input[type='submit']"
    Then I should see "534.99"
    Then I should see "-$53.50"
    Then I should see "31.50"
    Then I should see "483.99"
    Then I press button "btn_submit"


    Then I visit "index.php?main_page=shopping_cart&action=empty_cart"
    And I visit "index.php?main_page=product_info&cPath=1_9&products_id=27&action=buy_now"
    And I visit "index.php?main_page=checkout_shipping"
    Then I select "item_item" from "shipping"
    Then I click on the element with xpath "//*[@id='checkoutShipping']/form/div[5]/input"
    Then I select "cod" from "payment"
    Then I fill in "dc_redeem_code" with "test100percent"
    Then I click on the element with css "#paymentSubmit > input[type='submit']"
    Then I should see "534.99"
    Then I should see "-$534.99"
    Then I should see "2.50"
    Then I press button "btn_submit"

    Then I visit "index.php?main_page=shopping_cart&action=empty_cart"
    And I visit "index.php?main_page=product_info&cPath=1_9&products_id=27&action=buy_now"
    And I visit "index.php?main_page=checkout_shipping"
    Then I select "item_item" from "shipping"
    Then I click on the element with xpath "//*[@id='checkoutShipping']/form/div[5]/input"
    Then I select "cod" from "payment"
    Then I fill in "dc_redeem_code" with "test10fixed"
    Then I click on the element with css "#paymentSubmit > input[type='submit']"
    Then I should see "534.99"
    Then I should see "-$10.65"
    Then I should see "34.35"
    Then I should see "526.84"
    Then I press button "btn_submit"


    Given I visit "index.php?main_page=shopping_cart&action=empty_cart"
    And I visit "index.php?main_page=product_info&cPath=1_9&products_id=3&action=buy_now"
    And I visit "index.php?main_page=product_info&cPath=1_9&products_id=3&action=buy_now"
    And I visit "index.php?main_page=product_info&cPath=1_9&products_id=27&action=buy_now"
    And I visit "index.php?main_page=checkout_shipping"
    Then I select "item_item" from "shipping"
    Then I click on the element with xpath "//*[@id='checkoutShipping']/form/div[5]/input"
    Then I select "cod" from "payment"
    Then I fill in "dc_redeem_code" with "test10percentrestricted"
    Then I click on the element with css "#paymentSubmit > input[type='submit']"
    Then I should see "620.57"
    Then I should see "-$8.56"
    Then I should see "40.04"
    Then I should see "619.51"
    Then I press button "btn_submit"

    Given I switch to tax "non-inclusive"


  @javascript
  Scenario: I Test tax non-inclusive including shipping tax
    Given I switch item shipping tax "on"

    Given I do a standard customer login with <param>"default_customer_email", <param>"default_customer_password"
    Then I visit "index.php?main_page=shopping_cart&action=empty_cart"
    And I visit "index.php?main_page=product_info&cPath=1_9&products_id=27&action=buy_now"
    And I visit "index.php?main_page=checkout_shipping"
    Then I select "item_item" from "shipping"
    Then I click on the element with xpath "//*[@id='checkoutShipping']/form/div[5]/input"
    Then I select "cod" from "payment"
    Then I fill in "dc_redeem_code" with "test10percent"
    Then I click on the element with css "#paymentSubmit > input[type='submit']"
    Then I should see "499.99"
    Then I should see "-$50.00"
    Then I should see "31.98"
    Then I should see "484.47"
    Then I press button "btn_submit"

    Then I visit "index.php?main_page=shopping_cart&action=empty_cart"
    And I visit "index.php?main_page=product_info&cPath=1_9&products_id=27&action=buy_now"
    And I visit "index.php?main_page=checkout_shipping"
    Then I select "item_item" from "shipping"
    Then I click on the element with xpath "//*[@id='checkoutShipping']/form/div[5]/input"
    Then I select "cod" from "payment"
    Then I fill in "dc_redeem_code" with "test100percent"
    Then I click on the element with css "#paymentSubmit > input[type='submit']"
    Then I should see "499.99"
    Then I should see "-$499.99"
    Then I should see "2.50"
    Then I should see "0.48"
    Then I should see "2.98"
    Then I press button "btn_submit"

    Then I visit "index.php?main_page=shopping_cart&action=empty_cart"
    And I visit "index.php?main_page=product_info&cPath=1_9&products_id=27&action=buy_now"
    And I visit "index.php?main_page=checkout_shipping"
    Then I select "item_item" from "shipping"
    Then I click on the element with xpath "//*[@id='checkoutShipping']/form/div[5]/input"
    Then I select "cod" from "payment"
    Then I fill in "dc_redeem_code" with "test10fixed"
    Then I click on the element with css "#paymentSubmit > input[type='submit']"
    Then I should see "499.99"
    Then I should see "-$10.00"
    Then I should see "34.78"
    Then I should see "527.27"
    Then I press button "btn_submit"
    Given I switch item shipping tax "off"


  @javascript
  Scenario: I Test tax inclusive including shipping tax
    Given I switch item shipping tax "on"
    Given I switch to tax "inclusive"

    Given I do a standard customer login with <param>"default_customer_email", <param>"default_customer_password"
    Then I visit "index.php?main_page=shopping_cart&action=empty_cart"
    And I visit "index.php?main_page=product_info&cPath=1_9&products_id=27&action=buy_now"
    And I visit "index.php?main_page=checkout_shipping"
    Then I select "item_item" from "shipping"
    Then I click on the element with xpath "//*[@id='checkoutShipping']/form/div[5]/input"
    Then I select "cod" from "payment"
    Then I fill in "dc_redeem_code" with "test10percent"
    Then I click on the element with css "#paymentSubmit > input[type='submit']"
    Then I should see "534.99"
    Then I should see "2.98"
    Then I should see "-$53.50"
    Then I should see "31.98"
    Then I should see "484.47"
    Then I press button "btn_submit"

    Then I visit "index.php?main_page=shopping_cart&action=empty_cart"
    And I visit "index.php?main_page=product_info&cPath=1_9&products_id=3&action=buy_now"
    And I visit "index.php?main_page=checkout_shipping"
    Then I select "item_item" from "shipping"
    Then I click on the element with xpath "//*[@id='checkoutShipping']/form/div[5]/input"
    Then I select "cod" from "payment"
    Then I fill in "dc_redeem_code" with "test100percent"
    Then I click on the element with css "#paymentSubmit > input[type='submit']"
    Then I should see "42.79"
    Then I should see "-$42.79"
    Then I should see "2.98"
    Then I should see "0.48"
    Then I press button "btn_submit"

    Then I visit "index.php?main_page=shopping_cart&action=empty_cart"
    And I visit "index.php?main_page=product_info&cPath=1_9&products_id=27&action=buy_now"
    And I visit "index.php?main_page=checkout_shipping"
    Then I select "item_item" from "shipping"
    Then I click on the element with xpath "//*[@id='checkoutShipping']/form/div[5]/input"
    Then I select "cod" from "payment"
    Then I fill in "dc_redeem_code" with "test10fixed"
    Then I click on the element with css "#paymentSubmit > input[type='submit']"
    Then I should see "534.99"
    Then I should see "-$10.65"
    Then I should see "34.83"
    Then I should see "527.32"
    Then I should see "2.98"
    Then I press button "btn_submit"


    Then I switch to tax "non-inclusive"
    Then I switch item shipping tax "off"


  @javascript
  Scenario: I Test free shipping coupon

    Given I do a standard customer login with <param>"default_customer_email", <param>"default_customer_password"
    Then I visit "index.php?main_page=shopping_cart&action=empty_cart"
    And I visit "index.php?main_page=product_info&cPath=1_9&products_id=27&action=buy_now"
    And I visit "index.php?main_page=checkout_shipping"
    Then I select "item_item" from "shipping"
    Then I click on the element with xpath "//*[@id='checkoutShipping']/form/div[5]/input"
    Then I select "cod" from "payment"
    Then I fill in "dc_redeem_code" with "testfreeshipping"
    Then I click on the element with css "#paymentSubmit > input[type='submit']"
    Then I should see "499.99"
    Then I should see "$2.50"
    Then I should see "-$2.50"
    Then I should see "35.00"
    Then I should see "534.99"
    Then I press button "btn_submit"

    Given I switch item shipping tax "on"
    Then I visit "index.php?main_page=shopping_cart&action=empty_cart"
    And I visit "index.php?main_page=product_info&cPath=1_9&products_id=27&action=buy_now"
    And I visit "index.php?main_page=checkout_shipping"
    Then I select "item_item" from "shipping"
    Then I click on the element with xpath "//*[@id='checkoutShipping']/form/div[5]/input"
    Then I select "cod" from "payment"
    Then I fill in "dc_redeem_code" with "testfreeshipping"
    Then I click on the element with css "#paymentSubmit > input[type='submit']"
    Then I should see "499.99"
    Then I should see "$2.50"
    Then I should see "-$2.50"
    Then I should see "35.00"
    Then I should see "534.99"
    Then I press button "btn_submit"

    Then I switch item shipping tax "off"