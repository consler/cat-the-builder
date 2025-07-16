.class public Lcom/koushikdutta/async/http/server/AsyncProxyServer;
.super Lcom/koushikdutta/async/http/server/AsyncHttpServer;
.source "AsyncProxyServer.java"


# instance fields
.field proxyClient:Lcom/koushikdutta/async/http/AsyncHttpClient;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;-><init>()V

    .line 19
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/AsyncHttpClient;-><init>(Lcom/koushikdutta/async/AsyncServer;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncProxyServer;->proxyClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    return-void
.end method


# virtual methods
.method protected onRequest(Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .locals 5

    const-string v0, "http://"

    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->onRequest(Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    if-eqz p1, :cond_0

    return-void

    .line 33
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v1, "no host or full uri provided"

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :catch_0
    :try_start_1
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object p1

    const-string v1, "Host"

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v1, ":"

    if-eqz p1, :cond_2

    const/4 v2, 0x2

    .line 41
    :try_start_2
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 42
    array-length v4, v3

    if-ne v4, v2, :cond_2

    const/4 p1, 0x0

    .line 43
    aget-object p1, v3, p1

    const/4 v2, 0x1

    .line 44
    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_2
    const/16 v2, 0x50

    .line 47
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 50
    :goto_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncProxyServer;->proxyClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    new-instance v1, Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object p2

    invoke-direct {v1, p1, v2, p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/Headers;)V

    new-instance p1, Lcom/koushikdutta/async/http/server/AsyncProxyServer$1;

    invoke-direct {p1, p0, p3}, Lcom/koushikdutta/async/http/server/AsyncProxyServer$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncProxyServer;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)Lcom/koushikdutta/async/future/Future;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    const/16 p2, 0x1f4

    .line 63
    invoke-interface {p3, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 64
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->send(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method protected onRequest(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
