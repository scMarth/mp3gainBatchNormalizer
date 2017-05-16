### Want to normalize mp3 files in your Android device?

I was able to use this script to normalize mp3 files in my Android device, but I can't guarantee that it will work on every Android device. Regardless, I will detail the steps I took for my device running Android 7.0 Nougat to normalize mp3 files in an Android device and still leave *Most Played*, *Recently Played*, *Recently Added*, and playlists intact.

### Tests:

**Before you attempt to normalize your music files, I recommend you to do the following test:**

Step 1.) Go to your *Most Played* and find a song that you will use as a test (preferrably one you don't really care about if it gets messed up)

Step 2.) Put that song in a dummy/test playlist.

Step 3.) Copy that song from your Android device to your computer.

Step 4.) Normalize the song you just copied onto your computer with "**normalize_to_95db.bat**"

Step 5.) Copy the normalized song back to your Android device, overwriting on the un-normalized older copy.

Step 6.) If the song is still your dummy/test playlist, *Most Played*, etc., it's probably safe to continue to "**Normalizing**"


### Normalizing:

Step 1.) Copy your `./Music/` folder from your Android device to your computer.

Step 2.) Normalize the folder on your computer with "**normalize_DIR_to_95db.bat**"

Step 3.) Copy the normalized .mp3 files from the `/Music/` folder from your computer into the `./Music/` folder in your Android device, overwriting on the old songs. That's it.
