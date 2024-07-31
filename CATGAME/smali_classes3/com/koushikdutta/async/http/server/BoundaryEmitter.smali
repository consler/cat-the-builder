.class public Lcom/koushikdutta/async/http/server/BoundaryEmitter;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "BoundaryEmitter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private boundary:[B

.field state:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    return-void
.end method


# virtual methods
.method public getBoundary()Ljava/lang/String;
    .locals 4

    .line 16
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    return-object v0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    array-length v2, v1

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public getBoundaryEnd()Ljava/lang/String;
    .locals 2

    .line 27
    nop

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->getBoundaryStart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoundaryStart()Ljava/lang/String;
    .locals 4

    .line 22
    nop

    .line 23
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    array-length v2, v1

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method protected onBoundaryEnd()V
    .locals 0

    .line 35
    return-void
.end method

.method protected onBoundaryStart()V
    .locals 0

    .line 32
    return-void
.end method

.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 10
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .line 67
    iget v0, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    array-length v0, v0

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 69
    .local v0, "b":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    iget v3, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 71
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->addFirst(Ljava/nio/ByteBuffer;)V

    .line 72
    iput v1, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    .line 75
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    :cond_0
    const/4 v0, 0x0

    .line 76
    .local v0, "last":I
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v2

    new-array v2, v2, [B

    .line 77
    .local v2, "buf":[B
    invoke-virtual {p2, v2}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    .line 78
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_f

    .line 79
    iget v4, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    const/4 v5, -0x1

    if-ltz v4, :cond_2

    .line 80
    aget-byte v6, v2, v3

    iget-object v7, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    aget-byte v8, v7, v4

    if-ne v6, v8, :cond_1

    .line 81
    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    .line 82
    array-length v6, v7

    if-ne v4, v6, :cond_e

    .line 83
    iput v5, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    goto/16 :goto_1

    .line 85
    :cond_1
    if-lez v4, :cond_e

    .line 88
    sub-int/2addr v3, v4

    .line 89
    iput v1, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    goto/16 :goto_1

    .line 92
    :cond_2
    const/16 v6, 0x2d

    const/16 v7, 0xd

    const/4 v8, -0x2

    const/4 v9, -0x4

    if-ne v4, v5, :cond_7

    .line 93
    aget-byte v4, v2, v3

    if-ne v4, v7, :cond_5

    .line 94
    iput v9, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    .line 95
    sub-int v4, v3, v0

    iget-object v5, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    array-length v5, v5

    sub-int/2addr v4, v5

    .line 96
    .local v4, "len":I
    if-nez v0, :cond_3

    if-eqz v4, :cond_4

    .line 97
    :cond_3
    invoke-static {v4}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v2, v0, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 98
    .local v5, "b":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 99
    new-instance v6, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v6}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 100
    .local v6, "list":Lcom/koushikdutta/async/ByteBufferList;
    invoke-virtual {v6, v5}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 101
    invoke-super {p0, p0, v6}, Lcom/koushikdutta/async/FilteredDataEmitter;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 104
    .end local v5    # "b":Ljava/nio/ByteBuffer;
    .end local v6    # "list":Lcom/koushikdutta/async/ByteBufferList;
    :cond_4
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->onBoundaryStart()V

    .line 105
    .end local v4    # "len":I
    goto/16 :goto_1

    .line 106
    :cond_5
    aget-byte v4, v2, v3

    if-ne v4, v6, :cond_6

    .line 107
    iput v8, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    goto/16 :goto_1

    .line 110
    :cond_6
    new-instance v1, Lcom/koushikdutta/async/http/server/MimeEncodingException;

    const-string v4, "Invalid multipart/form-data. Expected \r or -"

    invoke-direct {v1, v4}, Lcom/koushikdutta/async/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->report(Ljava/lang/Exception;)V

    .line 111
    return-void

    .line 114
    :cond_7
    const/4 v5, -0x3

    if-ne v4, v8, :cond_9

    .line 115
    aget-byte v4, v2, v3

    if-ne v4, v6, :cond_8

    .line 116
    iput v5, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    goto :goto_1

    .line 119
    :cond_8
    new-instance v1, Lcom/koushikdutta/async/http/server/MimeEncodingException;

    const-string v4, "Invalid multipart/form-data. Expected -"

    invoke-direct {v1, v4}, Lcom/koushikdutta/async/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->report(Ljava/lang/Exception;)V

    .line 120
    return-void

    .line 123
    :cond_9
    if-ne v4, v5, :cond_b

    .line 124
    aget-byte v4, v2, v3

    if-ne v4, v7, :cond_a

    .line 125
    iput v9, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    .line 126
    sub-int v4, v3, v0

    iget-object v5, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    array-length v5, v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    invoke-static {v4}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sub-int v5, v3, v0

    iget-object v6, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    array-length v6, v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v2, v0, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 127
    .local v4, "b":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 128
    new-instance v5, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v5}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 129
    .local v5, "list":Lcom/koushikdutta/async/ByteBufferList;
    invoke-virtual {v5, v4}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 130
    invoke-super {p0, p0, v5}, Lcom/koushikdutta/async/FilteredDataEmitter;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 132
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->onBoundaryEnd()V

    .line 133
    .end local v4    # "b":Ljava/nio/ByteBuffer;
    .end local v5    # "list":Lcom/koushikdutta/async/ByteBufferList;
    goto :goto_1

    .line 135
    :cond_a
    new-instance v1, Lcom/koushikdutta/async/http/server/MimeEncodingException;

    const-string v4, "Invalid multipart/form-data. Expected \r"

    invoke-direct {v1, v4}, Lcom/koushikdutta/async/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->report(Ljava/lang/Exception;)V

    .line 136
    return-void

    .line 139
    :cond_b
    if-ne v4, v9, :cond_d

    .line 140
    aget-byte v4, v2, v3

    const/16 v5, 0xa

    if-ne v4, v5, :cond_c

    .line 141
    add-int/lit8 v0, v3, 0x1

    .line 142
    iput v1, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    goto :goto_1

    .line 145
    :cond_c
    new-instance v4, Lcom/koushikdutta/async/http/server/MimeEncodingException;

    const-string v5, "Invalid multipart/form-data. Expected \n"

    invoke-direct {v4, v5}, Lcom/koushikdutta/async/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->report(Ljava/lang/Exception;)V

    goto :goto_1

    .line 149
    :cond_d
    nop

    .line 150
    new-instance v4, Lcom/koushikdutta/async/http/server/MimeEncodingException;

    const-string v5, "Invalid multipart/form-data. Unknown state?"

    invoke-direct {v4, v5}, Lcom/koushikdutta/async/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->report(Ljava/lang/Exception;)V

    .line 78
    :cond_e
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 154
    .end local v3    # "i":I
    :cond_f
    array-length v3, v2

    if-ge v0, v3, :cond_10

    .line 158
    iget v3, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 159
    .local v1, "keep":I
    array-length v3, v2

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-static {v3}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    array-length v4, v2

    sub-int/2addr v4, v0

    sub-int/2addr v4, v1

    invoke-virtual {v3, v2, v0, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 160
    .local v3, "b":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 161
    new-instance v4, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v4}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 162
    .local v4, "list":Lcom/koushikdutta/async/ByteBufferList;
    invoke-virtual {v4, v3}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 163
    invoke-super {p0, p0, v4}, Lcom/koushikdutta/async/FilteredDataEmitter;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 165
    .end local v1    # "keep":I
    .end local v3    # "b":Ljava/nio/ByteBuffer;
    .end local v4    # "list":Lcom/koushikdutta/async/ByteBufferList;
    :cond_10
    return-void
.end method

.method public setBoundary(Ljava/lang/String;)V
    .locals 2
    .param p1, "boundary"    # Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    .line 13
    return-void
.end method
