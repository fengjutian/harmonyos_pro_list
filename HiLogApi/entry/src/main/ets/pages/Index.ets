import { hilog } from '@kit.PerformanceAnalysisKit';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  // @State info: string = '11'

  build() {
    Column() {
      // Text(this.info).margin({bottom: 20})

      Button('查看 Info 信息').onClick(() => {
        console.log('日志信息', hilog.LogLevel.INFO)
        // hilog.isLoggable(0x0001, "日志信息：", hilog.LogLevel.INFO);
        // hilog.info(0x0001, '查看 Info 信息123', hilog.LogLevel.INFO)
      })
    }
    .justifyContent(FlexAlign.Center)
    .height('100%')
    .width('100%')
  }
}