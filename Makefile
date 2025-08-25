deploy-android:
	# @echo "╠ Sending Android Build to Closed Testing..."
	# cd android && bundle install
	# @echo "╠ bundle installed"
	# cd android/fastlane && bundle exec fastlane deploy
	# @echo "╠ FINISHED ╠"
	@echo "╠ Building AAB with Flutter..."
	flutter build appbundle --release
	@echo "╠ Sending Android Build to Closed Testing..."
	cd android && bundle install
	@echo "╠ bundle installed"
	cd android/fastlane && bundle exec fastlane deploy
	@echo "╠ FINISHED ╠"

deploy-ios:
	@echo "╠ Starting iOS Deployment Process..."
	@echo "╠ Step 1: Updating CocoaPods..."
	cd ios/fastlane && bundle update cocoapods
	@echo "╠ ✅ CocoaPods updated"
	
	@echo "╠ Step 2: Installing Fastlane dependencies..."
	cd ios/fastlane && bundle install
	@echo "╠ ✅ Bundle installed"
	
	@echo "╠ Step 3: Running Fastlane deployment..."
	cd ios/fastlane && bundle exec fastlane deploy
	@echo "╠ ✅ Fastlane deployment completed"
	
	@echo "╠ iOS Deployment FINISHED ╠"

deploy: deploy-android deploy-ios