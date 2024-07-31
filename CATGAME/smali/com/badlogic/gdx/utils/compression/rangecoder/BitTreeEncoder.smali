.class public Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;
.super Ljava/lang/Object;
.source "BitTreeEncoder.java"


# instance fields
.field Models:[S

.field NumBitLevels:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "numBitLevels"    # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->NumBitLevels:I

    .line 27
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Models:[S

    .line 28
    return-void
.end method

.method public static ReverseEncode([SILcom/badlogic/gdx/utils/compression/rangecoder/Encoder;II)V
    .locals 4
    .param p0, "Models"    # [S
    .param p1, "startIndex"    # I
    .param p2, "rangeEncoder"    # Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;
    .param p3, "NumBitLevels"    # I
    .param p4, "symbol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    const/4 v0, 0x1

    .line 93
    .local v0, "m":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 94
    and-int/lit8 v2, p4, 0x1

    .line 95
    .local v2, "bit":I
    add-int v3, p1, v0

    invoke-virtual {p2, p0, v3, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 96
    shl-int/lit8 v3, v0, 0x1

    or-int v0, v3, v2

    .line 97
    shr-int/lit8 p4, p4, 0x1

    .line 93
    .end local v2    # "bit":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public static ReverseGetPrice([SIII)I
    .locals 5
    .param p0, "Models"    # [S
    .param p1, "startIndex"    # I
    .param p2, "NumBitLevels"    # I
    .param p3, "symbol"    # I

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "price":I
    const/4 v1, 0x1

    .line 81
    .local v1, "m":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-eqz v2, :cond_0

    .line 82
    and-int/lit8 v3, p3, 0x1

    .line 83
    .local v3, "bit":I
    ushr-int/lit8 p3, p3, 0x1

    .line 84
    add-int v4, p1, v1

    aget-short v4, p0, v4

    invoke-static {v4, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 85
    shl-int/lit8 v4, v1, 0x1

    or-int v1, v4, v3

    .line 81
    .end local v3    # "bit":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 87
    .end local v2    # "i":I
    :cond_0
    return v0
.end method


# virtual methods
.method public Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;I)V
    .locals 4
    .param p1, "rangeEncoder"    # Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;
    .param p2, "symbol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    const/4 v0, 0x1

    .line 36
    .local v0, "m":I
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->NumBitLevels:I

    .local v1, "bitIndex":I
    :goto_0
    if-eqz v1, :cond_0

    .line 37
    add-int/lit8 v1, v1, -0x1

    .line 38
    ushr-int v2, p2, v1

    and-int/lit8 v2, v2, 0x1

    .line 39
    .local v2, "bit":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Models:[S

    invoke-virtual {p1, v3, v0, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 40
    shl-int/lit8 v3, v0, 0x1

    or-int v0, v3, v2

    .line 41
    .end local v2    # "bit":I
    goto :goto_0

    .line 42
    .end local v1    # "bitIndex":I
    :cond_0
    return-void
.end method

.method public GetPrice(I)I
    .locals 5
    .param p1, "symbol"    # I

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "price":I
    const/4 v1, 0x1

    .line 57
    .local v1, "m":I
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->NumBitLevels:I

    .local v2, "bitIndex":I
    :goto_0
    if-eqz v2, :cond_0

    .line 58
    add-int/lit8 v2, v2, -0x1

    .line 59
    ushr-int v3, p1, v2

    and-int/lit8 v3, v3, 0x1

    .line 60
    .local v3, "bit":I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Models:[S

    aget-short v4, v4, v1

    invoke-static {v4, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 61
    shl-int/lit8 v4, v1, 0x1

    add-int v1, v4, v3

    .line 62
    .end local v3    # "bit":I
    goto :goto_0

    .line 63
    .end local v2    # "bitIndex":I
    :cond_0
    return v0
.end method

.method public Init()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Models:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 32
    return-void
.end method

.method public ReverseEncode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;I)V
    .locals 4
    .param p1, "rangeEncoder"    # Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;
    .param p2, "symbol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x1

    .line 46
    .local v0, "m":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->NumBitLevels:I

    if-ge v1, v2, :cond_0

    .line 47
    and-int/lit8 v2, p2, 0x1

    .line 48
    .local v2, "bit":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Models:[S

    invoke-virtual {p1, v3, v0, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 49
    shl-int/lit8 v3, v0, 0x1

    or-int v0, v3, v2

    .line 50
    shr-int/lit8 p2, p2, 0x1

    .line 46
    .end local v2    # "bit":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public ReverseGetPrice(I)I
    .locals 5
    .param p1, "symbol"    # I

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "price":I
    const/4 v1, 0x1

    .line 69
    .local v1, "m":I
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->NumBitLevels:I

    .local v2, "i":I
    :goto_0
    if-eqz v2, :cond_0

    .line 70
    and-int/lit8 v3, p1, 0x1

    .line 71
    .local v3, "bit":I
    ushr-int/lit8 p1, p1, 0x1

    .line 72
    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Models:[S

    aget-short v4, v4, v1

    invoke-static {v4, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 73
    shl-int/lit8 v4, v1, 0x1

    or-int v1, v4, v3

    .line 69
    .end local v3    # "bit":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 75
    .end local v2    # "i":I
    :cond_0
    return v0
.end method
