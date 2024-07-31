.class public Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;
.super Lcom/koushikdutta/async/http/SimpleMiddleware;
.source "ResponseCacheMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;,
        Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;,
        Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSSLSocket;,
        Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;,
        Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;,
        Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;,
        Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;,
        Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;
    }
.end annotation


# static fields
.field public static final CACHE:Ljava/lang/String; = "cache"

.field public static final CONDITIONAL_CACHE:Ljava/lang/String; = "conditional-cache"

.field public static final ENTRY_BODY:I = 0x1

.field public static final ENTRY_COUNT:I = 0x2

.field public static final ENTRY_METADATA:I = 0x0

.field private static final LOGTAG:Ljava/lang/String; = "AsyncHttpCache"

.field public static final SERVED_FROM:Ljava/lang/String; = "X-Served-From"


# instance fields
.field private cache:Lcom/koushikdutta/async/util/FileCache;

.field private cacheHitCount:I

.field private cacheStoreCount:I

.field private caching:Z

.field private conditionalCacheHitCount:I

.field private networkCount:I

.field private server:Lcom/koushikdutta/async/AsyncServer;

.field private writeAbortCount:I

.field private writeSuccessCount:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/koushikdutta/async/http/SimpleMiddleware;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->caching:Z

    .line 70
    return-void
.end method

.method static synthetic access$300(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)Lcom/koushikdutta/async/AsyncServer;
    .locals 1
    .param p0, "x0"    # Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    .line 51
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->server:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)Lcom/koushikdutta/async/util/FileCache;
    .locals 1
    .param p0, "x0"    # Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    .line 51
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->cache:Lcom/koushikdutta/async/util/FileCache;

    return-object v0
.end method

.method static synthetic access$508(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)I
    .locals 2
    .param p0, "x0"    # Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    .line 51
    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->writeSuccessCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->writeSuccessCount:I

    return v0
.end method

.method static synthetic access$608(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)I
    .locals 2
    .param p0, "x0"    # Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    .line 51
    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->writeAbortCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->writeAbortCount:I

    return v0
.end method

