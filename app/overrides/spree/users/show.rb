Deface::Override.new(
  :virtual_path => "spree/users/show",
  :name => "user_info",
  :insert_after => "[data-hook='account_summary'] #user-info dd:first"
) do
<<-CODE.chomp
<dt><%= I18n.t('spree.referal_url') %></dt>
<dd><input type='text' value='<%= referral_url(@user.referral.code) %>' onClick='this.select();' id='copy_text_url' /><br>
<!-- Trigger -->
<button class="clipboard-btn" data-clipboard-action="copy" data-clipboard-target="#copy_text_url">
    <i class='fa fa-clipboard'></i><%= I18n.t('spree.copy') %>
</button>
</dd>
<dt><%= I18n.t('spree.referred_users') %></dt>
<dd><%= @user.referred_count%></dd>
CODE
end
