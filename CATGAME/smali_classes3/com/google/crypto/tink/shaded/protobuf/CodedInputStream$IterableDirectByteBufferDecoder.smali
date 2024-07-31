.class final Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;
.super Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IterableDirectByteBufferDecoder"
.end annotation


# instance fields
.field private bufferSizeAfterCurrentLimit:I

.field private currentAddress:J

.field private currentByteBuffer:Ljava/nio/ByteBuffer;

.field private currentByteBufferLimit:J

.field private currentByteBufferPos:J

.field private currentByteBufferStartPos:J

.field private currentLimit:I

.field private enableAliasing:Z

.field private immutable:Z

.field private input:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private lastTag:I

.field private startOffset:I

.field private totalBufferSize:I

.field private totalBytesRead:I


# direct methods
.method private constructor <init>(Ljava/lang/Iterable;IZ)V
    .locals 2
    .param p2, "size"    # I
    .param p3, "immutableFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;IZ)V"
        }
    .end annotation

    .line 3142
    .local p1, "inputBufs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/nio/ByteBuffer;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;-><init>(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$1;)V

    .line 3115
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    .line 3143
    iput p2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    .line 3144
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->input:Ljava/lang/Iterable;

    .line 3145
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->iterator:Ljava/util/Iterator;

    .line 3146
    iput-boolean p3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->immutable:Z

    .line 3147
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->startOffset:I

    .line 3148
    if-nez p2, :cond_0

    .line 3149
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    .line 3150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3151
    iput-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    .line 3152
    iput-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    .line 3153
    iput-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    goto :goto_0

    .line 3155
    :cond_0
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->tryGetNextByteBuffer()V

    .line 3157
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Iterable;IZLcom/google/crypto/tink/shaded/protobuf/CodedInputStream$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Iterable;
    .param p2, "x1"    # I
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$1;

    .line 3093
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;-><init>(Ljava/lang/Iterable;IZ)V

    return-void
.end method

