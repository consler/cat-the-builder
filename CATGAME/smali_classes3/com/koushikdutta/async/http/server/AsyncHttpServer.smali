.class public Lcom/koushikdutta/async/http/server/AsyncHttpServer;
.super Ljava/lang/Object;
.source "AsyncHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;,
        Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static mCodes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mContentTypes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mActions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;",
            ">;>;"
        }
    .end annotation
.end field

.field mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field mListenCallback:Lcom/koushikdutta/async/callback/ListenCallback;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/koushikdutta/async/AsyncServerSocket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 375
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mContentTypes:Ljava/util/Hashtable;

    .line 511
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    const/16 v1, 0xc8

    .line 513
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    const/16 v1, 0xca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Accepted"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    const/16 v1, 0xce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Partial Content"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Switching Protocols"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Moved Permanently"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    const/16 v1, 0x12e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Found"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    const/16 v1, 0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not Found"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mListeners:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mListenCallback:Lcom/koushikdutta/async/callback/ListenCallback;

    .line 285
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mActions:Ljava/util/Hashtable;

    .line 377
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "js"

    const-string v2, "application/javascript"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "json"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "png"

    const-string v2, "image/png"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "jpg"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "html"

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "css"

    const-string v2, "text/css"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "mp4"

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "mov"

    const-string v2, "video/quicktime"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "wmv"

    const-string v2, "video/x-ms-wmv"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$200(Lcom/koushikdutta/async/http/server/AsyncHttpServer;Ljava/lang/Exception;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->report(Ljava/lang/Exception;)V

    return-void
.end method

.method public static getAssetStream(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 365
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 367
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 368
    new-instance p1, Landroid/util/Pair;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 389
    invoke-static {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->tryGetContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "text/plain"

    return-object p0
.end method

.method public static getResponseCodeDescription(I)Ljava/lang/String;
    .locals 1

    .line 523
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "Unknown"

    :cond_0
    return-object p0
.end method

.method private report(Ljava/lang/Exception;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public static tryGetContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "."

    .line 396
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 398
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 399
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mContentTypes:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V
    .locals 3

    .line 303
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;)V

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "^"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    iput-object p2, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;->regex:Ljava/util/regex/Pattern;

    .line 305
    iput-object p3, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;->callback:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    .line 307
    iget-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mActions:Ljava/util/Hashtable;

    monitor-enter p2

    .line 308
    :try_start_0
    iget-object p3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mActions:Ljava/util/Hashtable;

    invoke-virtual {p3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    if-nez p3, :cond_0

    .line 310
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 311
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mActions:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_0
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public directory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 407
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 408
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$4;

    invoke-direct {v0, p0, p1, p3}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$4;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer;Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "GET"

    invoke-virtual {p0, v1, p2, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V

    .line 431
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$5;

    invoke-direct {v0, p0, p1, p3}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$5;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer;Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "HEAD"

    invoke-virtual {p0, p1, p2, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V

    return-void
.end method

.method public directory(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 453
    invoke-virtual {p0, p1, p2, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->directory(Ljava/lang/String;Ljava/io/File;Z)V

    return-void
.end method

.method public directory(Ljava/lang/String;Ljava/io/File;Z)V
    .locals 1

    .line 458
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$6;

    invoke-direct {v0, p0, p2, p3}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$6;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer;Ljava/io/File;Z)V

    const-string p2, "GET"

    invoke-virtual {p0, p2, p1, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V

    return-void
.end method

.method public get(Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V
    .locals 1

    const-string v0, "GET"

    .line 357
    invoke-virtual {p0, v0, p1, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V

    return-void
.end method

.method public getErrorCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public getListenCallback()Lcom/koushikdutta/async/callback/ListenCallback;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mListenCallback:Lcom/koushikdutta/async/callback/ListenCallback;

    return-object v0
.end method

.method public listen(I)Lcom/koushikdutta/async/AsyncServerSocket;
    .locals 1

    .line 238
    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->getDefault()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->listen(Lcom/koushikdutta/async/AsyncServer;I)Lcom/koushikdutta/async/AsyncServerSocket;

    move-result-object p1

    return-object p1
.end method

.method public listen(Lcom/koushikdutta/async/AsyncServer;I)Lcom/koushikdutta/async/AsyncServerSocket;
    .locals 2

    const/4 v0, 0x0

    .line 229
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mListenCallback:Lcom/koushikdutta/async/callback/ListenCallback;

    invoke-virtual {p1, v0, p2, v1}, Lcom/koushikdutta/async/AsyncServer;->listen(Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncServerSocket;

    move-result-object p1

    return-object p1
.end method

.method public listenSecure(ILjavax/net/ssl/SSLContext;)V
    .locals 2

    .line 242
    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->getDefault()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer;ILjavax/net/ssl/SSLContext;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/koushikdutta/async/AsyncServer;->listen(Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncServerSocket;

    return-void
.end method

.method protected onRequest(Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 62
    invoke-interface {p1, p2, p3}, Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;->onRequest(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    :cond_0
    return-void
.end method

.method protected onRequest(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onUnknownBody(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 2

    .line 66
    new-instance v0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;

    const-string v1, "Content-Type"

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/server/UnknownRequestBody;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public post(Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V
    .locals 1

    const-string v0, "POST"

    .line 361
    invoke-virtual {p0, v0, p1, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V

    return-void
.end method

.method public removeAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mActions:Ljava/util/Hashtable;

    monitor-enter v0

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mActions:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 291
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 292
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 293
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;

    .line 294
    iget-object v2, v2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;->regex:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 296
    monitor-exit v0

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setErrorCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/AsyncServerSocket;

    .line 51
    invoke-interface {v1}, Lcom/koushikdutta/async/AsyncServerSocket;->stop()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public websocket(Ljava/lang/String;Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 322
    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->websocket(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;)V

    return-void
.end method

.method public websocket(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;)V
    .locals 1

    .line 326
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$3;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer;Ljava/lang/String;Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->get(Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V

    return-void
.end method
