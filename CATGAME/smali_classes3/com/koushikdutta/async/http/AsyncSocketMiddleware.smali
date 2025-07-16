.class public Lcom/koushikdutta/async/http/AsyncSocketMiddleware;
.super Lcom/koushikdutta/async/http/SimpleMiddleware;
.source "AsyncSocketMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;,
        Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;
    }
.end annotation


# instance fields
.field connectAllAddresses:Z

.field connectionInfo:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field idleTimeoutMs:I

.field protected mClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field maxConnectionCount:I

.field port:I

.field proxyAddress:Ljava/net/InetSocketAddress;

.field proxyHost:Ljava/lang/String;

.field proxyPort:I

.field scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V
    .locals 2

    const-string v0, "http"

    const/16 v1, 0x50

    .line 51
    invoke-direct {p0, p1, v0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/lang/String;I)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/koushikdutta/async/http/SimpleMiddleware;-><init>()V

    const v0, 0x493e0

    .line 27
    iput v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->idleTimeoutMs:I

    .line 111
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectionInfo:Ljava/util/Hashtable;

    const v0, 0x7fffffff

    .line 113
    iput v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->maxConnectionCount:I

    .line 30
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->mClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    .line 31
    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->scheme:Ljava/lang/String;

    .line 32
    iput p3, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->port:I

    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->idleSocket(Lcom/koushikdutta/async/AsyncSocket;)V

    return-void
.end method

