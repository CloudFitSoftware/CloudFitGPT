cask "cloudfitgpt" do
   version "0.6.10"
   sha256 "e85062565f826d32219c53b184d6df9c89441d4231cdfff775c2de8c50ac9906"

  url "https://github.com/lencx/ChatGPT/releases/download/v#{version}/ChatGPT_#{version}_x64.dmg"
  name "CloudFitGPT"
  desc "CloudFit Desktop wrapper for OpenAI ChatGPT"
  homepage "https://github.com/lencx/ChatGPT#readme"

  app "CloudFitGPT.app"

  uninstall quit: "com.lencx.cloudfitgpt"

  zap trash: [
    "~/.cloudfitgpt",
    "~/Library/Caches/com.lencx.cloudfitgpt",
    "~/Library/HTTPStorages/com.lencx.cloudfitgpt.binarycookies",
    "~/Library/Preferences/com.lencx.cloudfitgpt.plist",
    "~/Library/Saved Application State/com.lencx.cloudfitgpt.savedState",
    "~/Library/WebKit/com.lencx.cloudfitgpt",
  ]
end
