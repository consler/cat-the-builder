.class final Lcom/google/common/io/ByteStreams$LimitedInputStream;
.super Ljava/io/FilterInputStream;
.source "ByteStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LimitedInputStream"
.end annotation


# instance fields
.field private left:J

.field private mark:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;J)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "limit"    # J

    .line 693
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 690
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->mark:J

    .line 694
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "limit must be non-negative"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 696
    iput-wide p2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    .line 697
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 701
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "readLimit"    # I

    monitor-enter p0

    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 708
    iget-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    iput-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->mark:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    monitor-exit p0

    return-void

    .line 706
    .end local p0    # "this":Lcom/google/common/io/ByteStreams$LimitedInputStream;
    .end local p1    # "readLimit":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 713
    iget-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 714
    return v1

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 718
    .local v0, "result":I
    if-eq v0, v1, :cond_1

    .line 719
    iget-wide v1, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    .line 721
    :cond_1
    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    iget-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    .line 727
    return v3

    .line 730
    :cond_0
    int-to-long v4, p3

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 731
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 732
    .local v0, "result":I
    if-eq v0, v3, :cond_1

    .line 733
    iget-wide v1, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    .line 735
    :cond_1
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 740
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    iget-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->mark:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 748
    iget-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->mark:J

    iput-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    monitor-exit p0

    return-void

    .line 744
    .end local p0    # "this":Lcom/google/common/io/ByteStreams$LimitedInputStream;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 739
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 4
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 753
    iget-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 754
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 755
    .local v0, "skipped":J
    iget-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    .line 756
    return-wide v0
.end method
