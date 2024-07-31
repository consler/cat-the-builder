.class public Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "ChunkedInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mChunkLength:I

.field private mChunkLengthRemaining:I

.field private mState:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

.field pending:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    .line 10
    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLengthRemaining:I

    .line 11
    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK_LEN:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 46
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->pending:Lcom/koushikdutta/async/ByteBufferList;

    return-void
.end method

.method private checkByte(CC)Z
    .locals 3
    .param p1, "b"    # C
    .param p2, "value"    # C

    .line 24
    if-eq p1, p2, :cond_0

    .line 25
    new-instance v0, Lcom/koushikdutta/async/http/filter/ChunkedDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " was expected, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/filter/ChunkedDataException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->report(Ljava/lang/Exception;)V

    .line 26
    const/4 v0, 0x0

    return v0

    .line 28
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private checkCR(C)Z
    .locals 1
    .param p1, "b"    # C

    .line 36
    const/16 v0, 0xd

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->checkByte(CC)Z

    move-result v0

    return v0
.end method

.method private checkLF(C)Z
    .locals 1
    .param p1, "b"    # C

    .line 32
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->checkByte(CC)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 4
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .line 50
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-lez v0, :cond_a

    .line 51
    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$1;->$SwitchMap$com$koushikdutta$async$http$filter$ChunkedInputFilter$State:[I

    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 108
    :pswitch_0
    nop

    .line 111
    return-void

    .line 95
    :pswitch_1
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getByteChar()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->checkLF(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    return-void

    .line 97
    :cond_0
    iget v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    if-lez v0, :cond_1

    .line 98
    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK_LEN:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    goto :goto_1

    .line 102
    :cond_1
    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->COMPLETE:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->report(Ljava/lang/Exception;)V

    .line 105
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    .line 106
    goto/16 :goto_3

    .line 90
    :pswitch_2
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getByteChar()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->checkCR(C)Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    return-void

    .line 92
    :cond_2
    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK_CRLF:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 93
    goto/16 :goto_3

    .line 78
    :pswitch_3
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    .line 79
    .local v0, "remaining":I
    iget v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLengthRemaining:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 80
    .local v1, "reading":I
    iget v2, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLengthRemaining:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLengthRemaining:I

    .line 81
    if-nez v2, :cond_3

    .line 82
    sget-object v2, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK_CR:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v2, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 84
    :cond_3
    if-nez v1, :cond_4

    .line 85
    goto/16 :goto_3

    .line 86
    :cond_4
    iget-object v2, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v2, v1}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 87
    iget-object v2, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p0, v2}, Lcom/koushikdutta/async/Util;->emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 88
    goto/16 :goto_3

    .line 73
    .end local v0    # "remaining":I
    .end local v1    # "reading":I
    :pswitch_4
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getByteChar()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->checkLF(C)Z

    move-result v0

    if-nez v0, :cond_5

    .line 74
    return-void

    .line 75
    :cond_5
    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 76
    goto :goto_3

    .line 53
    :pswitch_5
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getByteChar()C

    move-result v0

    .line 54
    .local v0, "c":C
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 55
    sget-object v1, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK_LEN_CR:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    goto :goto_2

    .line 58
    :cond_6
    iget v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    .line 59
    const/16 v2, 0x61

    if-lt v0, v2, :cond_7

    const/16 v2, 0x66

    if-gt v0, v2, :cond_7

    .line 60
    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    iput v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    goto :goto_2

    .line 61
    :cond_7
    const/16 v1, 0x30

    if-lt v0, v1, :cond_8

    const/16 v1, 0x39

    if-gt v0, v1, :cond_8

    .line 62
    iget v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    add-int/lit8 v2, v0, -0x30

    add-int/2addr v1, v2

    iput v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    goto :goto_2

    .line 63
    :cond_8
    const/16 v1, 0x41

    if-lt v0, v1, :cond_9

    const/16 v1, 0x46

    if-gt v0, v1, :cond_9

    .line 64
    iget v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    add-int/lit8 v2, v0, -0x41

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    iput v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    .line 70
    :goto_2
    iget v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    iput v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLengthRemaining:I

    .line 71
    goto :goto_3

    .line 66
    :cond_9
    new-instance v1, Lcom/koushikdutta/async/http/filter/ChunkedDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid chunk length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/http/filter/ChunkedDataException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->report(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return-void

    .line 111
    .end local v0    # "c":C
    :goto_3
    goto/16 :goto_0

    .line 117
    :cond_a
    goto :goto_4

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->report(Ljava/lang/Exception;)V

    .line 118
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected report(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 41
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    sget-object v1, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->COMPLETE:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    if-eq v0, v1, :cond_0

    .line 42
    new-instance v0, Lcom/koushikdutta/async/http/filter/ChunkedDataException;

    const-string v1, "chunked input ended before final chunk"

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/filter/ChunkedDataException;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 43
    :cond_0
    invoke-super {p0, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->report(Ljava/lang/Exception;)V

    .line 44
    return-void
.end method
