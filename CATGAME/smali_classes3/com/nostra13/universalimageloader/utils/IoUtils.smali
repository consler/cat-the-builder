.class public final Lcom/nostra13/universalimageloader/utils/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;
    }
.end annotation


# static fields
.field public static final CONTINUE_LOADING_PERCENTAGE:I = 0x4b

.field public static final DEFAULT_BUFFER_SIZE:I = 0x8000

.field public static final DEFAULT_IMAGE_TOTAL_SIZE:I = 0x7d000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 114
    if-eqz p0, :cond_0

    .line 116
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 120
    :cond_0
    :goto_0
    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "listener"    # Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    const v0, 0x8000

    invoke-static {p0, p1, p2, v0}, Lcom/nostra13/universalimageloader/utils/IoUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;I)Z

    move-result v0

    return v0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;I)Z
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "listener"    # Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;
    .param p3, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "current":I
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 70
    .local v1, "total":I
    if-gtz v1, :cond_0

    .line 71
    const v1, 0x7d000

    .line 74
    :cond_0
    new-array v2, p3, [B

    .line 76
    .local v2, "bytes":[B
    invoke-static {p2, v0, v1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->shouldStopLoading(Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;II)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    return v4

    .line 77
    :cond_1
    invoke-virtual {p0, v2, v4, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v5, v3

    .local v5, "count":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    .line 78
    invoke-virtual {p1, v2, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 79
    add-int/2addr v0, v5

    .line 80
    invoke-static {p2, v0, v1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->shouldStopLoading(Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;II)Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    .line 82
    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 83
    const/4 v3, 0x1

    return v3
.end method

.method public static readAndCloseStream(Ljava/io/InputStream;)V
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;

    .line 104
    const v0, 0x8000

    new-array v1, v0, [B

    .line 106
    .local v1, "bytes":[B
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 107
    :catch_0
    move-exception v0

    .line 109
    :cond_0
    invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 110
    nop

    .line 111
    return-void
.end method

.method private static shouldStopLoading(Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;II)Z
    .locals 3
    .param p0, "listener"    # Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;
    .param p1, "current"    # I
    .param p2, "total"    # I

    .line 87
    if-eqz p0, :cond_0

    .line 88
    invoke-interface {p0, p1, p2}, Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;->onBytesCopied(II)Z

    move-result v0

    .line 89
    .local v0, "shouldContinue":Z
    if-nez v0, :cond_0

    .line 90
    mul-int/lit8 v1, p1, 0x64

    div-int/2addr v1, p2

    const/16 v2, 0x4b

    if-ge v1, v2, :cond_0

    .line 91
    const/4 v1, 0x1

    return v1

    .line 95
    .end local v0    # "shouldContinue":Z
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
