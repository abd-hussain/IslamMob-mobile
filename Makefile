deploy-android:
	# @echo "╠ Sending Android Build to Closed Testing..."
	# cd android && bundle install
	# @echo "╠ bundle installed"
	# cd android/fastlane && bundle exec fastlane deploy
	# @echo "╠ FINISHED ╠"
	@echo "╠ Updating build number with current date..."
	./scripts/update_build_date_seconds.sh
	@echo "╠ Building AAB with Flutter..."
	flutter build appbundle --release
	@echo "╠ Sending Android Build to Closed Testing..."
	cd android && bundle install
	@echo "╠ bundle installed"
	cd android/fastlane && bundle exec fastlane deploy
	@echo "╠ FINISHED ╠"

deploy-ios:
	@echo "╠ Updating build number with current date..."
	./scripts/update_build_date_seconds.sh
	@echo "╠ Sending iOS Build to TestFlight..."
	cd ios/fastlane && bundle update cocoapods
	@echo "╠ cocoapods updated"
	cd ios/fastlane && bundle install
	@echo "╠ bundle installed"
	cd ios/fastlane && bundle exec fastlane deploy
	@echo "╠ FINISHED ╠"

update-build-date:
	@echo "╠ Updating build number with current date..."
	./scripts/update_build_date_seconds.sh
	@echo "╠ Build number updated ╠"

deploy: deploy-android deploy-ios