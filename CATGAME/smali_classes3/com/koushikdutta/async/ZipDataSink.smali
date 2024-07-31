.class public Lcom/koushikdutta/async/ZipDataSink;
.super Lcom/koushikdutta/async/FilteredDataSink;
.source "ZipDataSink.java"


# instance fields
.field bout:Ljava/io/ByteArrayOutputStream;

.field zop:Ljava/util/zip/ZipOutputStream;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/DataSink;)V
    .locals 2
    .param p1, "sink"    # Lcom/koushikdutta/async/DataSink;

    .line 13
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/FilteredDataSink;-><init>(Lcom/koushikdutta/async/DataSink;)V

    .line 16
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/ZipDataSink;->bout:Ljava/io/ByteArrayOutputStream;

    .line 17
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    iget-object v1, p0, Lcom/koushikdutta/async/ZipDataSink;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/koushikdutta/async/ZipDataSink;->zop:Ljava/util/zip/ZipOutputStream;

    .line 14
    return-void
.end method


# virtual methods
.method public closeEntry()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/koushikdutta/async/ZipDataSink;->zop:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 25
    return-void
.end method

.method public end()V
    .locals 1

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/ZipDataSink;->zop:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    nop

    .line 42
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ZipDataSink;->setMaxBuffer(I)V

    .line 43
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ZipDataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 44
    invoke-super {p0}, Lcom/koushikdutta/async/FilteredDataSink;->end()V

    .line 45
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ZipDataSink;->report(Ljava/lang/Exception;)V

    .line 40
    return-void
.end method

.method public filter(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 2
    .param p1, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .line 50
    if-eqz p1, :cond_0

    .line 51
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 52
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remove()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 53
    .local v0, "b":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/koushikdutta/async/ZipDataSink;->zop:Ljava/util/zip/ZipOutputStream;

    invoke-static {v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->writeOutputStream(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V

    .line 54
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    .line 55
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 61
    :catch_0
    move-exception v0

    goto :goto_1

    .line 57
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    iget-object v1, p0, Lcom/koushikdutta/async/ZipDataSink;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/ByteBufferList;-><init>([B)V

    .line 58
    .local v0, "ret":Lcom/koushikdutta/async/ByteBufferList;
    iget-object v1, p0, Lcom/koushikdutta/async/ZipDataSink;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    nop

    .line 66
    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    .line 59
    :cond_1
    return-object v0

    .line 62
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ZipDataSink;->report(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    const/4 v1, 0x0

    .line 66
    if-eqz p1, :cond_2

    .line 67
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    .line 63
    :cond_2
    return-object v1

    .line 66
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz p1, :cond_3

    .line 67
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    :cond_3
    throw v0
.end method

.method public putNextEntry(Ljava/util/zip/ZipEntry;)V
    .locals 1
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/koushikdutta/async/ZipDataSink;->zop:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 21
    return-void
.end method

.method protected report(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 28
    invoke-virtual {p0}, Lcom/koushikdutta/async/ZipDataSink;->getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    .line 29
    .local v0, "closed":Lcom/koushikdutta/async/callback/CompletedCallback;
    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 31
    :cond_0
    return-void
.end method