.method private currentRemaining()J
    .locals 4

    .line 3906
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getNextByteBuffer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3161
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3164
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->tryGetNextByteBuffer()V

    .line 3165
    return-void

    .line 3162
    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private readRawBytesTo([BII)V
    .locals 9
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3829
    if-ltz p3, :cond_2

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_2

    .line 3830
    move v0, p3

    .line 3831
    .local v0, "l":I
    :goto_0
    if-lez v0, :cond_1

    .line 3832
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 3833
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getNextByteBuffer()V

    .line 3835
    :cond_0
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3836
    .local v1, "bytesToCopy":I
    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-int v4, p3, v0

    add-int/2addr v4, p2

    int-to-long v5, v4

    int-to-long v7, v1

    move-object v4, p1

    invoke-static/range {v2 .. v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 3837
    sub-int/2addr v0, v1

    .line 3838
    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3839
    .end local v1    # "bytesToCopy":I
    goto :goto_0

    .line 3840
    :cond_1
    return-void

    .line 3843
    .end local v0    # "l":I
    :cond_2
    if-gtz p3, :cond_4

    .line 3844
    if-nez p3, :cond_3

    .line 3845
    return-void

    .line 3847
    :cond_3
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3850
    :cond_4
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 3

    .line 3748
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->bufferSizeAfterCurrentLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    .line 3749
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->startOffset:I

    sub-int v1, v0, v1

    .line 3750
    .local v1, "bufferEnd":I
    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    if-le v1, v2, :cond_0

    .line 3752
    sub-int v2, v1, v2

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->bufferSizeAfterCurrentLimit:I

    .line 3753
    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    goto :goto_0

    .line 3755
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->bufferSizeAfterCurrentLimit:I

    .line 3757
    :goto_0
    return-void
.end method

.method private remaining()I
    .locals 4

    .line 3896
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private skipRawVarint()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3882
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 3883
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_0

    .line 3884
    return-void

    .line 3882
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3887
    .end local v0    # "i":I
    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private slice(II)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "begin"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3910
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 3911
    .local v0, "prevPos":I
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 3913
    .local v1, "prevLimit":I
    :try_start_0
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3914
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 3915
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3919
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3920
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 3915
    return-object v2

    .line 3919
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 3916
    :catch_0
    move-exception v2

    .line 3917
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local v0    # "prevPos":I
    .end local v1    # "prevLimit":I
    .end local p1    # "begin":I
    .end local p2    # "end":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3919
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "prevPos":I
    .restart local v1    # "prevLimit":I
    .restart local p1    # "begin":I
    .restart local p2    # "end":I
    :goto_0
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3920
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 3921
    throw v2
.end method

.method private tryGetNextByteBuffer()V
    .locals 6

    .line 3168
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    .line 3169
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    iget-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    .line 3170
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3171
    iput-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    .line 3172
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    .line 3173
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    .line 3174
    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3175
    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    .line 3176
    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    .line 3177
    return-void
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3197
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->lastTag:I

    if-ne v0, p1, :cond_0

    .line 3200
    return-void

    .line 3198
    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public enableAliasing(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 3722
    iput-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->enableAliasing:Z

    .line 3723
    return-void
.end method

.method public getBytesUntilLimit()I
    .locals 2

    .line 3767
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 3768
    const/4 v0, -0x1

    return v0

    .line 3771
    :cond_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getTotalBytesRead()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLastTag()I
    .locals 1

    .line 3204
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->lastTag:I

    return v0
.end method

.method public getTotalBytesRead()I
    .locals 4

    .line 3781
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->startOffset:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isAtEnd()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3776
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public popLimit(I)V
    .locals 0
    .param p1, "oldLimit"    # I

    .line 3761
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    .line 3762
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recomputeBufferSizeAfterLimit()V

    .line 3763
    return-void
.end method

.method public pushLimit(I)I
    .locals 2
    .param p1, "byteLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3732
    if-ltz p1, :cond_1

    .line 3735
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getTotalBytesRead()I

    move-result v0

    add-int/2addr p1, v0

    .line 3736
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    .line 3737
    .local v0, "oldLimit":I
    if-gt p1, v0, :cond_0

    .line 3740
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentLimit:I

    .line 3742
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recomputeBufferSizeAfterLimit()V

    .line 3744
    return v0

    .line 3738
    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 3733
    .end local v0    # "oldLimit":I
    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readBool()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3344
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint64()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readByteArray()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3502
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public readByteBuffer()Ljava/nio/ByteBuffer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3507
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    .line 3508
    .local v0, "size":I
    if-lez v0, :cond_1

    int-to-long v1, v0

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 3509
    iget-boolean v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->immutable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->enableAliasing:Z

    if-eqz v1, :cond_0

    .line 3510
    iget-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3511
    iget-wide v3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    sub-long v5, v1, v3

    int-to-long v7, v0

    sub-long/2addr v5, v7

    long-to-int v5, v5

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-direct {p0, v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->slice(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 3515
    :cond_0
    new-array v1, v0, [B

    .line 3516
    .local v1, "bytes":[B
    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    const-wide/16 v5, 0x0

    int-to-long v7, v0

    move-object v4, v1

    invoke-static/range {v2 .. v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 3517
    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3518
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2

    .line 3520
    .end local v1    # "bytes":[B
    :cond_1
    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 3521
    new-array v1, v0, [B

    .line 3522
    .local v1, "temp":[B
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawBytesTo([BII)V

    .line 3523
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2

    .line 3526
    .end local v1    # "temp":[B
    :cond_2
    if-nez v0, :cond_3

    .line 3527
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v1

    .line 3529
    :cond_3
    if-gez v0, :cond_4

    .line 3530
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 3532
    :cond_4
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public readBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3471
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    .line 3472
    .local v0, "size":I
    if-lez v0, :cond_1

    int-to-long v1, v0

    iget-wide v3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v5, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 3473
    iget-boolean v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->immutable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->enableAliasing:Z

    if-eqz v1, :cond_0

    .line 3474
    iget-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentAddress:J

    sub-long/2addr v5, v1

    long-to-int v1, v5

    .line 3475
    .local v1, "idx":I
    add-int v2, v1, v0

    invoke-direct {p0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->slice(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    .line 3476
    .local v2, "result":Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    iget-wide v3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3477
    return-object v2

    .line 3480
    .end local v1    # "idx":I
    .end local v2    # "result":Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    :cond_0
    new-array v1, v0, [B

    .line 3481
    .local v1, "bytes":[B
    iget-wide v5, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    const-wide/16 v8, 0x0

    int-to-long v10, v0

    move-object v7, v1

    invoke-static/range {v5 .. v11}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 3482
    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3483
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->wrap([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    return-object v2

    .line 3485
    .end local v1    # "bytes":[B
    :cond_1
    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 3486
    new-array v1, v0, [B

    .line 3487
    .local v1, "temp":[B
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawBytesTo([BII)V

    .line 3488
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->wrap([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    return-object v2

    .line 3491
    .end local v1    # "temp":[B
    :cond_2
    if-nez v0, :cond_3

    .line 3492
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v1

    .line 3494
    :cond_3
    if-gez v0, :cond_4

    .line 3495
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 3497
    :cond_4
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3309
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3542
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3339
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3334
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3314
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(ILcom/google/crypto/tink/shaded/protobuf/Parser;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p3, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
            ">(I",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "TT;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3419
    .local p2, "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<TT;>;"
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionLimit:I

    if-ge v0, v1, :cond_0

    .line 3422
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3423
    invoke-interface {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/Parser;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 3424
    .local v0, "result":Lcom/google/crypto/tink/shaded/protobuf/MessageLite;, "TT;"
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkLastTagWas(I)V

    .line 3425
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3426
    return-object v0

    .line 3420
    .end local v0    # "result":Lcom/google/crypto/tink/shaded/protobuf/MessageLite;, "TT;"
    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readGroup(ILcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "builder"    # Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .param p3, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3403
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionLimit:I

    if-ge v0, v1, :cond_0

    .line 3406
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3407
    invoke-interface {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;

    .line 3408
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkLastTagWas(I)V

    .line 3409
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3410
    return-void

    .line 3404
    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3329
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3324
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Lcom/google/crypto/tink/shaded/protobuf/Parser;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 4
    .param p2, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
            ">(",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "TT;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3456
    .local p1, "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<TT;>;"
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    .line 3457
    .local v0, "length":I
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionLimit:I

    if-ge v1, v2, :cond_0

    .line 3460
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->pushLimit(I)I

    move-result v1

    .line 3461
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3462
    invoke-interface {p1, p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/Parser;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 3463
    .local v2, "result":Lcom/google/crypto/tink/shaded/protobuf/MessageLite;, "TT;"
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkLastTagWas(I)V

    .line 3464
    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3465
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->popLimit(I)V

    .line 3466
    return-object v2

    .line 3458
    .end local v1    # "oldLimit":I
    .end local v2    # "result":Lcom/google/crypto/tink/shaded/protobuf/MessageLite;, "TT;"
    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public readMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .param p1, "builder"    # Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .param p2, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3440
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    .line 3441
    .local v0, "length":I
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionLimit:I

    if-ge v1, v2, :cond_0

    .line 3444
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->pushLimit(I)I

    move-result v1

    .line 3445
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3446
    invoke-interface {p1, p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;

    .line 3447
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkLastTagWas(I)V

    .line 3448
    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->recursionDepth:I

    .line 3449
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->popLimit(I)V

    .line 3450
    return-void

    .line 3442
    .end local v1    # "oldLimit":I
    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public readRawByte()B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3787
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3788
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getNextByteBuffer()V

    .line 3790
    :cond_0
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    return v0
.end method

.method public readRawBytes(I)[B
    .locals 8
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3795
    if-ltz p1, :cond_0

    int-to-long v0, p1

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 3796
    new-array v0, p1, [B

    .line 3797
    .local v0, "bytes":[B
    iget-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    const-wide/16 v4, 0x0

    int-to-long v6, p1

    move-object v3, v0

    invoke-static/range {v1 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 3798
    iget-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3799
    return-object v0

    .line 3801
    .end local v0    # "bytes":[B
    :cond_0
    if-ltz p1, :cond_1

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 3802
    new-array v0, p1, [B

    .line 3803
    .restart local v0    # "bytes":[B
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawBytesTo([BII)V

    .line 3804
    return-object v0

    .line 3807
    .end local v0    # "bytes":[B
    :cond_1
    if-gtz p1, :cond_3

    .line 3808
    if-nez p1, :cond_2

    .line 3809
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 3811
    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3815
    :cond_3
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readRawLittleEndian32()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3682
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 3683
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3684
    .local v0, "tempPos":J
    iget-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3685
    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    .line 3686
    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const-wide/16 v3, 0x2

    add-long/2addr v3, v0

    .line 3687
    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const-wide/16 v3, 0x3

    add-long/2addr v3, v0

    .line 3688
    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    .line 3685
    return v2

    .line 3690
    .end local v0    # "tempPos":J
    :cond_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 3691
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 3692
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 3693
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 3690
    return v0
.end method

.method public readRawLittleEndian64()J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3698
    move-object v0, p0

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v1

    const-wide/16 v3, 0x8

    cmp-long v1, v1, v3

    const/16 v2, 0x38

    const/16 v7, 0x20

    const/16 v8, 0x18

    const/16 v9, 0x10

    const/16 v10, 0x8

    const-wide/16 v11, 0xff

    if-ltz v1, :cond_0

    .line 3699
    iget-wide v13, v0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3700
    .local v13, "tempPos":J
    iget-wide v5, v0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v5, v3

    iput-wide v5, v0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3701
    invoke-static {v13, v14}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v11

    const-wide/16 v5, 0x1

    add-long/2addr v5, v13

    .line 3702
    invoke-static {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v11

    shl-long/2addr v5, v10

    or-long/2addr v3, v5

    const-wide/16 v5, 0x2

    add-long/2addr v5, v13

    .line 3703
    invoke-static {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v11

    shl-long/2addr v5, v9

    or-long/2addr v3, v5

    const-wide/16 v5, 0x3

    add-long/2addr v5, v13

    .line 3704
    invoke-static {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v11

    shl-long/2addr v5, v8

    or-long/2addr v3, v5

    const-wide/16 v5, 0x4

    add-long/2addr v5, v13

    .line 3705
    invoke-static {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v11

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const-wide/16 v5, 0x5

    add-long/2addr v5, v13

    .line 3706
    invoke-static {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v11

    const/16 v7, 0x28

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const-wide/16 v5, 0x6

    add-long/2addr v5, v13

    .line 3707
    invoke-static {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v11

    const/16 v1, 0x30

    shl-long/2addr v5, v1

    or-long/2addr v3, v5

    const-wide/16 v5, 0x7

    add-long/2addr v5, v13

    .line 3708
    invoke-static {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    int-to-long v5, v1

    and-long/2addr v5, v11

    shl-long v1, v5, v2

    or-long/2addr v1, v3

    .line 3701
    return-wide v1

    .line 3710
    .end local v13    # "tempPos":J
    :cond_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v11

    .line 3711
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v11

    shl-long/2addr v5, v10

    or-long/2addr v3, v5

    .line 3712
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v11

    shl-long/2addr v5, v9

    or-long/2addr v3, v5

    .line 3713
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v11

    shl-long/2addr v5, v8

    or-long/2addr v3, v5

    .line 3714
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v11

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    .line 3715
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v11

    const/16 v7, 0x28

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    .line 3716
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v11

    const/16 v1, 0x30

    shl-long/2addr v5, v1

    or-long/2addr v3, v5

    .line 3717
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v1

    int-to-long v5, v1

    and-long/2addr v5, v11

    shl-long v1, v5, v2

    or-long/2addr v1, v3

    .line 3710
    return-wide v1
.end method

.method public readRawVarint32()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3569
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3571
    .local v0, "tempPos":J
    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 3572
    goto/16 :goto_0

    .line 3576
    :cond_0
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .end local v0    # "tempPos":J
    .local v4, "tempPos":J
    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    move v1, v0

    .local v1, "x":I
    if-ltz v0, :cond_1

    .line 3577
    iget-wide v6, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3578
    return v1

    .line 3579
    :cond_1
    iget-wide v6, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v8, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xa

    cmp-long v0, v6, v8

    if-gez v0, :cond_2

    .line 3580
    goto/16 :goto_0

    .line 3581
    :cond_2
    add-long v6, v4, v2

    .end local v4    # "tempPos":J
    .local v6, "tempPos":J
    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x7

    xor-int/2addr v0, v1

    move v1, v0

    if-gez v0, :cond_3

    .line 3582
    xor-int/lit8 v0, v1, -0x80

    .end local v1    # "x":I
    .local v0, "x":I
    goto/16 :goto_1

    .line 3583
    .end local v0    # "x":I
    .restart local v1    # "x":I
    :cond_3
    add-long v4, v6, v2

    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v1

    move v1, v0

    if-ltz v0, :cond_4

    .line 3584
    xor-int/lit16 v0, v1, 0x3f80

    move-wide v6, v4

    .end local v1    # "x":I
    .restart local v0    # "x":I
    goto/16 :goto_1

    .line 3585
    .end local v0    # "x":I
    .restart local v1    # "x":I
    :cond_4
    add-long v6, v4, v2

    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x15

    xor-int/2addr v0, v1

    move v1, v0

    if-gez v0, :cond_5

    .line 3586
    const v0, -0x1fc080

    xor-int/2addr v0, v1

    .end local v1    # "x":I
    .restart local v0    # "x":I
    goto :goto_1

    .line 3588
    .end local v0    # "x":I
    .restart local v1    # "x":I
    :cond_5
    add-long v4, v6, v2

    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    .line 3589
    .local v0, "y":I
    shl-int/lit8 v6, v0, 0x1c

    xor-int/2addr v1, v6

    .line 3590
    const v6, 0xfe03f80

    xor-int/2addr v1, v6

    .line 3591
    if-gez v0, :cond_b

    add-long v6, v4, v2

    .line 3592
    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    if-gez v4, :cond_a

    add-long v4, v6, v2

    .line 3593
    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    if-gez v6, :cond_9

    add-long v6, v4, v2

    .line 3594
    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    if-gez v4, :cond_8

    add-long v4, v6, v2

    .line 3595
    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    if-gez v6, :cond_7

    add-long v6, v4, v2

    .line 3596
    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    if-gez v2, :cond_6

    .line 3597
    nop

    .line 3603
    .end local v0    # "y":I
    .end local v1    # "x":I
    .end local v6    # "tempPos":J
    :goto_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 3596
    .restart local v0    # "y":I
    .restart local v1    # "x":I
    .restart local v6    # "tempPos":J
    :cond_6
    move v0, v1

    goto :goto_1

    .line 3595
    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    :cond_7
    move v0, v1

    move-wide v6, v4

    goto :goto_1

    .line 3594
    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    :cond_8
    move v0, v1

    goto :goto_1

    .line 3593
    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    :cond_9
    move v0, v1

    move-wide v6, v4

    goto :goto_1

    .line 3592
    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    :cond_a
    move v0, v1

    goto :goto_1

    .line 3591
    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    :cond_b
    move v0, v1

    move-wide v6, v4

    .line 3600
    .end local v1    # "x":I
    .end local v4    # "tempPos":J
    .local v0, "x":I
    .restart local v6    # "tempPos":J
    :goto_1
    iput-wide v6, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3601
    return v0
.end method

.method public readRawVarint64()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3610
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3612
    .local v0, "tempPos":J
    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 3613
    goto/16 :goto_0

    .line 3618
    :cond_0
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .end local v0    # "tempPos":J
    .local v4, "tempPos":J
    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    move v1, v0

    .local v1, "y":I
    if-ltz v0, :cond_1

    .line 3619
    iget-wide v6, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3620
    int-to-long v2, v1

    return-wide v2

    .line 3621
    :cond_1
    iget-wide v6, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v8, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xa

    cmp-long v0, v6, v8

    if-gez v0, :cond_2

    .line 3622
    goto/16 :goto_0

    .line 3623
    :cond_2
    add-long v6, v4, v2

    .end local v4    # "tempPos":J
    .local v6, "tempPos":J
    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x7

    xor-int/2addr v0, v1

    move v1, v0

    if-gez v0, :cond_3

    .line 3624
    xor-int/lit8 v0, v1, -0x80

    int-to-long v2, v0

    .local v2, "x":J
    goto/16 :goto_1

    .line 3625
    .end local v2    # "x":J
    :cond_3
    add-long v4, v6, v2

    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v1

    move v1, v0

    if-ltz v0, :cond_4

    .line 3626
    xor-int/lit16 v0, v1, 0x3f80

    int-to-long v2, v0

    move-wide v6, v4

    .restart local v2    # "x":J
    goto/16 :goto_1

    .line 3627
    .end local v2    # "x":J
    :cond_4
    add-long v6, v4, v2

    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x15

    xor-int/2addr v0, v1

    move v1, v0

    if-gez v0, :cond_5

    .line 3628
    const v0, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v2, v0

    .restart local v2    # "x":J
    goto/16 :goto_1

    .line 3629
    .end local v2    # "x":J
    :cond_5
    int-to-long v4, v1

    add-long v8, v6, v2

    .end local v6    # "tempPos":J
    .local v8, "tempPos":J
    invoke-static {v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v6, v0

    const/16 v0, 0x1c

    shl-long/2addr v6, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    .local v6, "x":J
    const-wide/16 v10, 0x0

    cmp-long v0, v4, v10

    if-ltz v0, :cond_6

    .line 3630
    const-wide/32 v2, 0xfe03f80

    xor-long/2addr v2, v6

    move-wide v6, v8

    .end local v6    # "x":J
    .restart local v2    # "x":J
    goto/16 :goto_1

    .line 3631
    .end local v2    # "x":J
    .restart local v6    # "x":J
    :cond_6
    add-long v4, v8, v2

    .end local v8    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v8, v0

    const/16 v0, 0x23

    shl-long/2addr v8, v0

    xor-long/2addr v8, v6

    move-wide v6, v8

    cmp-long v0, v8, v10

    if-gez v0, :cond_7

    .line 3632
    const-wide v2, -0x7f01fc080L

    xor-long/2addr v2, v6

    move-wide v6, v4

    .end local v6    # "x":J
    .restart local v2    # "x":J
    goto :goto_1

    .line 3633
    .end local v2    # "x":J
    .restart local v6    # "x":J
    :cond_7
    add-long v8, v4, v2

    .end local v4    # "tempPos":J
    .restart local v8    # "tempPos":J
    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v4, v0

    const/16 v0, 0x2a

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v0, v4, v10

    if-ltz v0, :cond_8

    .line 3634
    const-wide v2, 0x3f80fe03f80L

    xor-long/2addr v2, v6

    move-wide v6, v8

    .end local v6    # "x":J
    .restart local v2    # "x":J
    goto :goto_1

    .line 3635
    .end local v2    # "x":J
    .restart local v6    # "x":J
    :cond_8
    add-long v4, v8, v2

    .end local v8    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v8, v0

    const/16 v0, 0x31

    shl-long/2addr v8, v0

    xor-long/2addr v8, v6

    move-wide v6, v8

    cmp-long v0, v8, v10

    if-gez v0, :cond_9

    .line 3636
    const-wide v2, -0x1fc07f01fc080L

    xor-long/2addr v2, v6

    move-wide v6, v4

    .end local v6    # "x":J
    .restart local v2    # "x":J
    goto :goto_1

    .line 3645
    .end local v2    # "x":J
    .restart local v6    # "x":J
    :cond_9
    add-long v8, v4, v2

    .end local v4    # "tempPos":J
    .restart local v8    # "tempPos":J
    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    .line 3646
    .end local v6    # "x":J
    .local v4, "x":J
    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v4, v6

    .line 3655
    cmp-long v0, v4, v10

    if-gez v0, :cond_b

    .line 3656
    add-long v6, v8, v2

    .end local v8    # "tempPos":J
    .local v6, "tempPos":J
    invoke-static {v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v2, v10

    if-gez v0, :cond_a

    .line 3657
    nop

    .line 3664
    .end local v1    # "y":I
    .end local v4    # "x":J
    .end local v6    # "tempPos":J
    :goto_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    .line 3656
    .restart local v1    # "y":I
    .restart local v4    # "x":J
    .restart local v6    # "tempPos":J
    :cond_a
    move-wide v2, v4

    goto :goto_1

    .line 3655
    .end local v6    # "tempPos":J
    .restart local v8    # "tempPos":J
    :cond_b
    move-wide v2, v4

    move-wide v6, v8

    .line 3661
    .end local v4    # "x":J
    .end local v8    # "tempPos":J
    .restart local v2    # "x":J
    .restart local v6    # "tempPos":J
    :goto_1
    iput-wide v6, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3662
    return-wide v2
.end method

.method readRawVarint64SlowPath()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3669
    const-wide/16 v0, 0x0

    .line 3670
    .local v0, "result":J
    const/4 v2, 0x0

    .local v2, "shift":I
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 3671
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawByte()B

    move-result v3

    .line 3672
    .local v3, "b":B
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 3673
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_0

    .line 3674
    return-wide v0

    .line 3670
    .end local v3    # "b":B
    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 3677
    .end local v2    # "shift":I
    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method public readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3547
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3552
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3557
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3562
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3349
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    .line 3350
    .local v0, "size":I
    if-lez v0, :cond_0

    int-to-long v1, v0

    iget-wide v3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v5, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 3351
    new-array v1, v0, [B

    .line 3352
    .local v1, "bytes":[B
    const-wide/16 v8, 0x0

    int-to-long v10, v0

    move-object v7, v1

    invoke-static/range {v5 .. v11}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 3353
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 3354
    .local v2, "result":Ljava/lang/String;
    iget-wide v3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3355
    return-object v2

    .line 3356
    .end local v1    # "bytes":[B
    .end local v2    # "result":Ljava/lang/String;
    :cond_0
    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 3358
    new-array v1, v0, [B

    .line 3359
    .restart local v1    # "bytes":[B
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawBytesTo([BII)V

    .line 3360
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 3361
    .restart local v2    # "result":Ljava/lang/String;
    return-object v2

    .line 3364
    .end local v1    # "bytes":[B
    .end local v2    # "result":Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    .line 3365
    const-string v1, ""

    return-object v1

    .line 3367
    :cond_2
    if-gez v0, :cond_3

    .line 3368
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 3370
    :cond_3
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3375
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    .line 3376
    .local v0, "size":I
    if-lez v0, :cond_0

    int-to-long v1, v0

    iget-wide v3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferLimit:J

    iget-wide v5, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 3377
    iget-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    sub-long/2addr v5, v1

    long-to-int v1, v5

    .line 3378
    .local v1, "bufferPos":I
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v2, v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/Utf8;->decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v2

    .line 3379
    .local v2, "result":Ljava/lang/String;
    iget-wide v3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3380
    return-object v2

    .line 3382
    .end local v1    # "bufferPos":I
    .end local v2    # "result":Ljava/lang/String;
    :cond_0
    if-ltz v0, :cond_1

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 3383
    new-array v1, v0, [B

    .line 3384
    .local v1, "bytes":[B
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawBytesTo([BII)V

    .line 3385
    invoke-static {v1, v2, v0}, Lcom/google/crypto/tink/shaded/protobuf/Utf8;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3388
    .end local v1    # "bytes":[B
    :cond_1
    if-nez v0, :cond_2

    .line 3389
    const-string v1, ""

    return-object v1

    .line 3391
    :cond_2
    if-gtz v0, :cond_3

    .line 3392
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 3394
    :cond_3
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public readTag()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3181
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3182
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->lastTag:I

    .line 3183
    return v0

    .line 3186
    :cond_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->lastTag:I

    .line 3187
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3192
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->lastTag:I

    return v0

    .line 3190
    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3537
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3319
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnknownGroup(ILcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "builder"    # Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3433
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readGroup(ILcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    .line 3434
    return-void
.end method

.method public resetSizeCounter()V
    .locals 4

    .line 3727
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->startOffset:I

    .line 3728
    return-void
.end method

.method public skipField(I)Z
    .locals 4
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3209
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 3227
    invoke-virtual {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipRawBytes(I)V

    .line 3228
    return v1

    .line 3230
    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 3225
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 3220
    :cond_2
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipMessage()V

    .line 3221
    nop

    .line 3222
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    invoke-static {v0, v3}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    .line 3221
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkLastTagWas(I)V

    .line 3223
    return v1

    .line 3217
    :cond_3
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipRawBytes(I)V

    .line 3218
    return v1

    .line 3214
    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipRawBytes(I)V

    .line 3215
    return v1

    .line 3211
    :cond_5
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipRawVarint()V

    .line 3212
    return v1
.end method

.method public skipField(ILcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;)Z
    .locals 4
    .param p1, "tag"    # I
    .param p2, "output"    # Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3236
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 3275
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian32()I

    move-result v0

    .line 3276
    .local v0, "value":I
    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 3277
    invoke-virtual {p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 3278
    return v1

    .line 3281
    .end local v0    # "value":I
    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 3271
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 3260
    :cond_2
    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 3261
    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipMessage(Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;)V

    .line 3262
    nop

    .line 3264
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 3263
    invoke-static {v0, v3}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    .line 3265
    .local v0, "endtag":I
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->checkLastTagWas(I)V

    .line 3266
    invoke-virtual {p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 3267
    return v1

    .line 3253
    .end local v0    # "endtag":I
    :cond_3
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    .line 3254
    .local v0, "value":Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 3255
    invoke-virtual {p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 3256
    return v1

    .line 3246
    .end local v0    # "value":Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    :cond_4
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readRawLittleEndian64()J

    move-result-wide v2

    .line 3247
    .local v2, "value":J
    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 3248
    invoke-virtual {p2, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 3249
    return v1

    .line 3239
    .end local v2    # "value":J
    :cond_5
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readInt64()J

    move-result-wide v2

    .line 3240
    .restart local v2    # "value":J
    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 3241
    invoke-virtual {p2, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 3242
    return v1
.end method

.method public skipMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3288
    :goto_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readTag()I

    move-result v0

    .line 3289
    .local v0, "tag":I
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3292
    .end local v0    # "tag":I
    :cond_0
    goto :goto_0

    .line 3290
    .restart local v0    # "tag":I
    :cond_1
    :goto_1
    return-void
.end method

.method public skipMessage(Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3298
    :goto_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->readTag()I

    move-result v0

    .line 3299
    .local v0, "tag":I
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->skipField(ILcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3302
    .end local v0    # "tag":I
    :cond_0
    goto :goto_0

    .line 3300
    .restart local v0    # "tag":I
    :cond_1
    :goto_1
    return-void
.end method

.method public skipRawBytes(I)V
    .locals 6
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3855
    if-ltz p1, :cond_2

    int-to-long v0, p1

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBufferSize:I

    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->totalBytesRead:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferStartPos:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 3862
    move v0, p1

    .line 3863
    .local v0, "l":I
    :goto_0
    if-lez v0, :cond_1

    .line 3864
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 3865
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->getNextByteBuffer()V

    .line 3867
    :cond_0
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentRemaining()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3868
    .local v1, "rl":I
    sub-int/2addr v0, v1

    .line 3869
    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->currentByteBufferPos:J

    .line 3870
    .end local v1    # "rl":I
    goto :goto_0

    .line 3871
    :cond_1
    return-void

    .line 3874
    .end local v0    # "l":I
    :cond_2
    if-gez p1, :cond_3

    .line 3875
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3877
    :cond_3
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method
