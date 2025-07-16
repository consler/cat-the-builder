.class public Lcom/koushikdutta/async/FilteredDataSink;
.super Lcom/koushikdutta/async/BufferedDataSink;
.source "FilteredDataSink.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/DataSink;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/BufferedDataSink;-><init>(Lcom/koushikdutta/async/DataSink;)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/FilteredDataSink;->setMaxBuffer(I)V

    return-void
.end method


# virtual methods
.method public filter(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 0

    return-object p1
.end method

.method public final write(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 2

    .line 17
    invoke-virtual {p0}, Lcom/koushikdutta/async/FilteredDataSink;->isBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/koushikdutta/async/FilteredDataSink;->getMaxBuffer()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    return-void

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/FilteredDataSink;->filter(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v0

    const/4 v1, 0x1

    .line 21
    invoke-super {p0, v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->write(Lcom/koushikdutta/async/ByteBufferList;Z)V

    if-eqz p1, :cond_1

    .line 23
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    :cond_1
    return-void
.end method
