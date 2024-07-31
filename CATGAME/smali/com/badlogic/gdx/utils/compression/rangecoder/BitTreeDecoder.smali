.class public Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;
.super Ljava/lang/Object;
.source "BitTreeDecoder.java"


# instance fields
.field Models:[S

.field NumBitLevels:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "numBitLevels"    # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->NumBitLevels:I

    .line 25
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Models:[S

    .line 26
    return-void
.end method

.method public static ReverseDecode([SILcom/badlogic/gdx/utils/compression/rangecoder/Decoder;I)I
    .locals 5
    .param p0, "Models"    # [S
    .param p1, "startIndex"    # I
    .param p2, "rangeDecoder"    # Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;
    .param p3, "NumBitLevels"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x1

    .line 54
    .local v0, "m":I
    const/4 v1, 0x0

    .line 55
    .local v1, "symbol":I
    const/4 v2, 0x0

    .local v2, "bitIndex":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 56
    add-int v3, p1, v0

    invoke-virtual {p2, p0, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v3

    .line 57
    .local v3, "bit":I
    shl-int/lit8 v0, v0, 0x1

    .line 58
    add-int/2addr v0, v3

    .line 59
    shl-int v4, v3, v2

    or-int/2addr v1, v4

    .line 55
    .end local v3    # "bit":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v2    # "bitIndex":I
    :cond_0
    return v1
.end method


# virtual methods
.method public Decode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)I
    .locals 4
    .param p1, "rangeDecoder"    # Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x1

    .line 34
    .local v0, "m":I
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->NumBitLevels:I

    .local v1, "bitIndex":I
    :goto_0
    if-eqz v1, :cond_0

    .line 35
    shl-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Models:[S

    invoke-virtual {p1, v3, v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v3

    add-int v0, v2, v3

    .line 34
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 36
    .end local v1    # "bitIndex":I
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->NumBitLevels:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    sub-int v1, v0, v1

    return v1
.end method

.method public Init()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Models:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 30
    return-void
.end method

.method public ReverseDecode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)I
    .locals 5
    .param p1, "rangeDecoder"    # Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x1

    .line 41
    .local v0, "m":I
    const/4 v1, 0x0

    .line 42
    .local v1, "symbol":I
    const/4 v2, 0x0

    .local v2, "bitIndex":I
    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->NumBitLevels:I

    if-ge v2, v3, :cond_0

    .line 43
    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Models:[S

    invoke-virtual {p1, v3, v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v3

    .line 44
    .local v3, "bit":I
    shl-int/lit8 v0, v0, 0x1

    .line 45
    add-int/2addr v0, v3

    .line 46
    shl-int v4, v3, v2

    or-int/2addr v1, v4

    .line 42
    .end local v3    # "bit":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    .end local v2    # "bitIndex":I
    :cond_0
    return v1
.end method
