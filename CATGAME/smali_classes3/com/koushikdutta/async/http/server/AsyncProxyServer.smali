.class public Lcom/koushikdutta/async/http/server/AsyncProxyServer;
.super Lcom/koushikdutta/async/http/server/AsyncHttpServer;
.source "AsyncProxyServer.java"


# instance fields
.field proxyClient:Lcom/koushikdutta/async/http/AsyncHttpClient;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;)V
    .locals 1
    .param p1, "server"    # Lcom/koushikdutta/async/AsyncServer;

    .line 18
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;-><init>()V

    .line 19
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/AsyncHttpClient;-><init>(Lcom/koushikdutta/async/AsyncServer;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncProxyServer;->proxyClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    .line 20
    return-void
.end method


# virtual methods
.method protected onRequest(Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .locals 7
    .param p1, "callback"    # Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;
    .param p2, "request"    # Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;
    .param p3, "response"    # Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->onRequest(Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    .line 26
    if-eqz p1, :cond_0

    .line 27
    return-void

    .line 33
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 34
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 48
    goto :goto_0

    .line 35
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "no host or full uri provided"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "callback":Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;
    .end local p2    # "request":Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;
    .end local p3    # "response":Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v0    # "uri":Landroid/net/Uri;
    .restart local p1    # "callback":Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;
    .restart local p2    # "request":Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;
    .restart local p3    # "response":Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 39
    .local v1, "host":Ljava/lang/String;
    const/16 v2, 0x50

    .line 40
    .local v2, "port":I
    const-string v3, ":"

    if-eqz v1, :cond_2

    .line 41
    const/4 v4, 0x2

    :try_start_2
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, "splits":[Ljava/lang/String;
    array-length v6, v5

    if-ne v6, v4, :cond_2

    .line 43
    const/4 v4, 0x0

    aget-object v4, v5, v4

    move-object v1, v4

    .line 44
    const/4 v4, 0x1

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 47
    .end local v5    # "splits":[Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v0, v3

    .line 50
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "port":I
    .local v0, "uri":Landroid/net/Uri;
    :goto_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncProxyServer;->proxyClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    new-instance v2, Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/koushikdutta/async/http/AsyncHttpRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/Headers;)V

    new-instance v3, Lcom/koushikdutta/async/http/server/AsyncProxyServer$1;

    invoke-direct {v3, p0, p3}, Lcom/koushikdutta/async/http/server/AsyncProxyServer$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncProxyServer;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    invoke-virtual {v1, v2, v3}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)Lcom/koushikdutta/async/future/Future;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 65
    nop

    .end local v0    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 62
    :catch_1
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    const/16 v1, 0x1f4

    invoke-interface {p3, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->send(Ljava/lang/String;)V

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method protected onRequest(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)Z
    .locals 1
    .param p1, "request"    # Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;
    .param p2, "response"    # Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 70
    const/4 v0, 0x1

    return v0
.end method
