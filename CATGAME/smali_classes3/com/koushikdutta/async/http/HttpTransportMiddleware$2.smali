.class Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;
.super Ljava/lang/Object;
.source "HttpTransportMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/LineEmitter$StringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/HttpTransportMiddleware;->exchangeHeaders(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mRawHeaders:Lcom/koushikdutta/async/http/Headers;

.field statusLine:Ljava/lang/String;

.field final synthetic this$0:Lcom/koushikdutta/async/http/HttpTransportMiddleware;

.field final synthetic val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/HttpTransportMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/HttpTransportMiddleware;

    .line 81
    iput-object p1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->this$0:Lcom/koushikdutta/async/http/HttpTransportMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance p2, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {p2}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object p2, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    return-void
.end method


# virtual methods
.method public onStringAvailable(Ljava/lang/String;)V
    .locals 7
    .param p1, "s"    # Ljava/lang/String;

    .line 88
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 89
    iget-object v0, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->statusLine:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 90
    iput-object p1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->statusLine:Ljava/lang/String;

    goto/16 :goto_2

    .line 92
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/Headers;->addLine(Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    goto/16 :goto_2

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->statusLine:Ljava/lang/String;

    const-string v1, " "

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_5

    .line 100
    iget-object v1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    iget-object v4, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-interface {v1, v4}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->headers(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 101
    const/4 v1, 0x0

    aget-object v4, v0, v1

    .line 102
    .local v4, "protocol":Ljava/lang/String;
    iget-object v5, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v5, v5, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v5, v4}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->protocol(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 103
    iget-object v5, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v5, v5, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->code(I)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 104
    iget-object v5, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v5, v5, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    array-length v6, v0

    if-ne v6, v2, :cond_2

    aget-object v2, v0, v3

    goto :goto_0

    :cond_2
    const-string v2, ""

    :goto_0
    invoke-interface {v5, v2}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->message(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 105
    iget-object v2, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->receiveHeadersCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 108
    iget-object v2, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v2}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->socket()Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v2

    .line 109
    .local v2, "socket":Lcom/koushikdutta/async/AsyncSocket;
    if-nez v2, :cond_3

    .line 110
    return-void

    .line 114
    :cond_3
    const-string v5, "HEAD"

    iget-object v6, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v6, v6, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v6}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 115
    invoke-interface {v2}, Lcom/koushikdutta/async/AsyncSocket;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->create(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    move-result-object v1

    .local v1, "emitter":Lcom/koushikdutta/async/DataEmitter;
    goto :goto_1

    .line 118
    .end local v1    # "emitter":Lcom/koushikdutta/async/DataEmitter;
    :cond_4
    invoke-static {v4}, Lcom/koushikdutta/async/http/Protocol;->get(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;

    move-result-object v3

    iget-object v5, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-static {v2, v3, v5, v1}, Lcom/koushikdutta/async/http/HttpUtil;->getBodyDecoder(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/Headers;Z)Lcom/koushikdutta/async/DataEmitter;

    move-result-object v1

    .line 120
    .restart local v1    # "emitter":Lcom/koushikdutta/async/DataEmitter;
    :goto_1
    iget-object v3, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v3, v3, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v3, v1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->emitter(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 125
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v1    # "emitter":Lcom/koushikdutta/async/DataEmitter;
    .end local v2    # "socket":Lcom/koushikdutta/async/AsyncSocket;
    .end local v4    # "protocol":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 98
    .restart local v0    # "parts":[Ljava/lang/String;
    :cond_5
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Not HTTP"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .end local p1    # "s":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0    # "parts":[Ljava/lang/String;
    .restart local p1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->receiveHeadersCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 126
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3
    return-void
.end method
