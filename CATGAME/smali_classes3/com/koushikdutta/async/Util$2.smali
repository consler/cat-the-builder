.class final Lcom/koushikdutta/async/Util$2;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/WritableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/Util;->pump(Ljava/io/InputStream;JLcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field allocator:Lcom/koushikdutta/async/util/Allocator;

.field pending:Lcom/koushikdutta/async/ByteBufferList;

.field totalRead:I

.field final synthetic val$ds:Lcom/koushikdutta/async/DataSink;

.field final synthetic val$is:Ljava/io/InputStream;

.field final synthetic val$max:J

.field final synthetic val$wrapper:Lcom/koushikdutta/async/callback/CompletedCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/DataSink;Ljava/io/InputStream;JLcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/koushikdutta/async/Util$2;->val$ds:Lcom/koushikdutta/async/DataSink;

    iput-object p2, p0, Lcom/koushikdutta/async/Util$2;->val$is:Ljava/io/InputStream;

    iput-wide p3, p0, Lcom/koushikdutta/async/Util$2;->val$max:J

    iput-object p5, p0, Lcom/koushikdutta/async/Util$2;->val$wrapper:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 p1, 0x0

    iput p1, p0, Lcom/koushikdutta/async/Util$2;->totalRead:I

    .line 82
    new-instance p1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {p1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/Util$2;->pending:Lcom/koushikdutta/async/ByteBufferList;

    .line 83
    new-instance p1, Lcom/koushikdutta/async/util/Allocator;

    invoke-direct {p1}, Lcom/koushikdutta/async/util/Allocator;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/Util$2;->allocator:Lcom/koushikdutta/async/util/Allocator;

    return-void
.end method

.method private cleanup()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/koushikdutta/async/Util$2;->val$ds:Lcom/koushikdutta/async/DataSink;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 78
    iget-object v0, p0, Lcom/koushikdutta/async/Util$2;->val$ds:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 79
    iget-object v0, p0, Lcom/koushikdutta/async/Util$2;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    iget-object v1, p0, Lcom/koushikdutta/async/Util$2;->val$is:Ljava/io/InputStream;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 81
    return-void
.end method


# virtual methods
.method public onWriteable()V
    .locals 9

    .line 89
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/Util$2;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/koushikdutta/async/Util$2;->allocator:Lcom/koushikdutta/async/util/Allocator;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/Allocator;->allocate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    .local v0, "b":Ljava/nio/ByteBuffer;
    iget-wide v1, p0, Lcom/koushikdutta/async/Util$2;->val$max:J

    iget v3, p0, Lcom/koushikdutta/async/Util$2;->totalRead:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 93
    .local v1, "toRead":J
    iget-object v3, p0, Lcom/koushikdutta/async/Util$2;->val$is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    long-to-int v5, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 94
    .local v3, "read":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    iget v4, p0, Lcom/koushikdutta/async/Util$2;->totalRead:I

    int-to-long v4, v4

    iget-wide v7, p0, Lcom/koushikdutta/async/Util$2;->val$max:J

    cmp-long v4, v4, v7

    if-nez v4, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    iget-object v4, p0, Lcom/koushikdutta/async/Util$2;->allocator:Lcom/koushikdutta/async/util/Allocator;

    int-to-long v7, v3

    invoke-virtual {v4, v7, v8}, Lcom/koushikdutta/async/util/Allocator;->track(J)V

    .line 100
    iget v4, p0, Lcom/koushikdutta/async/Util$2;->totalRead:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/koushikdutta/async/Util$2;->totalRead:I

    .line 101
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 103
    iget-object v4, p0, Lcom/koushikdutta/async/Util$2;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    goto :goto_1

    .line 95
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/koushikdutta/async/Util$2;->cleanup()V

    .line 96
    iget-object v4, p0, Lcom/koushikdutta/async/Util$2;->val$wrapper:Lcom/koushikdutta/async/callback/CompletedCallback;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 97
    return-void

    .line 106
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    .end local v1    # "toRead":J
    .end local v3    # "read":I
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/koushikdutta/async/Util$2;->val$ds:Lcom/koushikdutta/async/DataSink;

    iget-object v1, p0, Lcom/koushikdutta/async/Util$2;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 108
    iget-object v0, p0, Lcom/koushikdutta/async/Util$2;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 113
    goto :goto_2

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/koushikdutta/async/Util$2;->cleanup()V

    .line 112
    iget-object v1, p0, Lcom/koushikdutta/async/Util$2;->val$wrapper:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
