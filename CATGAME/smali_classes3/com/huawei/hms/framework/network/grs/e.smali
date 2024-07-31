.class public Lcom/huawei/hms/framework/network/grs/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/framework/network/restclient/hwhttp/plugin/PluginInterceptor;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/huawei/hms/framework/network/grs/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/framework/network/grs/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/huawei/hms/framework/network/restclient/hwhttp/Interceptor$Chain;)Lcom/huawei/hms/framework/network/restclient/hwhttp/Response;
    .locals 7

    check-cast p1, Lcom/huawei/hms/framework/network/restclient/hwhttp/RealInterceptorChain;

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/restclient/hwhttp/RealInterceptorChain;->request()Lcom/huawei/hms/framework/network/restclient/hwhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/framework/network/restclient/hwhttp/Request;->getUrl()Lcom/huawei/hms/framework/network/restclient/hwhttp/url/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hms/framework/network/restclient/hwhttp/url/HttpUrl;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/framework/network/grs/GrsManager;->isGRSSchema(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/huawei/hms/framework/network/grs/e;->a:Ljava/lang/String;

    const-string v3, "request url is grs schema."

    invoke-static {v2, v3}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/restclient/hwhttp/RealInterceptorChain;->getRCEventListener()Lcom/huawei/hms/framework/network/restclient/hianalytics/RCEventListener;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/huawei/hms/framework/network/restclient/hianalytics/RCEventListener;->convertGrsStart(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hms/framework/network/grs/GrsManager;->getInstance()Lcom/huawei/hms/framework/network/grs/GrsManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/huawei/hms/framework/network/grs/GrsManager;->parseGrs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/huawei/hms/framework/network/restclient/hwhttp/Request;->newBuilder()Lcom/huawei/hms/framework/network/restclient/hwhttp/Request$Builder;

    move-result-object v0

    new-instance v3, Lcom/huawei/hms/framework/network/restclient/hwhttp/url/HttpUrl;

    invoke-direct {v3, v1}, Lcom/huawei/hms/framework/network/restclient/hwhttp/url/HttpUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/huawei/hms/framework/network/restclient/hwhttp/Request$Builder;->url(Lcom/huawei/hms/framework/network/restclient/hwhttp/url/HttpUrl;)Lcom/huawei/hms/framework/network/restclient/hwhttp/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/framework/network/restclient/hwhttp/Request$Builder;->build()Lcom/huawei/hms/framework/network/restclient/hwhttp/Request;

    move-result-object v0

    sget-object v3, Lcom/huawei/hms/framework/network/grs/e;->a:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/huawei/hms/framework/network/restclient/hwhttp/Request;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "origin url is grs schema and by intercepted,and now request is:%s"

    invoke-static {v3, v5, v4}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcom/huawei/hms/framework/network/restclient/hianalytics/RCEventListener;->convertGrsEnd(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/huawei/hms/framework/network/restclient/hwhttp/RealInterceptorChain;->proceed(Lcom/huawei/hms/framework/network/restclient/hwhttp/Request;)Lcom/huawei/hms/framework/network/restclient/hwhttp/Response;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/huawei/hms/framework/network/restclient/hwhttp/RealInterceptorChain;->proceed(Lcom/huawei/hms/framework/network/restclient/hwhttp/Request;)Lcom/huawei/hms/framework/network/restclient/hwhttp/Response;

    move-result-object p1

    return-object p1
.end method

.method public pluginName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
