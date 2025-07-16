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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->setValue(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-direct {p0, p1}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->parseBytes(Ljava/io/InputStream;)V

    return-void
.end method

.method private buildBytes()V
    .locals 7

    .line 100
    iget v0, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mValue:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array v0, v2, [B

    .line 102
    iput-object v0, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mBytes:[B

    aput-byte v1, v0, v1

    .line 104
    iput v2, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mSizeInBytes:I

    return-void

    .line 108
    :cond_0
    iput v1, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mSizeInBytes:I

    const/4 v3, 0x4

    new-array v4, v3, [I

    .line 112
    :goto_0
    iget v5, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mSizeInBytes:I

    if-ge v5, v3, :cond_1

    if-lez v0, :cond_1

    and-int/lit8 v6, v0, 0x7f

    .line 114
    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    .line 116
    iput v5, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mSizeInBytes:I

    shr-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_1
    move v0, v2

    .line 120
    :goto_1
    iget v3, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mSizeInBytes:I

    if-ge v0, v3, :cond_2

    .line 122
    aget v3, v4, v0

    or-int/lit16 v3, v3, 0x80

    aput v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    :cond_2
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mBytes:[B

    .line 126
    :goto_2
    iget v0, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mSizeInBytes:I

    if-ge v1, v0, :cond_3

    .line 128
    iget-object v3, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mBytes:[B

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    aget v0, v4, v0

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private parseBytes(Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 63
    iput v2, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mSizeInBytes:I

    .line 64
    iput v2, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mValue:I

    .line 67
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 68
    :goto_0
    iget v4, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mSizeInBytes:I

    const/4 v5, 0x1

    if-ge v4, v0, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 70
    iput v4, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mSizeInBytes:I

    and-int/lit16 v6, v3, 0x80

    if-lez v6, :cond_0

    move v6, v5

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    if-nez v6, :cond_1

    sub-int/2addr v4, v5

    and-int/lit8 p1, v3, 0x7f

    .line 75
    aput p1, v1, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, -0x1

    and-int/lit8 v3, v3, 0x7f

    .line 78
    aput v3, v1, v4

    .line 80
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    goto :goto_0

    :cond_2
    :goto_2
    move p1, v2

    .line 83
    :goto_3
    iget v0, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mSizeInBytes:I

    if-ge v5, v0, :cond_3

    add-int/lit8 p1, p1, 0x7

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 88
    :cond_3
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mBytes:[B

    .line 89
    :goto_4
    iget v0, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mSizeInBytes:I

    if-ge v2, v0, :cond_4

    .line 91
    iget-object v0, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mBytes:[B

    aget v3, v1, v2

    int-to-byte v4, v3

    aput-byte v4, v0, v2

    .line 93
    iget v0, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mValue:I

    shl-int/2addr v3, p1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mValue:I

    add-int/lit8 p1, p1, -0x7

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

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

    .line 40
    iput p1, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mValue:I

    .line 41
    invoke-direct {p0}, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->buildBytes()V

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

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pdrogfer/mididroid/util/VariableLengthInt;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
