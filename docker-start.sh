docker stop point_track
docker rm point_track
docker run \
--restart=unless-stopped \
--gpus all \
--shm-size 8G \
-v /media/zheshi/新加卷/Data:/workspace/Data \
-v /home/zheshi/WorkingSpace/PointTrack:/workspace/PointTrack \
-e TZ="Asia/Shanghai" \
--name point_track \
-dt point_track