.method public static addCache(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/io/File;J)Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;
    .locals 3
    .param p0, "client"    # Lcom/koushikdutta/async/http/AsyncHttpClient;
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getMiddleware()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 74
    .local v1, "middleware":Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
    instance-of v2, v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    if-nez v2, :cond_0

    .line 76
    .end local v1    # "middleware":Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
    goto :goto_0

    .line 75
    .restart local v1    # "middleware":Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Response cache already added to http client"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    .end local v1    # "middleware":Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
    :cond_1
    new-instance v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;-><init>()V

    .line 78
    .local v0, "ret":Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v1

    iput-object v1, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->server:Lcom/koushikdutta/async/AsyncServer;

    .line 79
    new-instance v1, Lcom/koushikdutta/async/util/FileCache;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/koushikdutta/async/util/FileCache;-><init>(Ljava/io/File;JZ)V

    iput-object v1, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->cache:Lcom/koushikdutta/async/util/FileCache;

    .line 80
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->insertMiddleware(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V

    .line 81
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->cache:Lcom/koushikdutta/async/util/FileCache;

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/koushikdutta/async/util/FileCache;->clear()V

    .line 326
    :cond_0
    return-void
.end method

.method public getCacheHitCount()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->cacheHitCount:I

    return v0
.end method

.method public getCacheStoreCount()I
    .locals 1

    .line 219
    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->cacheStoreCount:I

    return v0
.end method

.method public getCaching()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->caching:Z

    return v0
.end method

.method public getConditionalCacheHitCount()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->conditionalCacheHitCount:I

    return v0
.end method

.method public getFileCache()Lcom/koushikdutta/async/util/FileCache;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->cache:Lcom/koushikdutta/async/util/FileCache;

    return-object v0
.end method

.method public getNetworkCount()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->networkCount:I

    return v0
.end method

.method public getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 20
    .param p1, "data"    # Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    .line 105
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Lcom/koushikdutta/async/http/cache/RequestHeaders;

    iget-object v3, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/Headers;->getMultiMap()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v4

    invoke-static {v4}, Lcom/koushikdutta/async/http/cache/RawHeaders;->fromMultimap(Ljava/util/Map;)Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/koushikdutta/async/http/cache/RequestHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V

    move-object v3, v0

    .line 106
    .local v3, "requestHeaders":Lcom/koushikdutta/async/http/cache/RequestHeaders;
    iget-object v0, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v4, "request-headers"

    invoke-virtual {v0, v4, v3}, Lcom/koushikdutta/async/util/UntypedHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    iget-object v0, v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->cache:Lcom/koushikdutta/async/util/FileCache;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_8

    iget-boolean v0, v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->caching:Z

    if-eqz v0, :cond_8

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->isNoCache()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v5, v4

    goto/16 :goto_3

    .line 113
    :cond_0
    new-array v0, v5, [Ljava/lang/Object;

    iget-object v6, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v6}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v0, v7

    invoke-static {v0}, Lcom/koushikdutta/async/util/FileCache;->toKeyString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, "key":Ljava/lang/String;
    const/4 v8, 0x0

    .line 118
    .local v8, "snapshot":[Ljava/io/FileInputStream;
    :try_start_0
    iget-object v0, v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->cache:Lcom/koushikdutta/async/util/FileCache;

    const/4 v9, 0x2

    invoke-virtual {v0, v6, v9}, Lcom/koushikdutta/async/util/FileCache;->get(Ljava/lang/String;I)[Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v8, v0

    .line 119
    if-nez v8, :cond_1

    .line 120
    :try_start_1
    iget v0, v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->networkCount:I

    add-int/2addr v0, v5

    iput v0, v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->networkCount:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    return-object v4

    .line 126
    :catch_0
    move-exception v0

    move-object v4, v6

    goto/16 :goto_2

    .line 123
    :cond_1
    :try_start_2
    aget-object v0, v8, v5

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    int-to-long v9, v0

    .line 124
    .local v9, "contentLength":J
    new-instance v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;

    aget-object v7, v8, v7

    invoke-direct {v0, v7}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v7, v0

    .line 131
    .local v7, "entry":Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;
    nop

    .line 134
    iget-object v0, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v11, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v11}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v12}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v12

    invoke-virtual {v12}, Lcom/koushikdutta/async/http/Headers;->getMultiMap()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v12

    invoke-virtual {v7, v0, v11, v12}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->matches(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    iget v0, v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->networkCount:I

    add-int/2addr v0, v5

    iput v0, v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->networkCount:I

    .line 136
    invoke-static {v8}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 137
    return-object v4

    .line 140
    :cond_2
    new-instance v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;

    aget-object v11, v8, v5

    invoke-direct {v0, v7, v11}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;Ljava/io/FileInputStream;)V

    move-object v11, v0

    .line 145
    .local v11, "candidate":Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;
    :try_start_3
    invoke-virtual {v11}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 146
    .local v0, "responseHeadersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v11}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->getBody()Ljava/io/FileInputStream;

    move-result-object v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 152
    .local v12, "cachedResponseBody":Ljava/io/FileInputStream;
    nop

    .line 153
    if-eqz v0, :cond_7

    if-nez v12, :cond_3

    move-object/from16 v19, v0

    move-object v15, v4

    move v13, v5

    move-object v4, v6

    move-object/from16 v17, v12

    goto/16 :goto_1

    .line 159
    :cond_3
    invoke-static {v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->fromMultimap(Ljava/util/Map;)Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v13

    .line 160
    .local v13, "rawResponseHeaders":Lcom/koushikdutta/async/http/cache/RawHeaders;
    new-instance v14, Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    iget-object v15, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v15}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v14, v15, v13}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V

    .line 161
    .local v14, "cachedResponseHeaders":Lcom/koushikdutta/async/http/cache/ResponseHeaders;
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    const-string v4, "Content-Length"

    invoke-virtual {v13, v4, v15}, Lcom/koushikdutta/async/http/cache/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v4, "Content-Encoding"

    invoke-virtual {v13, v4}, Lcom/koushikdutta/async/http/cache/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 163
    const-string v4, "Transfer-Encoding"

    invoke-virtual {v13, v4}, Lcom/koushikdutta/async/http/cache/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 164
    move-object v4, v6

    .end local v6    # "key":Ljava/lang/String;
    .local v4, "key":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    .end local v12    # "cachedResponseBody":Ljava/io/FileInputStream;
    .end local v13    # "rawResponseHeaders":Lcom/koushikdutta/async/http/cache/RawHeaders;
    .local v17, "cachedResponseBody":Ljava/io/FileInputStream;
    .local v18, "rawResponseHeaders":Lcom/koushikdutta/async/http/cache/RawHeaders;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v14, v5, v6, v12, v13}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->setLocalTimestamps(JJ)V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 167
    .local v5, "now":J
    invoke-virtual {v14, v5, v6, v3}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->chooseResponseSource(JLcom/koushikdutta/async/http/cache/RequestHeaders;)Lcom/koushikdutta/async/http/cache/ResponseSource;

    move-result-object v12

    .line 169
    .local v12, "responseSource":Lcom/koushikdutta/async/http/cache/ResponseSource;
    sget-object v13, Lcom/koushikdutta/async/http/cache/ResponseSource;->CACHE:Lcom/koushikdutta/async/http/cache/ResponseSource;

    if-ne v12, v13, :cond_5

    .line 170
    iget-object v13, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v15, "Response retrieved from cache"

    invoke-virtual {v13, v15}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logi(Ljava/lang/String;)V

    .line 171
    invoke-static {v7}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->access$000(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;)Z

    move-result v13

    if-eqz v13, :cond_4

    new-instance v13, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSSLSocket;

    invoke-direct {v13, v1, v11, v9, v10}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSSLSocket;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;J)V

    goto :goto_0

    :cond_4
    new-instance v13, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;

    invoke-direct {v13, v1, v11, v9, v10}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;J)V

    .line 172
    .local v13, "socket":Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;
    :goto_0
    iget-object v15, v13, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual/range {v18 .. v18}, Lcom/koushikdutta/async/http/cache/RawHeaders;->toHeaderString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v19, v0

    .end local v0    # "responseHeadersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local v19, "responseHeadersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 174
    iget-object v0, v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->server:Lcom/koushikdutta/async/AsyncServer;

    new-instance v15, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;

    invoke-direct {v15, v1, v2, v13}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;)V

    invoke-virtual {v0, v15}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 181
    iget v0, v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->cacheHitCount:I

    const/4 v15, 0x1

    add-int/2addr v0, v15

    iput v0, v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->cacheHitCount:I

    .line 182
    iget-object v0, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v15, "socket-owner"

    invoke-virtual {v0, v15, v1}, Lcom/koushikdutta/async/util/UntypedHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    new-instance v0, Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 184
    .local v0, "ret":Lcom/koushikdutta/async/future/SimpleCancellable;
    invoke-virtual {v0}, Lcom/koushikdutta/async/future/SimpleCancellable;->setComplete()Z

    .line 185
    return-object v0

    .line 187
    .end local v13    # "socket":Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;
    .end local v19    # "responseHeadersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local v0, "responseHeadersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_5
    move-object/from16 v19, v0

    .end local v0    # "responseHeadersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v19    # "responseHeadersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    sget-object v0, Lcom/koushikdutta/async/http/cache/ResponseSource;->CONDITIONAL_CACHE:Lcom/koushikdutta/async/http/cache/ResponseSource;

    if-ne v12, v0, :cond_6

    .line 188
    iget-object v0, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v13, "Response may be served from conditional cache"

    invoke-virtual {v0, v13}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logi(Ljava/lang/String;)V

    .line 189
    new-instance v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;-><init>()V

    .line 190
    .local v0, "cacheData":Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;
    iput-object v8, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->snapshot:[Ljava/io/FileInputStream;

    .line 191
    iput-wide v9, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->contentLength:J

    .line 192
    iput-object v14, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->cachedResponseHeaders:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    .line 193
    iput-object v11, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->candidate:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;

    .line 194
    iget-object v13, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v15, "cache-data"

    invoke-virtual {v13, v15, v0}, Lcom/koushikdutta/async/util/UntypedHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    const/4 v13, 0x0

    return-object v13

    .line 198
    .end local v0    # "cacheData":Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;
    :cond_6
    iget-object v0, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v13, "Response can not be served from cache"

    invoke-virtual {v0, v13}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    .line 200
    iget v0, v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->networkCount:I

    const/4 v13, 0x1

    add-int/2addr v0, v13

    iput v0, v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->networkCount:I

    .line 201
    invoke-static {v8}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 202
    const/4 v15, 0x0

    return-object v15

    .line 153
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "now":J
    .end local v14    # "cachedResponseHeaders":Lcom/koushikdutta/async/http/cache/ResponseHeaders;
    .end local v17    # "cachedResponseBody":Ljava/io/FileInputStream;
    .end local v18    # "rawResponseHeaders":Lcom/koushikdutta/async/http/cache/RawHeaders;
    .end local v19    # "responseHeadersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local v0, "responseHeadersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v6    # "key":Ljava/lang/String;
    .local v12, "cachedResponseBody":Ljava/io/FileInputStream;
    :cond_7
    move-object/from16 v19, v0

    move-object v15, v4

    move v13, v5

    move-object v4, v6

    move-object/from16 v17, v12

    .line 154
    .end local v0    # "responseHeadersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v12    # "cachedResponseBody":Ljava/io/FileInputStream;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v17    # "cachedResponseBody":Ljava/io/FileInputStream;
    .restart local v19    # "responseHeadersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_1
    iget v0, v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->networkCount:I

    add-int/2addr v0, v13

    iput v0, v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->networkCount:I

    .line 155
    invoke-static {v8}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 156
    return-object v15

    .line 148
    .end local v4    # "key":Ljava/lang/String;
    .end local v17    # "cachedResponseBody":Ljava/io/FileInputStream;
    .end local v19    # "responseHeadersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v6    # "key":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v4, v6

    .line 149
    .end local v6    # "key":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "key":Ljava/lang/String;
    iget v5, v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->networkCount:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->networkCount:I

    .line 150
    invoke-static {v8}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 151
    const/4 v5, 0x0

    return-object v5

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "entry":Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;
    .end local v9    # "contentLength":J
    .end local v11    # "candidate":Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;
    .restart local v6    # "key":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v4, v6

    .line 128
    .end local v6    # "key":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    .restart local v4    # "key":Ljava/lang/String;
    :goto_2
    iget v5, v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->networkCount:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->networkCount:I

    .line 129
    invoke-static {v8}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 130
    const/4 v5, 0x0

    return-object v5

    .line 108
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "key":Ljava/lang/String;
    .end local v8    # "snapshot":[Ljava/io/FileInputStream;
    :cond_8
    move-object v5, v4

    .line 109
    :goto_3
    iget v0, v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->networkCount:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    iput v0, v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->networkCount:I

    .line 110
    return-object v5
.end method

.method public onBodyDecoder(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;)V
    .locals 13
    .param p1, "data"    # Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;

    .line 226
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    const-class v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/Util;->getWrappedSocket(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/Class;)Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;

    .line 227
    .local v0, "cached":Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;
    const-string v1, "X-Served-From"

    if-eqz v0, :cond_0

    .line 228
    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v2}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->headers()Lcom/koushikdutta/async/http/Headers;

    move-result-object v2

    const-string v3, "cache"

    invoke-virtual {v2, v1, v3}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 229
    return-void

    .line 232
    :cond_0
    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v3, "cache-data"

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/util/UntypedHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;

    .line 233
    .local v2, "cacheData":Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;
    iget-object v4, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v4}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->headers()Lcom/koushikdutta/async/http/Headers;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/Headers;->getMultiMap()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v4

    invoke-static {v4}, Lcom/koushikdutta/async/http/cache/RawHeaders;->fromMultimap(Ljava/util/Map;)Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v4

    .line 234
    .local v4, "rh":Lcom/koushikdutta/async/http/cache/RawHeaders;
    const-string v5, "Content-Length"

    invoke-virtual {v4, v5}, Lcom/koushikdutta/async/http/cache/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 235
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v7}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->protocol()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v7}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->code()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const/4 v7, 0x2

    iget-object v10, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v10}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->message()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v7

    const-string v7, "%s %s %s"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/koushikdutta/async/http/cache/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 236
    new-instance v5, Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    iget-object v6, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v6}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V

    .line 237
    .local v5, "networkResponse":Lcom/koushikdutta/async/http/cache/ResponseHeaders;
    iget-object v6, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v7, "response-headers"

    invoke-virtual {v6, v7, v5}, Lcom/koushikdutta/async/util/UntypedHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    if-eqz v2, :cond_2

    .line 239
    iget-object v6, v2, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->cachedResponseHeaders:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-virtual {v6, v5}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->validate(Lcom/koushikdutta/async/http/cache/ResponseHeaders;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 240
    iget-object v3, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v6, "Serving response from conditional cache"

    invoke-virtual {v3, v6}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logi(Ljava/lang/String;)V

    .line 241
    iget-object v3, v2, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->cachedResponseHeaders:Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    invoke-virtual {v3, v5}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->combine(Lcom/koushikdutta/async/http/cache/ResponseHeaders;)Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    move-result-object v3

    .line 242
    .local v3, "combined":Lcom/koushikdutta/async/http/cache/ResponseHeaders;
    iget-object v6, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    new-instance v7, Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->getHeaders()Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v8

    invoke-virtual {v8}, Lcom/koushikdutta/async/http/cache/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/koushikdutta/async/http/Headers;-><init>(Ljava/util/Map;)V

    invoke-interface {v6, v7}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->headers(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 243
    iget-object v6, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->getHeaders()Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v7

    invoke-virtual {v7}, Lcom/koushikdutta/async/http/cache/RawHeaders;->getResponseCode()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->code(I)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 244
    iget-object v6, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->getHeaders()Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v7

    invoke-virtual {v7}, Lcom/koushikdutta/async/http/cache/RawHeaders;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->message(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 246
    iget-object v6, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v6}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->headers()Lcom/koushikdutta/async/http/Headers;

    move-result-object v6

    const-string v7, "conditional-cache"

    invoke-virtual {v6, v1, v7}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 247
    iget v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->conditionalCacheHitCount:I

    add-int/2addr v1, v9

    iput v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->conditionalCacheHitCount:I

    .line 249
    new-instance v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;

    iget-object v6, v2, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->candidate:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;

    iget-wide v7, v2, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->contentLength:J

    invoke-direct {v1, v6, v7, v8}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;J)V

    .line 250
    .local v1, "bodySpewer":Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;
    iget-object v6, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->bodyEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-virtual {v1, v6}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    .line 251
    iput-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->bodyEmitter:Lcom/koushikdutta/async/DataEmitter;

    .line 252
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->sendCachedData()V

    .line 253
    return-void

    .line 257
    .end local v1    # "bodySpewer":Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;
    .end local v3    # "combined":Lcom/koushikdutta/async/http/cache/ResponseHeaders;
    :cond_1
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    invoke-virtual {v1, v3}, Lcom/koushikdutta/async/util/UntypedHashtable;->remove(Ljava/lang/String;)V

    .line 258
    iget-object v1, v2, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->snapshot:[Ljava/io/FileInputStream;

    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 261
    :cond_2
    iget-boolean v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->caching:Z

    if-nez v1, :cond_3

    .line 262
    return-void

    .line 264
    :cond_3
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v3, "request-headers"

    invoke-virtual {v1, v3}, Lcom/koushikdutta/async/util/UntypedHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/cache/RequestHeaders;

    .line 265
    .local v1, "requestHeaders":Lcom/koushikdutta/async/http/cache/RequestHeaders;
    if-eqz v1, :cond_5

    invoke-virtual {v5, v1}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->isCacheable(Lcom/koushikdutta/async/http/cache/RequestHeaders;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v6, "GET"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 276
    :cond_4
    new-array v3, v9, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v6}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v3, v8

    invoke-static {v3}, Lcom/koushikdutta/async/util/FileCache;->toKeyString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v6

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->getVaryFields()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/koushikdutta/async/http/cache/RawHeaders;->getAll(Ljava/util/Set;)Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v6

    .line 278
    .local v6, "varyHeaders":Lcom/koushikdutta/async/http/cache/RawHeaders;
    new-instance v7, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;

    iget-object v8, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v8}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v8

    iget-object v10, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->getHeaders()Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v11

    invoke-direct {v7, v8, v6, v10, v11}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/cache/RawHeaders;)V

    .line 279
    .local v7, "entry":Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;
    new-instance v8, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;)V

    .line 280
    .local v8, "cacher":Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;
    new-instance v10, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    invoke-direct {v10, p0, v3}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;Ljava/lang/String;)V

    .line 282
    .local v10, "editor":Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;
    :try_start_0
    invoke-virtual {v7, v10}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->writeTo(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;)V

    .line 284
    invoke-virtual {v10, v9}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->newOutputStream(I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    nop

    .line 292
    iput-object v10, v8, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->editor:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    .line 294
    iget-object v11, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->bodyEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-virtual {v8, v11}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    .line 295
    iput-object v8, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->bodyEmitter:Lcom/koushikdutta/async/DataEmitter;

    .line 297
    iget-object v11, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v12, "body-cacher"

    invoke-virtual {v11, v12, v8}, Lcom/koushikdutta/async/util/UntypedHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    iget-object v11, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v12, "Caching response"

    invoke-virtual {v11, v12}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    .line 299
    iget v11, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->cacheStoreCount:I

    add-int/2addr v11, v9

    iput v11, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->cacheStoreCount:I

    .line 300
    return-void

    .line 286
    :catch_0
    move-exception v11

    .line 288
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->abort()V

    .line 289
    iget v12, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->networkCount:I

    add-int/2addr v12, v9

    iput v12, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->networkCount:I

    .line 290
    return-void

    .line 271
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "varyHeaders":Lcom/koushikdutta/async/http/cache/RawHeaders;
    .end local v7    # "entry":Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;
    .end local v8    # "cacher":Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;
    .end local v10    # "editor":Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_0
    iget v3, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->networkCount:I

    add-int/2addr v3, v9

    iput v3, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->networkCount:I

    .line 272
    iget-object v3, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v6, "Response is not cacheable"

    invoke-virtual {v3, v6}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public onResponseComplete(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;)V
    .locals 5
    .param p1, "data"    # Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;

    .line 305
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v1, "cache-data"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/UntypedHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;

    .line 306
    .local v0, "cacheData":Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->snapshot:[Ljava/io/FileInputStream;

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CacheData;->snapshot:[Ljava/io/FileInputStream;

    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 309
    :cond_0
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    const-class v2, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;

    invoke-static {v1, v2}, Lcom/koushikdutta/async/Util;->getWrappedSocket(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/Class;)Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;

    .line 310
    .local v1, "cachedSocket":Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;
    if-eqz v1, :cond_1

    .line 311
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->cacheResponse:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->getBody()Ljava/io/FileInputStream;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 313
    :cond_1
    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v3, "body-cacher"

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/util/UntypedHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;

    .line 314
    .local v2, "cacher":Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;
    if-eqz v2, :cond_3

    .line 315
    iget-object v3, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->exception:Ljava/lang/Exception;

    if-eqz v3, :cond_2

    .line 316
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->abort()V

    goto :goto_0

    .line 318
    :cond_2
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->commit()V

    .line 320
    :cond_3
    :goto_0
    return-void
.end method

.method public removeFromCache(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 97
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/koushikdutta/async/util/FileCache;->toKeyString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->getFileCache()Lcom/koushikdutta/async/util/FileCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/util/FileCache;->remove(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public setCaching(Z)V
    .locals 0
    .param p1, "caching"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->caching:Z

    .line 94
    return-void
.end method
