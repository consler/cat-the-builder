.class Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;
.super Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;
.source "AsyncHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->onAccepted(Lcom/koushikdutta/async/AsyncSocket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field fullPath:Ljava/lang/String;

.field hasContinued:Z

.field match:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

.field path:Ljava/lang/String;

.field requestComplete:Z

.field res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

.field responseComplete:Z

.field final synthetic this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

.field final synthetic val$socket:Lcom/koushikdutta/async/AsyncSocket;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iput-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;Ljava/lang/Exception;)V
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->report(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$100(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->handleOnCompleted()V

    return-void
.end method

.method private handleOnCompleted()V
    .locals 2

    .line 190
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->requestComplete:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->responseComplete:Z

    if-eqz v0, :cond_1

    .line 191
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/HttpUtil;->isKeepAlive(Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/Headers;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->onAccepted(Lcom/koushikdutta/async/AsyncSocket;)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Lcom/koushikdutta/async/http/Multimap;
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->fullPath:Ljava/lang/String;

    const-string v1, "\\?"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 208
    array-length v1, v0

    if-ge v1, v2, :cond_0

    .line 209
    new-instance v0, Lcom/koushikdutta/async/http/Multimap;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Multimap;-><init>()V

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 210
    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/koushikdutta/async/http/Multimap;->parseQuery(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public onCompleted(Ljava/lang/Exception;)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->code()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->requestComplete:Z

    .line 172
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->onCompleted(Ljava/lang/Exception;)V

    .line 175
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$3;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$3;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 182
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->handleOnCompleted()V

    .line 184
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->getBody()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object p1

    invoke-interface {p1}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->readFullyOnRequest()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 185
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->match:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {p1, v0, p0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->onRequest(Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    :cond_1
    return-void
.end method

.method protected onHeadersReceived()V
    .locals 5

    .line 88
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    .line 92
    iget-boolean v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->hasContinued:Z

    if-nez v1, :cond_0

    const-string v1, "100-continue"

    const-string v2, "Expect"

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->pause()V

    .line 95
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    const-string v1, "HTTP/1.1 100 Continue\r\n\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V

    invoke-static {v0, v1, v2}, Lcom/koushikdutta/async/Util;->writeAll(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->getStatusLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 113
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->fullPath:Ljava/lang/String;

    const-string v2, "\\?"

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->path:Ljava/lang/String;

    .line 115
    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->method:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mActions:Ljava/util/Hashtable;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v1, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v1, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mActions:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 119
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;

    .line 120
    iget-object v3, v2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;->regex:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 121
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    iput-object v3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->mMatcher:Ljava/util/regex/Matcher;

    .line 123
    iget-object v1, v2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;->callback:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    iput-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->match:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    .line 128
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {v0, p0, v1, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    .line 150
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0, p0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->onRequest(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)Z

    move-result v0

    .line 152
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->match:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    const/16 v1, 0x194

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 154
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->end()V

    return-void

    .line 158
    :cond_3
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->getBody()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v0

    invoke-interface {v0}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->readFullyOnRequest()Z

    move-result v0

    if-nez v0, :cond_4

    .line 159
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->match:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0, v1, p0, v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->onRequest(Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    goto :goto_0

    .line 161
    :cond_4
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->requestComplete:Z

    if-eqz v0, :cond_5

    .line 162
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->match:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0, v1, p0, v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->onRequest(Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    :cond_5
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 128
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onUnknownBody(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->onUnknownBody(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object p1

    return-object p1
.end method
