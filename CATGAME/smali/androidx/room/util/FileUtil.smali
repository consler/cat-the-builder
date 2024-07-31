.class public Landroidx/room/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static copy(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/FileChannel;)V
    .locals 9
    .param p0, "input"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "output"    # Ljava/nio/channels/FileChannel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 52
    const-wide/16 v5, 0x0

    const-wide v7, 0x7fffffffffffffffL

    move-object v3, p1

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    goto :goto_1

    .line 54
    :cond_0
    invoke-static {p0}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v0

    .line 55
    .local v0, "inputStream":Ljava/io/InputStream;
    invoke-static {p1}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v1

    .line 57
    .local v1, "outputStream":Ljava/io/OutputStream;
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 58
    .local v3, "buffer":[B
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "length":I
    if-lez v4, :cond_1

    .line 59
    invoke-virtual {v1, v3, v2, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 62
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .end local v3    # "buffer":[B
    .end local v5    # "length":I
    :cond_1
    :goto_1
    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-interface {p0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 65
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    .line 66
    nop

    .line 67
    return-void

    .line 64
    :catchall_0
    move-exception v0

    invoke-interface {p0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 65
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    .line 66
    throw v0
.end method
