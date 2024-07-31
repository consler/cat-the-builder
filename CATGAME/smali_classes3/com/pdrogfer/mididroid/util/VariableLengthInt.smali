.class public Lcom/pdrogfer/mididroid/util/VariableLengthInt;
.super Ljava/lang/Object;
.source "VariableLengthInt.java"


# instance fields
.field private mBytes:[B

.field private mSizeInBytes:I

.field private mValue:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->setValue(I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-direct {p0, p1}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->parseBytes(Ljava/io/InputStream;)V

    .line 36
    return-void
.end method

.method private buildBytes()V
    .locals 6

    .line 100
    iget v0, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mValue:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 102
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mBytes:[B

    .line 103
    aput-byte v1, v0, v1

    .line 104
    iput v2, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mSizeInBytes:I

    .line 105
    return-void

    .line 108
    :cond_0
    iput v1, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mSizeInBytes:I

    .line 109
    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 110
    .local v1, "vals":[I
    iget v3, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mValue:I

    .line 112
    .local v3, "tmpVal":I
    :goto_0
    iget v4, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mSizeInBytes:I

    if-ge v4, v0, :cond_1

    if-lez v3, :cond_1

    .line 114
    and-int/lit8 v5, v3, 0x7f

    aput v5, v1, v4

    .line 116
    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mSizeInBytes:I

    .line 117
    shr-int/lit8 v3, v3, 0x7

    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget v4, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mSizeInBytes:I

    if-ge v0, v4, :cond_2

    .line 122
    aget v4, v1, v0

    or-int/lit16 v4, v4, 0x80

    aput v4, v1, v0

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    .end local v0    # "i":I
    :cond_2
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mBytes:[B

    .line 126
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v4, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mSizeInBytes:I

    if-ge v0, v4, :cond_3

    .line 128
    iget-object v5, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mBytes:[B

    sub-int/2addr v4, v0

    sub-int/2addr v4, v2

    aget v4, v1, v4

    int-to-byte v4, v4

    aput-byte v4, v5, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 130
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private parseBytes(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 63
    .local v1, "ints":[I
    const/4 v2, 0x0

    iput v2, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mSizeInBytes:I

    .line 64
    iput v2, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mValue:I

    .line 65
    const/4 v3, 0x0

    .line 67
    .local v3, "shift":I
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 68
    .local v4, "b":I
    :goto_0
    iget v5, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mSizeInBytes:I

    if-ge v5, v0, :cond_2

    .line 70
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mSizeInBytes:I

    .line 72
    and-int/lit16 v5, v4, 0x80

    const/4 v6, 0x1

    if-lez v5, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    move v5, v2

    .line 73
    .local v5, "variable":Z
    :goto_1
    if-nez v5, :cond_1

    .line 75
    iget v0, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mSizeInBytes:I

    sub-int/2addr v0, v6

    and-int/lit8 v2, v4, 0x7f

    aput v2, v1, v0

    .line 76
    goto :goto_2

    .line 78
    :cond_1
    iget v7, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mSizeInBytes:I

    sub-int/2addr v7, v6

    and-int/lit8 v6, v4, 0x7f

    aput v6, v1, v7

    .line 80
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 81
    .end local v5    # "variable":Z
    goto :goto_0

    .line 83
    :cond_2
    :goto_2
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_3
    iget v2, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mSizeInBytes:I

    if-ge v0, v2, :cond_3

    .line 85
    add-int/lit8 v3, v3, 0x7

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 88
    .end local v0    # "i":I
    :cond_3
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mBytes:[B

    .line 89
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget v2, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mSizeInBytes:I

    if-ge v0, v2, :cond_4

    .line 91
    iget-object v2, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mBytes:[B

    aget v5, v1, v0

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    .line 93
    iget v2, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mValue:I

    aget v5, v1, v0

    shl-int/2addr v5, v3

    add-int/2addr v2, v5

    iput v2, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mValue:I

    .line 94
    add-int/lit8 v3, v3, -0x7

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 96
    .end local v0    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method public getByteCount()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mSizeInBytes:I

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mBytes:[B

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mValue:I

    return v0
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 40
    iput p1, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mValue:I

    .line 41
    invoke-direct {p0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->buildBytes()V

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mBytes:[B

    invoke-static {v1}, Lcom/pdrogfer/mididroid/util/MidiUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
