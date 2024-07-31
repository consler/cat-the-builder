.class public Lcom/koushikdutta/async/http/AsyncHttpRequest;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT_TIMEOUT:I = 0x7530


# instance fields
.field LOGTAG:Ljava/lang/String;

.field executionTime:J

.field logLevel:I

.field private mBody:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

.field private mFollowRedirect:Z

.field private mMethod:Ljava/lang/String;

.field private mRawHeaders:Lcom/koushikdutta/async/http/Headers;

.field mTimeout:I

.field proxyHost:Ljava/lang/String;

.field proxyPort:I

.field uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "method"    # Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/Headers;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/Headers;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "headers"    # Lcom/koushikdutta/async/http/Headers;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mFollowRedirect:Z

    .line 125
    const/16 v0, 0x7530

    iput v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mTimeout:I

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyPort:I

    .line 81
    nop

    .line 82
    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mMethod:Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->uri:Landroid/net/Uri;

    .line 84
    if-nez p3, :cond_0

    .line 85
    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    goto :goto_0

    .line 87
    :cond_0
    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    .line 88
    :goto_0
    if-nez p3, :cond_1

    .line 89
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-static {v0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->setDefaultHeaders(Lcom/koushikdutta/async/http/Headers;Landroid/net/Uri;)V

    .line 90
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 11
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method protected static getDefaultUserAgent()Ljava/lang/String;
    .locals 3

    .line 46
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "agent":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Java"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "java.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private getLogMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .line 188
    iget-wide v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->executionTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->executionTime:J

    sub-long/2addr v0, v2

    .local v0, "elapsed":J
    goto :goto_0

    .line 191
    .end local v0    # "elapsed":J
    :cond_0
    const-wide/16 v0, 0x0

    .line 192
    .restart local v0    # "elapsed":J
    :goto_0
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const-string v4, "(%d ms) %s: %s"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static setDefaultHeaders(Lcom/koushikdutta/async/http/Headers;Landroid/net/Uri;)V
    .locals 3
    .param p0, "ret"    # Lcom/koushikdutta/async/http/Headers;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 67
    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_0
    if-eqz v0, :cond_1

    .line 72
    const-string v1, "Host"

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 74
    .end local v0    # "host":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 75
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip, deflate"

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 76
    const-string v0, "Connection"

    const-string v1, "keep-alive"

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 77
    const-string v0, "Accept"

    const-string v1, "*/*"

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 78
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 141
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/Headers;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 142
    return-object p0
.end method

.method public disableProxy()V
    .locals 1

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyHost:Ljava/lang/String;

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyPort:I

    .line 155
    return-void
.end method

.method public enableProxy(Ljava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 148
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyHost:Ljava/lang/String;

    .line 149
    iput p2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyPort:I

    .line 150
    return-void
.end method

.method public getBody()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mBody:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    return-object v0
.end method

.method public getFollowRedirect()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mFollowRedirect:Z

    return v0
.end method

.method public getHeaders()Lcom/koushikdutta/async/http/Headers;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    return-object v0
.end method

.method public getLogLevel()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    return v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyPort:I

    return v0
.end method

.method public getRequestLine()Lcom/koushikdutta/async/http/RequestLine;
    .locals 1

    .line 13
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;-><init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mTimeout:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 217
    return-void

    .line 218
    :cond_0
    iget v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 219
    return-void

    .line 220
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void
.end method

.method public logd(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 223
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 224
    return-void

    .line 225
    :cond_0
    iget v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 226
    return-void

    .line 227
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    return-void
.end method

.method public loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 232
    return-void

    .line 233
    :cond_0
    iget v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    const/4 v2, 0x6

    if-le v1, v2, :cond_1

    .line 234
    return-void

    .line 235
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method public loge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 238
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 239
    return-void

    .line 240
    :cond_0
    iget v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    const/4 v2, 0x6

    if-le v1, v2, :cond_1

    .line 241
    return-void

    .line 242
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    return-void
.end method

.method public logi(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 196
    return-void

    .line 197
    :cond_0
    iget v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    .line 198
    return-void

    .line 199
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method public logv(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 203
    return-void

    .line 204
    :cond_0
    iget v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 205
    return-void

    .line 206
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method public logw(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 210
    return-void

    .line 211
    :cond_0
    iget v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    .line 212
    return-void

    .line 213
    :cond_1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void
.end method

.method public onHandshakeException(Lcom/koushikdutta/async/AsyncSSLException;)V
    .locals 0
    .param p1, "e"    # Lcom/koushikdutta/async/AsyncSSLException;

    .line 122
    return-void
.end method

.method public setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)V
    .locals 0
    .param p1, "body"    # Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    .line 114
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mBody:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    .line 115
    return-void
.end method

.method public setFollowRedirect(Z)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 0
    .param p1, "follow"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mFollowRedirect:Z

    .line 109
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 137
    return-object p0
.end method

.method public setLogging(Ljava/lang/String;I)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # I

    .line 173
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    .line 174
    iput p2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    .line 175
    return-void
.end method

.method public setMethod(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/koushikdutta/async/http/AsyncHttpRequest;

    if-ne v0, v1, :cond_0

    .line 58
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mMethod:Ljava/lang/String;

    .line 59
    return-object p0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t change method on a subclass of AsyncHttpRequest"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTimeout(I)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 0
    .param p1, "timeout"    # I

    .line 131
    iput p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mTimeout:I

    .line 132
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_0

    .line 168
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->toPrefixString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