.method static synthetic access$100(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->recycleSocket(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-void
.end method

.method static synthetic access$200(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->maybeCleanupConnectionInfo(Ljava/lang/String;)V

    return-void
.end method

.method private getOrCreateConnectionInfo(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectionInfo:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;-><init>()V

    .line 265
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectionInfo:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private idleSocket(Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 1

    .line 314
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$3;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$3;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    const/4 v0, 0x0

    .line 321
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/AsyncSocket;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 324
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$4;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$4;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void
.end method

.method private maybeCleanupConnectionInfo(Ljava/lang/String;)V
    .locals 7

    .line 271
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectionInfo:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->sockets:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 275
    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->sockets:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

    .line 276
    iget-object v2, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->socket:Lcom/koushikdutta/async/AsyncSocket;

    .line 277
    iget-wide v3, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->idleTime:J

    iget v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->idleTimeoutMs:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    goto :goto_1

    .line 279
    :cond_1
    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->sockets:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->pop()Ljava/lang/Object;

    const/4 v1, 0x0

    .line 281
    invoke-interface {v2, v1}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 282
    invoke-interface {v2}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    goto :goto_0

    .line 284
    :cond_2
    :goto_1
    iget v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->openCount:I

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->queue:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->sockets:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectionInfo:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private nextConnection(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 4

    .line 336
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 337
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->getSchemePort(Landroid/net/Uri;)I

    move-result v1

    .line 338
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyPort()I

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->computeLookup(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 339
    monitor-enter p0

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectionInfo:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    if-nez v0, :cond_0

    .line 342
    monitor-exit p0

    return-void

    .line 343
    :cond_0
    iget v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->openCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->openCount:I

    .line 344
    :goto_0
    iget v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->openCount:I

    iget v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->maxConnectionCount:I

    if-ge v1, v2, :cond_2

    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->queue:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 345
    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->queue:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    .line 346
    iget-object v2, v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->socketCancellable:Lcom/koushikdutta/async/future/Cancellable;

    check-cast v2, Lcom/koushikdutta/async/future/SimpleCancellable;

    .line 347
    invoke-virtual {v2}, Lcom/koushikdutta/async/future/SimpleCancellable;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 349
    :cond_1
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v1

    .line 350
    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/future/SimpleCancellable;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleCancellable;

    goto :goto_0

    .line 352
    :cond_2
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->maybeCleanupConnectionInfo(Ljava/lang/String;)V

    .line 353
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private recycleSocket(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 291
    :cond_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 292
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->getSchemePort(Landroid/net/Uri;)I

    move-result v1

    .line 293
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyPort()I

    move-result p2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->computeLookup(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 295
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 296
    monitor-enter p0

    .line 297
    :try_start_0
    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->getOrCreateConnectionInfo(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    move-result-object v1

    .line 298
    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->sockets:Lcom/koushikdutta/async/ArrayDeque;

    .line 299
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 300
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    new-instance v2, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/ArrayDeque;Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void

    :catchall_0
    move-exception p1

    .line 300
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method computeLookup(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;
    .locals 2

    const-string v0, ":"

    if-eqz p3, :cond_0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    if-eqz p3, :cond_1

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "//"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "?proxy="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public disableProxy()V
    .locals 1

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyPort:I

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyHost:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyAddress:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public enableProxy(Ljava/lang/String;I)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyHost:Ljava/lang/String;

    .line 81
    iput p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyPort:I

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyAddress:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public getConnectAllAddresses()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectAllAddresses:Z

    return v0
.end method

.method public getMaxConnectionCount()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->maxConnectionCount:I

    return v0
.end method

.method public getSchemePort(Landroid/net/Uri;)I
    .locals 3

    .line 40
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 43
    iget p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->port:I

    return p1

    .line 46
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 11

    .line 125
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 126
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->getSchemePort(Landroid/net/Uri;)I

    move-result v4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne v4, v0, :cond_0

    return-object v1

    .line 131
    :cond_0
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v2, "socket-owner"

    invoke-virtual {v0, v2, p0}, Lcom/koushikdutta/async/util/UntypedHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyHost()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyPort()I

    move-result v2

    invoke-virtual {p0, v3, v4, v0, v2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->computeLookup(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->getOrCreateConnectionInfo(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    move-result-object v0

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget v2, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->openCount:I

    iget v5, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->maxConnectionCount:I

    if-lt v2, v5, :cond_1

    .line 138
    new-instance v1, Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-direct {v1}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 139
    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->queue:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 140
    monitor-exit p0

    return-object v1

    .line 143
    :cond_1
    iget v2, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->openCount:I

    const/4 v5, 0x1

    add-int/2addr v2, v5

    iput v2, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->openCount:I

    .line 145
    :goto_0
    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->sockets:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v2}, Lcom/koushikdutta/async/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 146
    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->sockets:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v2}, Lcom/koushikdutta/async/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

    .line 147
    iget-object v6, v2, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->socket:Lcom/koushikdutta/async/AsyncSocket;

    .line 148
    iget-wide v7, v2, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->idleTime:J

    iget v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->idleTimeoutMs:I

    int-to-long v9, v2

    add-long/2addr v7, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v2, v7, v9

    if-gez v2, :cond_2

    .line 149
    invoke-interface {v6, v1}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 150
    invoke-interface {v6}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    goto :goto_0

    .line 153
    :cond_2
    invoke-interface {v6}, Lcom/koushikdutta/async/AsyncSocket;->isOpen()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 156
    :cond_3
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v2, "Reusing keep-alive socket"

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    .line 157
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->connectCallback:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-interface {p1, v1, v6}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 160
    new-instance p1, Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-direct {p1}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 161
    invoke-virtual {p1}, Lcom/koushikdutta/async/future/SimpleCancellable;->setComplete()Z

    .line 162
    monitor-exit p0

    return-object p1

    .line 164
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectAllAddresses:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyHost:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 191
    :cond_5
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "Resolving domain and connecting to all available addresses"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->mClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->getAllByName(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    invoke-direct {v1, p0, p1, v3, v4}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;I)V

    .line 193
    invoke-interface {v0, v1}, Lcom/koushikdutta/async/future/Future;->then(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/FutureCallback;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/future/Cancellable;

    return-object p1

    .line 168
    :cond_6
    :goto_1
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "Connecting socket"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    .line 172
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyHost:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 173
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyHost:Ljava/lang/String;

    iget v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyPort:I

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->enableProxy(Ljava/lang/String;I)V

    .line 174
    :cond_7
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 175
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyHost()Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyPort()I

    move-result v1

    move v7, v1

    goto :goto_2

    .line 180
    :cond_8
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v5, v1

    move v7, v4

    :goto_2
    if-eqz v5, :cond_9

    .line 184
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Using proxy: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 186
    :cond_9
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->mClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v8

    iget-object v6, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->connectCallback:Lcom/koushikdutta/async/callback/ConnectCallback;

    move-object v1, p0

    move-object v2, p1

    .line 187
    invoke-virtual/range {v1 .. v6}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->wrapCallback(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/callback/ConnectCallback;

    move-result-object p1

    .line 186
    invoke-virtual {v8, v0, v7, p1}, Lcom/koushikdutta/async/AsyncServer;->connectSocket(Ljava/lang/String;ILcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 164
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onResponseComplete(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;)V
    .locals 3

    .line 358
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v1, "socket-owner"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/UntypedHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 362
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->idleSocket(Lcom/koushikdutta/async/AsyncSocket;)V

    .line 364
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->exception:Ljava/lang/Exception;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 370
    :cond_1
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->protocol()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v2}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->headers()Lcom/koushikdutta/async/http/Headers;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/koushikdutta/async/http/HttpUtil;->isKeepAlive(Ljava/lang/String;Lcom/koushikdutta/async/http/Headers;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 371
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/koushikdutta/async/http/HttpUtil;->isKeepAlive(Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/Headers;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 377
    :cond_2
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "Recycling keep-alive socket"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    .line 378
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0, v0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->recycleSocket(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->nextConnection(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-void

    .line 372
    :cond_3
    :goto_0
    :try_start_1
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v2, "closing out socket (not keep alive)"

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 373
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 374
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    :goto_1
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->nextConnection(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-void

    .line 365
    :cond_4
    :goto_2
    :try_start_2
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v2, "closing out socket (exception)"

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 366
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 367
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 381
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->nextConnection(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    throw v0
.end method

.method public setConnectAllAddresses(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectAllAddresses:Z

    return-void
.end method

.method public setIdleTimeoutMs(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->idleTimeoutMs:I

    return-void
.end method

.method public setMaxConnectionCount(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->maxConnectionCount:I

    return-void
.end method

.method protected wrapCallback(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/callback/ConnectCallback;
    .locals 0

    return-object p5
.end method
