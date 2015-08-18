# seunjeon
세종말뭉치 학습 기반의 한국어 형태소분석기입니다.


## Maven
### 배포버전
```xml
    <dependencies>
        <dependency>
            <groupId>org.bitbucket.eunjeon</groupId>
            <artifactId>seunjeon_2.11</artifactId>
            <version>0.1.0</version>
        </dependency>
    </dependencies>
```

### 개발버전
```xml
    <dependencies>
        <dependency>
            <groupId>org.bitbucket.eunjeon</groupId>
            <artifactId>seunjeon_2.11</artifactId>
            <version>0.1.0-SNAPSHOT</version>
        </dependency>
    </dependencies>

    <repositories>
        <repository>
            <id>oss-sonatype</id>
            <name>oss-sonatype</name>
            <url>https://oss.sonatype.org/content/repositories/snapshots/</url>
            <snapshots>
                <enabled>true</enabled>
            </snapshots>
        </repository>
    </repositories>
```

## Usage
### java
```java
List<Term> result = Analyzer.parseJava("형태소분석기입니다. 사랑합니다.");
for (Term term: result) {
    System.out.println(term);

}
```
### scala
```scala
Analyzer.parse("형태소분석기입니다. 사랑합니다.").foreach { term: Term =>
  println(term)
}
```
### 결과
```
Term(BOS,0,0,0,BOS)
Term(형태소,1784,3536,2574,NNG,*,F,형태소,Compound,*,*,형태/NNG/*+소/NNG/*)
Term(분석기,1784,3536,2897,NNG,*,F,분석기,Compound,*,*,분석/NNG/*+기/NNG/*)
Term(입니다,2370,6,-288,VCP+EF,*,F,입니다,Inflect,VCP,EF,이/VCP/*+ᄇ니다/EF/*)
Term(.,1794,3555,3597,SF,*,*,*,*,*,*,*)
Term(사랑,1784,3537,1089,NNG,*,T,사랑,*,*,*,*)
Term(합니다,2693,6,805,XSV+EF,*,F,합니다,Inflect,XSV,EF,하/XSV/*+ᄇ니다/EF/*)
Term(.,1794,3555,3597,SF,*,*,*,*,*,*,*)
Term(EOS,0,0,0,EOS)
```

## Group
https://groups.google.com/forum/#!forum/eunjeon
질문과 공동 환영합니다.

## 개발
BuildDic
sbt package

## License
Copyright 2015 유영호, 이용운. 아파치 라이센스 2.0에 따라 소프트웨어를 사용, 재배포 할 수 있습니다. 더 자세한 사항은 http://www.apache.org/licenses/LICENSE-2.0 을 참조하시기 바랍니다.