# TMDB API CURL 명령어

유저가 제공한 API 문서를 바탕으로 작성된 CURL 명령어 모음입니다.
모든 요청에는 제공된 `Authorization` 헤더가 포함되어 있습니다.
결과 확인을 위해 `language=ko-KR` 파라미터를 기본적으로 추가했습니다.

---

## 1. 현재 상영중인 영화 (Now Playing)
**문서:** [https://developer.themoviedb.org/reference/movie-now-playing-list](https://developer.themoviedb.org/reference/movie-now-playing-list)

```bash
curl --request GET \
     --url 'https://api.themoviedb.org/3/movie/now_playing?language=ko-KR&page=1' \
     --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwYmNiNzJjNzQ4N2U1N2QxNDdiNDk3Mjg3MTlmZDE5ZiIsIm5iZiI6MTczMzM5MTMxNy45NzUwMDAxLCJzdWIiOiI2NzUxNzNkNThhZjZkM2ZlYjNhZmU0NDUiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.xwBAH8_W-yBA3RoH9JscnBQe_1McKgodxi1JO-kcJn8' \
     --header 'accept: application/json'
```

## 2. 인기있는 영화 (Popular)
**문서:** [https://developer.themoviedb.org/reference/movie-popular-list](https://developer.themoviedb.org/reference/movie-popular-list)

```bash
curl --request GET \
     --url 'https://api.themoviedb.org/3/movie/popular?language=ko-KR&page=1' \
     --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwYmNiNzJjNzQ4N2U1N2QxNDdiNDk3Mjg3MTlmZDE5ZiIsIm5iZiI6MTczMzM5MTMxNy45NzUwMDAxLCJzdWIiOiI2NzUxNzNkNThhZjZkM2ZlYjNhZmU0NDUiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.xwBAH8_W-yBA3RoH9JscnBQe_1McKgodxi1JO-kcJn8' \
     --header 'accept: application/json'
```

## 3. 평점 높은 영화 (Top Rated)
**문서:** [https://developer.themoviedb.org/reference/movie-top-rated-list](https://developer.themoviedb.org/reference/movie-top-rated-list)

```bash
curl --request GET \
     --url 'https://api.themoviedb.org/3/movie/top_rated?language=ko-KR&page=1' \
     --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwYmNiNzJjNzQ4N2U1N2QxNDdiNDk3Mjg3MTlmZDE5ZiIsIm5iZiI6MTczMzM5MTMxNy45NzUwMDAxLCJzdWIiOiI2NzUxNzNkNThhZjZkM2ZlYjNhZmU0NDUiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.xwBAH8_W-yBA3RoH9JscnBQe_1McKgodxi1JO-kcJn8' \
     --header 'accept: application/json'
```

## 4. 개봉 예정 영화 (Upcoming)
**문서:** [https://developer.themoviedb.org/reference/movie-upcoming-list](https://developer.themoviedb.org/reference/movie-upcoming-list)

```bash
curl --request GET \
     --url 'https://api.themoviedb.org/3/movie/upcoming?language=ko-KR&page=1' \
     --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwYmNiNzJjNzQ4N2U1N2QxNDdiNDk3Mjg3MTlmZDE5ZiIsIm5iZiI6MTczMzM5MTMxNy45NzUwMDAxLCJzdWIiOiI2NzUxNzNkNThhZjZkM2ZlYjNhZmU0NDUiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.xwBAH8_W-yBA3RoH9JscnBQe_1McKgodxi1JO-kcJn8' \
     --header 'accept: application/json'
```

## 5. 영화 상세 정보 (Movie Details)
**문서:** [https://developer.themoviedb.org/reference/movie-details](https://developer.themoviedb.org/reference/movie-details)
*`{movie_id}` 부분에 실제 영화 ID를 입력해서 사용하세요 (예: 550)*

```bash
curl --request GET \
     --url 'https://api.themoviedb.org/3/movie/{movie_id}?language=ko-KR' \
     --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwYmNiNzJjNzQ4N2U1N2QxNDdiNDk3Mjg3MTlmZDE5ZiIsIm5iZiI6MTczMzM5MTMxNy45NzUwMDAxLCJzdWIiOiI2NzUxNzNkNThhZjZkM2ZlYjNhZmU0NDUiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.xwBAH8_W-yBA3RoH9JscnBQe_1McKgodxi1JO-kcJn8' \
     --header 'accept: application/json'
```
