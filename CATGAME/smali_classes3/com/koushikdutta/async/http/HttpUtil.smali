.class public Lcom/koushikdutta/async/http/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contentLength(Lcom/koushikdutta/async/http/Headers;)I
    .locals 3
    .param p0, "headers"    # Lcom/koushikdutta/async/http/Headers;

    .line 136
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "cl":Ljava/lang/String;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 138
    return v1

    .line 140
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 142
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Ljava/lang/NumberFormatException;
    return v1
.end method

.method public static getBody(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 6
    .param p0, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p1, "reporter"    # Lcom/koushikdutta/async/callback/CompletedCallback;
    .param p2, "headers"    # Lcom/koushikdutta/async/http/Headers;

    .line 19
    const-string v0, "Content-Type"

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 21
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 23
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 22
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    .end local v2    # "i":I
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 26
    .local v4, "ct":Ljava/lang/String;
    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 27
    new-instance v2, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;

    invoke-direct {v2}, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;-><init>()V

    return-object v2

    .line 29
    :cond_1
    const-string v5, "application/json"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 30
    new-instance v2, Lcom/koushikdutta/async/http/body/JSONObjectBody;

    invoke-direct {v2}, Lcom/koushikdutta/async/http/body/JSONObjectBody;-><init>()V

    return-object v2

    .line 32
    :cond_2
    const-string v5, "text/plain"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 33
    new-instance v2, Lcom/koushikdutta/async/http/body/StringBody;

    invoke-direct {v2}, Lcom/koushikdutta/async/http/body/StringBody;-><init>()V

    return-object v2

    .line 35
    :cond_3
    const-string v5, "multipart/form-data"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 36
    new-instance v2, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-direct {v2, v1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;-><init>([Ljava/lang/String;)V

    return-object v2

    .line 25
    .end local v4    # "ct":Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 41
    .end local v1    # "values":[Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getBodyDecoder(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/Headers;Z)Lcom/koushikdutta/async/DataEmitter;
    .locals 8
    .param p0, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p1, "protocol"    # Lcom/koushikdutta/async/http/Protocol;
    .param p2, "headers"    # Lcom/koushikdutta/async/http/Headers;
    .param p3, "server"    # Z

    .line 65
    :try_start_0
    const-string v0, "Content-Length"

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .local v0, "_contentLength":J
    goto :goto_0

    .line 67
    .end local v0    # "_contentLength":J
    :catch_0
    move-exception v0

    .line 68
    .local v0, "ex":Ljava/lang/Exception;
    const-wide/16 v1, -0x1

    move-wide v0, v1

    .line 70
    .local v0, "_contentLength":J
    :goto_0
    move-wide v2, v0

    .line 71
    .local v2, "contentLength":J
    const-wide/16 v4, -0x1

    cmp-long v4, v4, v2

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 72
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-gez v4, :cond_0

    .line 73
    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v4

    new-instance v5, Lcom/koushikdutta/async/http/BodyDecoderException;

    const-string v6, "not using chunked encoding, and no content-length found."

    invoke-direct {v5, v6}, Lcom/koushikdutta/async/http/BodyDecoderException;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->create(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    move-result-object v4

    .line 74
    .local v4, "ender":Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
    invoke-virtual {v4, p0}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    .line 75
    move-object p0, v4

    .line 76
    return-object p0

    .line 78
    .end local v4    # "ender":Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
    :cond_0
    cmp-long v4, v2, v6

    if-nez v4, :cond_1

    .line 79
    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->create(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    move-result-object v4

    .line 80
    .restart local v4    # "ender":Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
    invoke-virtual {v4, p0}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    .line 81
    move-object p0, v4

    .line 82
    return-object p0

    .line 84
    .end local v4    # "ender":Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
    :cond_1
    new-instance v4, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;

    invoke-direct {v4, v2, v3}, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;-><init>(J)V

    .line 85
    .local v4, "contentLengthWatcher":Lcom/koushikdutta/async/http/filter/ContentLengthFilter;
    invoke-virtual {v4, p0}, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    .line 86
    move-object p0, v4

    .line 87
    .end local v4    # "contentLengthWatcher":Lcom/koushikdutta/async/http/filter/ContentLengthFilter;
    goto :goto_1

    .line 88
    :cond_2
    const-string v4, "Transfer-Encoding"

    invoke-virtual {p2, v4}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "chunked"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 89
    new-instance v4, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;

    invoke-direct {v4}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;-><init>()V

    .line 90
    .local v4, "chunker":Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;
    invoke-virtual {v4, p0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    .line 91
    move-object p0, v4

    .line 92
    .end local v4    # "chunker":Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;
    goto :goto_1

    .line 94
    :cond_3
    if-nez p3, :cond_4

    sget-object v4, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    if-ne p1, v4, :cond_5

    :cond_4
    const-string v4, "Connection"

    invoke-virtual {p2, v4}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "close"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 96
    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->create(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    move-result-object v4

    .line 97
    .local v4, "ender":Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
    invoke-virtual {v4, p0}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    .line 98
    move-object p0, v4

    .line 99
    return-object p0

    .line 103
    .end local v4    # "ender":Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
    :cond_5
    :goto_1
    const-string v4, "Content-Encoding"

    invoke-virtual {p2, v4}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "gzip"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 104
    new-instance v4, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    invoke-direct {v4}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;-><init>()V

    .line 105
    .local v4, "gunzipper":Lcom/koushikdutta/async/http/filter/GZIPInputFilter;
    invoke-virtual {v4, p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    .line 106
    move-object p0, v4

    .line 107
    .end local v4    # "gunzipper":Lcom/koushikdutta/async/http/filter/GZIPInputFilter;
    goto :goto_2

    .line 108
    :cond_6
    invoke-virtual {p2, v4}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "deflate"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 109
    new-instance v4, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;

    invoke-direct {v4}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;-><init>()V

    .line 110
    .local v4, "inflater":Lcom/koushikdutta/async/http/filter/InflaterInputFilter;
    invoke-virtual {v4, p0}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    .line 111
    move-object p0, v4

    .line 116
    .end local v4    # "inflater":Lcom/koushikdutta/async/http/filter/InflaterInputFilter;
    :cond_7
    :goto_2
    return-object p0
.end method

.method public static isKeepAlive(Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/Headers;)Z
    .locals 2
    .param p0, "protocol"    # Lcom/koushikdutta/async/http/Protocol;
    .param p1, "headers"    # Lcom/koushikdutta/async/http/Headers;

    .line 121
    const-string v0, "Connection"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "connection":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 123
    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    if-ne p0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 124
    :cond_1
    const-string v1, "keep-alive"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isKeepAlive(Ljava/lang/String;Lcom/koushikdutta/async/http/Headers;)Z
    .locals 3
    .param p0, "protocol"    # Ljava/lang/String;
    .param p1, "headers"    # Lcom/koushikdutta/async/http/Headers;

    .line 129
    const-string v0, "Connection"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "connection":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 131
    invoke-static {p0}, Lcom/koushikdutta/async/http/Protocol;->get(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;

    move-result-object v1

    sget-object v2, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 132
    :cond_1
    const-string v1, "keep-alive"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
