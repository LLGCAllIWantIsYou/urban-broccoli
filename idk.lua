while wait(100) do
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "You cannot escape.",
		Text = "Give up struggling.",
		Duration = 3
	})
end
