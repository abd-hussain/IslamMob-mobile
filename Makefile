deploy-android:
	@echo "╠ Sending Android Build to Closed Testing..."
	cd android && bundle install
	@echo "╠ bundle installed"
	cd android/fastlane && bundle exec fastlane deploy
	@echo "╠ FINISHED ╠"

deploy-ios:
	@echo "╠ Sending iOS Build to TestFlight..."
	cd ios/fastlane && bundle update cocoapods
	@echo "╠ cocoapods updated"
	cd ios/fastlane && bundle install
	@echo "╠ bundle installed"
	cd ios/fastlane && bundle exec fastlane deploy
	@echo "╠ FINISHED ╠"

deploy: deploy-android deploy-ios