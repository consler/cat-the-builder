.class public Lcom/koushikdutta/async/FilteredDataSink;
.super Lcom/koushikdutta/async/BufferedDataSink;
.source "FilteredDataSink.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 3
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/DataSink;)V
    .locals 1
    .param p1, "sink"    # Lcom/koushikdutta/async/DataSink;

    .line 5
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/BufferedDataSink;-><init>(Lcom/koushikdutta/async/DataSink;)V

    .line 6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/FilteredDataSink;->setMaxBuffer(I)V

    .line 7
    return-void
.end method


# virtual methods
.method public filter(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 0
    .param p1, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .line 10
    return-object p1
.end method

.method public final write(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 2
    .param p1, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .line 17
    invoke-virtual {p0}, Lcom/koushikdutta/async/FilteredDataSink;->isBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/koushikdutta/async/FilteredDataSink;->getMaxBuffer()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/FilteredDataSink;->filter(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v0

    .line 20
    .local v0, "filtered":Lcom/koushikdutta/async/ByteBufferList;
    nop

    .line 21
    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->write(Lcom/koushikdutta/async/ByteBufferList;Z)V

    .line 22
    if-eqz p1, :cond_1

    .line 23
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    .line 24
    :cond_1
    return-void
.end method
