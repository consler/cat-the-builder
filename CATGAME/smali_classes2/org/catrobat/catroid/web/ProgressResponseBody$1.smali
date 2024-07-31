.class Lorg/catrobat/catroid/web/ProgressResponseBody$1;
.super Lokio/ForwardingSource;
.source "ProgressResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/web/ProgressResponseBody;->source(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastProgress:J

.field final synthetic this$0:Lorg/catrobat/catroid/web/ProgressResponseBody;

.field totalBytesRead:J


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/web/ProgressResponseBody;Lokio/Source;)V
    .locals 2
    .param p1, "this$0"    # Lorg/catrobat/catroid/web/ProgressResponseBody;
    .param p2, "x0"    # Lokio/Source;

    .line 71
    iput-object p1, p0, Lorg/catrobat/catroid/web/ProgressResponseBody$1;->this$0:Lorg/catrobat/catroid/web/ProgressResponseBody;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/catrobat/catroid/web/ProgressResponseBody$1;->totalBytesRead:J

    .line 73
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/catrobat/catroid/web/ProgressResponseBody$1;->lastProgress:J

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 8
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 78
    .local v0, "bytesRead":J
    iget-wide v2, p0, Lorg/catrobat/catroid/web/ProgressResponseBody$1;->totalBytesRead:J

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    move-wide v6, v0

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    :goto_0
    add-long/2addr v2, v6

    iput-wide v2, p0, Lorg/catrobat/catroid/web/ProgressResponseBody$1;->totalBytesRead:J

    .line 79
    const-wide/16 v6, 0x64

    mul-long/2addr v2, v6

    iget-object v6, p0, Lorg/catrobat/catroid/web/ProgressResponseBody$1;->this$0:Lorg/catrobat/catroid/web/ProgressResponseBody;

    invoke-virtual {v6}, Lorg/catrobat/catroid/web/ProgressResponseBody;->contentLength()J

    move-result-wide v6

    div-long/2addr v2, v6

    .line 80
    .local v2, "progress":J
    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 81
    .local v4, "endOfFile":Z
    :goto_1
    iget-wide v5, p0, Lorg/catrobat/catroid/web/ProgressResponseBody$1;->lastProgress:J

    cmp-long v5, v2, v5

    if-gtz v5, :cond_2

    if-eqz v4, :cond_3

    .line 82
    :cond_2
    iget-object v5, p0, Lorg/catrobat/catroid/web/ProgressResponseBody$1;->this$0:Lorg/catrobat/catroid/web/ProgressResponseBody;

    invoke-static {v5, v2, v3}, Lorg/catrobat/catroid/web/ProgressResponseBody;->access$000(Lorg/catrobat/catroid/web/ProgressResponseBody;J)V

    .line 83
    iput-wide v2, p0, Lorg/catrobat/catroid/web/ProgressResponseBody$1;->lastProgress:J

    .line 85
    :cond_3
    return-wide v0
.end method
