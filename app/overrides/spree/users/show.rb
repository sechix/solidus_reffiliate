Deface::Override.new(
  :virtual_path => "spree/users/show",
  :name => "user_info",
  :insert_after => "[data-hook='account_summary'] #user-info dd:first"
) do
<<-CODE.chomp
<dt>Referral URL</dt>
<dd><input type='text' value='<%= referral_url(@user.referral.code) %>' onClick='this.select();' id='copy_text_url' /><br>
<!-- Trigger -->
<button class="clipboard-btn" data-clipboard-action="copy" data-clipboard-target="#copy_text_url">
    Copy to clipboard
</button>
</dd>
<dt>Referred Users</dt>
<dd><%= @user.referred_count%></dd>
CODE
end
