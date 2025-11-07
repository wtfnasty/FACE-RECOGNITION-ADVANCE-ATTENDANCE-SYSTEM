@echo off
echo ==========================================
echo  FACE-API.JS MODEL DOWNLOADER
echo ==========================================
echo.

if not exist models (
    mkdir models
)

set BASE_URL=https://github.com/justadudewhohacks/face-api.js/raw/master/weights

echo Downloading tiny face detector model...
curl -L %BASE_URL%/tiny_face_detector_model-weights_manifest.json -o models\tiny_face_detector_model-weights_manifest.json
curl -L %BASE_URL%/tiny_face_detector_model-shard1 -o models\tiny_face_detector_model-shard1

echo Downloading face landmark model...
curl -L %BASE_URL%/face_landmark_68_model-weights_manifest.json -o models\face_landmark_68_model-weights_manifest.json
curl -L %BASE_URL%/face_landmark_68_model-shard1 -o models\face_landmark_68_model-shard1

echo Downloading face recognition model...
curl -L %BASE_URL%/face_recognition_model-weights_manifest.json -o models\face_recognition_model-weights_manifest.json
curl -L %BASE_URL%/face_recognition_model-shard1 -o models\face_recognition_model-shard1
curl -L %BASE_URL%/face_recognition_model-shard2 -o models\face_recognition_model-shard2

echo.
echo ✅ All model files downloaded successfully!
echo.
pause
