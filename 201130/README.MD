
# jQuery

1. html + CSS + javascript를 통합한 하나의 라이브러리
2. 굉장히 쉬운 접근 방법을 제공한다. -> 전체 처리 속도 감소
3. 모든 javascript 문법은 그대로 사용 가능.
4. 대소문자 구별.
5. '' / " "는 구별하지 않음.
6. 라이브러리를 사용하는 방법
   1. CDN
   2. 라이브러리를 해당 프로젝트 내에 복사해서 사용함.
7. jQuery는 모든 것이 함수화되어 있기 때문에 함수에 대한 이해가 좋을수록 jQuery의 이해도가 높아질 수 있음.
```javascript
id='abc'인 요소를 선택

javascript : var id = document.getElemnetById('abc');
javascript fuction:
    var getID = function(id) {
        return document.getElementById(id);
    }
```


# jQuery

## 1. 문법
```javascript
$(제어대상).method1().method2();
   주어        서술어
```

## 2. jQuery란?
- 엘리먼트를 선택하는 방법과
- 선택된 엘리먼트들을 효율적으로 제어할 수 있는 다양한 수단을 제공하는
- 자바스크립트 라이브러리

## 3. 사용방법
1. 직접 서비스 하는 경우
   1. code.jquery.com/jquery-3.4.1.min.js 에서 jquery 소스코드를 다운로드.
   2. 위의 파일을 서버에 업로드 한 후 웹페이지 안에서 자바스크립트를 선언한다.

2. 구글의 자바스크립트 라이브러리를 사용하는 경우
   1. developers.google.com/libraries