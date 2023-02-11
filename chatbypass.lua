local Main = game:GetService("CoreGui").Rayfield:WaitForChild("Main") 
while Main.visible == true and Main.Topbar.Title.Text ~= 'PapaHub' do
    
wait()
game:GetService("CoreGui").Rayfield.Main.Topbar.Title.Text = 'PapaHub'
print('Loop')
end 
