import { webview } from '@kit.ArkWeb';
import { BusinessError } from '@kit.BasicServicesKit';
import { promptAction } from '@kit.ArkUI';

@Entry
@Component
struct Index {
  controller: webview.WebviewController = new webview.WebviewController();
  responseWeb: WebResourceResponse = new WebResourceResponse();
  heads: Header[] = new Array();
  // @State webData: string = "<!DOCTYPE html>\n" +
  //   "<html>\n" +
  //   "<head>\n" +
  //   "<title>拦截测试</title>\n" +
  //   "</head>\n" +
  //   "<body>\n" +
  //   "<h1>拦截测试</h1>\n" +
  //   "</body>\n" +
  //   "</html>";

  aboutToAppear(): void {
    try {
      // 开发调试开启
      webview.WebviewController.setWebDebuggingAccess(true);
    } catch (error) {
      console.error(`ErrorCode: ${(error as BusinessError).code},  Message: ${(error as BusinessError).message}`);
    }
  }

  build() {
    Column() {
      Web({
        // src: $rawfile('index.html'),
        src: 'https://www.baidu.com',
        controller: this.controller,
        renderMode: RenderMode.ASYNC_RENDER // 设置渲染模式
      })

    //   Web({ src: $rawfile('index.html'), controller: this.controller })
    //     .onControllerAttached(() => {
    //       //
    //       // 推荐在此loadUrl、设置自定义用户代理、注入JS对象等
    //       console.log('onControllerAttached execute')
    //     })
    //     .onLoadIntercept((event) => {
    //       // 当Web组件加载url之前触发该回调，用于判断是否阻止此次访问。默认允许加载。
    //       if (event) {
    //         console.log('onLoadIntercept url:' + event.data.getRequestUrl())
    //         console.log('url:' + event.data.getRequestUrl())
    //         console.log('isMainFrame:' + event.data.isMainFrame())
    //         console.log('isRedirect:' + event.data.isRedirect())
    //         console.log('isRequestGesture:' + event.data.isRequestGesture())
    //       }
    //       // 返回true表示阻止此次加载，否则允许此次加载
    //       return false;
    //     })
    //     .onOverrideUrlLoading((webResourceRequest: WebResourceRequest) => {
    //       if (webResourceRequest && webResourceRequest.getRequestUrl() == "about:blank") {
    //         return true;
    //       }
    //       return false;
    //     })
    //     .onInterceptRequest((event) => {
    //       // 当Web组件加载url之前触发该回调，用于拦截url并返回响应数据。
    //       if (event) {
    //         console.log('url:' + event.request.getRequestUrl());
    //       }
    //       let head1: Header = {
    //         headerKey: "Connection",
    //         headerValue: "keep-alive"
    //       }
    //       let head2: Header = {
    //         headerKey: "Cache-Control",
    //         headerValue: "no-cache"
    //       }
    //       let length = this.heads.push(head1);
    //       length = this.heads.push(head2);
    //       this.responseWeb.setResponseHeader(this.heads);
    //       // this.responseWeb.setResponseData(this.webData);
    //       this.responseWeb.setResponseEncoding('utf-8');
    //       this.responseWeb.setResponseMimeType('text/html');
    //       this.responseWeb.setResponseCode(200);
    //       this.responseWeb.setReasonMessage('OK');
    //       // 返回响应数据则按照响应数据加载，无响应数据则返回null表示按照原来的方式加载
    //       return this.responseWeb;
    //     })
    //     .onPageBegin((event) => {
    //       // 网页开始加载时触发该回调，且只在主frame（表示一个HTML元素，用于展示HTML页面的HTML元素）触发。
    //       if (event) {
    //         console.log('onPageBegin url:' + event.url);
    //       }
    //     })
    //     .onFirstContentfulPaint(event => {
    //       if (event) {
    //         console.log("onFirstContentfulPaint:" + "[navigationStartTick]:" +
    //         event.navigationStartTick + ", [firstContentfulPaintMs]:" +
    //         event.firstContentfulPaintMs);
    //       }
    //     })
    //     .onProgressChange((event) => {
    //       // 告知开发者当前页面加载的进度
    //       if (event) {
    //         console.log('newProgress:' + event.newProgress);
    //       }
    //     })
    //     .onPageEnd((event) => {
    //       // 推荐在此事件中执行JavaScript脚本
    //       if (event) {
    //         console.log('onPageEnd url:' + event.url);
    //       }
    //     })
    //     .onPageVisible((event) => {
    //       console.log('onPageVisible url:' + event.url);
    //     })
    //     .onRenderExited((event) => {
    //       if (event) {
    //         console.log('onRenderExited reason:' + event.renderExitReason);
    //       }
    //     })
    //     .onDisAppear(() => {
    //       promptAction.showToast({
    //         message: 'The web is hidden',
    //         duration: 2000
    //       })
    //     })
    }
  }
}