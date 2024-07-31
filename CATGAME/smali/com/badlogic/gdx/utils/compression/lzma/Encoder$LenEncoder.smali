.class Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/compression/lzma/Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LenEncoder"
.end annotation


# instance fields
.field _choice:[S

.field _highCoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

.field _lowCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

.field _midCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

.field final synthetic this$0:Lcom/badlogic/gdx/utils/compression/lzma/Encoder;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/compression/lzma/Encoder;)V
    .locals 5
    .param p1, "this$0"    # Lcom/badlogic/gdx/utils/compression/lzma/Encoder;

    .line 163
    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->this$0:Lcom/badlogic/gdx/utils/compression/lzma/Encoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const/4 v0, 0x2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_choice:[S

    .line 159
    const/16 v0, 0x10

    new-array v1, v0, [Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_lowCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    .line 160
    new-array v1, v0, [Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_midCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    .line 161
    new-instance v1, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;-><init>(I)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_highCoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    .line 164
    const/4 v1, 0x0

    .local v1, "posState":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 165
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_lowCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    new-instance v3, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;-><init>(I)V

    aput-object v3, v2, v1

    .line 166
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_midCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    new-instance v3, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;-><init>(I)V

    aput-object v3, v2, v1

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "posState":I
    :cond_0
    return-void
.end method


# virtual methods
.method public Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;II)V
    .locals 4
    .param p1, "rangeEncoder"    # Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;
    .param p2, "symbol"    # I
    .param p3, "posState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_choice:[S

    invoke-virtual {p1, v0, v1, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 184
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_lowCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;I)V

    goto :goto_0

    .line 186
    :cond_0
    add-int/lit8 p2, p2, -0x8

    .line 187
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_choice:[S

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v1, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 188
    if-ge p2, v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_choice:[S

    invoke-virtual {p1, v0, v3, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 190
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_midCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;I)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_choice:[S

    invoke-virtual {p1, v0, v3, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 193
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_highCoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    add-int/lit8 v1, p2, -0x8

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;I)V

    .line 196
    :goto_0
    return-void
.end method

.method public Init(I)V
    .locals 2
    .param p1, "numPosStates"    # I

    .line 171
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_choice:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->InitBitModels([S)V

    .line 173
    const/4 v0, 0x0

    .local v0, "posState":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_lowCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Init()V

    .line 175
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_midCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Init()V

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    .end local v0    # "posState":I
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_highCoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Init()V

    .line 178
    return-void
.end method

.method public SetPrices(II[II)V
    .locals 9
    .param p1, "posState"    # I
    .param p2, "numSymbols"    # I
    .param p3, "prices"    # [I
    .param p4, "st"    # I

    .line 199
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_choice:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v0

    .line 200
    .local v0, "a0":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_choice:[S

    aget-short v1, v2, v1

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v1

    .line 201
    .local v1, "a1":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_choice:[S

    const/4 v3, 0x1

    aget-short v2, v2, v3

    invoke-static {v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 202
    .local v2, "b0":I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_choice:[S

    aget-short v3, v4, v3

    invoke-static {v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v3

    add-int/2addr v3, v1

    .line 203
    .local v3, "b1":I
    const/4 v4, 0x0

    .line 204
    .local v4, "i":I
    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_1

    .line 205
    if-lt v4, p2, :cond_0

    return-void

    .line 206
    :cond_0
    add-int v5, p4, v4

    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_lowCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v6, v6, p1

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->GetPrice(I)I

    move-result v6

    add-int/2addr v6, v0

    aput v6, p3, v5

    .line 204
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 208
    :cond_1
    :goto_1
    const/16 v6, 0x10

    if-ge v4, v6, :cond_3

    .line 209
    if-lt v4, p2, :cond_2

    return-void

    .line 210
    :cond_2
    add-int v6, p4, v4

    iget-object v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_midCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v7, v7, p1

    add-int/lit8 v8, v4, -0x8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->GetPrice(I)I

    move-result v7

    add-int/2addr v7, v2

    aput v7, p3, v6

    .line 208
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 212
    :cond_3
    :goto_2
    if-ge v4, p2, :cond_4

    .line 213
    add-int v6, p4, v4

    iget-object v7, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_highCoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    add-int/lit8 v8, v4, -0x8

    sub-int/2addr v8, v5

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->GetPrice(I)I

    move-result v7

    add-int/2addr v7, v3

    aput v7, p3, v6

    .line 212
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 214
    :cond_4
    return-void
.end method
