# 1. 공식 Python 이미지를 기반으로 사용
FROM python:3.13

# 2. 작업 디렉토리 생성 및 설정
RUN mkdir /app
WORKDIR /app

# 3. 환경 변수 설정
ENV PYTHONDONTWRITEBYTECODE=1 
ENV PYTHONUNBUFFERED=1         

# 4. 의존성 파일 복사 및 패키지 설치
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# 5. 전체 프로젝트 파일 복사
COPY . /app/

# 6. Entrypoint 스크립트 복사 및 실행 권한 추가
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# 7. 컨테이너 실행 시 entrypoint.sh 실행
CMD ["/entrypoint.sh"]
