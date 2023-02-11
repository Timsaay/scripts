while true do
wait()
if game:GetService("CoreGui").Rayfield:WaitForChild("Main").Visible then
    game:GetService("CoreGui").Rayfield.Main.Topbar.Title.Text = 'PapaHub'
    print("Main UI has loaded and been changed to PapaHub")
end

if game:GetService("CoreGui").Rayfield.Main.Topbar.Title.Text == 'PapaHub' then 
break
print("breaking while true")
end

end 
