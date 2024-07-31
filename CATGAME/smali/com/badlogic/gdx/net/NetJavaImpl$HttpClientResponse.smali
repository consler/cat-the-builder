.class Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;
.super Ljava/lang/Object;
.source "NetJavaImpl.java"

# interfaces
.implements Lcom/badlogic/gdx/Net$HttpResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/net/NetJavaImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HttpClientResponse"
.end annotation


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private status:Lcom/badlogic/gdx/net/HttpStatus;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 3
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->connection:Ljava/net/HttpURLConnection;

    .line 57
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/net/HttpStatus;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/net/HttpStatus;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->status:Lcom/badlogic/gdx/net/HttpStatus;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/net/HttpStatus;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/net/HttpStatus;-><init>(I)V

    iput-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->status:Lcom/badlogic/gdx/net/HttpStatus;

    .line 61
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getResult()[B
    .locals 3

    .line 65
    invoke-direct {p0}, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 68
    .local v0, "input":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 69
    sget-object v1, Lcom/badlogic/gdx/utils/StreamUtils;->EMPTY_BYTES:[B

    return-object v1

    .line 73
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStreamToByteArray(Ljava/io/InputStream;I)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 73
    return-object v1

    .line 77
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Lcom/badlogic/gdx/utils/StreamUtils;->EMPTY_BYTES:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 75
    return-object v2

    .line 77
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public getResultAsStream()Ljava/io/InputStream;
    .locals 1

    .line 101
    invoke-direct {p0}, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getResultAsString()Ljava/lang/String;
    .locals 4

    .line 83
    invoke-direct {p0}, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 86
    .local v0, "input":Ljava/io/InputStream;
    const-string v1, ""

    if-nez v0, :cond_0

    .line 87
    return-object v1

    .line 91
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    const-string v3, "UTF8"

    invoke-static {v0, v2, v3}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStreamToString(Ljava/io/InputStream;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 91
    return-object v1

    .line 95
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 92
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/io/IOException;
    nop

    .line 95
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 93
    return-object v1

    .line 95
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public getStatus()Lcom/badlogic/gdx/net/HttpStatus;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->status:Lcom/badlogic/gdx/net/HttpStatus;

    return-object v0
.end method
