.class public abstract Lcom/koushikdutta/async/http/body/StreamPart;
.super Lcom/koushikdutta/async/http/body/Part;
.source "StreamPart.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/List;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .line 13
    .local p4, "contentDisposition":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/NameValuePair;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/body/Part;-><init>(Ljava/lang/String;JLjava/util/List;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1
    .param p1, "sink"    # Lcom/koushikdutta/async/DataSink;
    .param p2, "callback"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/StreamPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 20
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0, p1, p2}, Lcom/koushikdutta/async/Util;->pump(Ljava/io/InputStream;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .end local v0    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p2, v0}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 25
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
