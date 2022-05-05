MASTER_PATH = $(shell pwd)

goto_master_path:
	cd $(MASTER_PATH)

dev: goto_master_path
	flutter run -d chrome

clean: goto_master_path
	flutter clean && flutter pub get

code_generate: goto_master_path
	flutter packages pub run build_runner build --delete-conflicting-outputs &&\
	flutter packages pub run build_runner watch

create_avatar:
	flutter pub run flutter_launcher_icons:main -f pubspec.yaml && flutter pub run flutter_launcher_icons:main
