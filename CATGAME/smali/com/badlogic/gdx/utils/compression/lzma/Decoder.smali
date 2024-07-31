.class public Lcom/badlogic/gdx/utils/compression/lzma/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;,
        Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;
    }
.end annotation


# instance fields
.field m_DictionarySize:I

.field m_DictionarySizeCheck:I

.field m_IsMatchDecoders:[S

.field m_IsRep0LongDecoders:[S

.field m_IsRepDecoders:[S

.field m_IsRepG0Decoders:[S

.field m_IsRepG1Decoders:[S

.field m_IsRepG2Decoders:[S

.field m_LenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

.field m_LiteralDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;

.field m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

.field m_PosAlignDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

.field m_PosDecoders:[S

.field m_PosSlotDecoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

.field m_PosStateMask:I

.field m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

.field m_RepLenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    .line 121
    new-instance v0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    .line 123
    const/16 v0, 0xc0

    new-array v1, v0, [S

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsMatchDecoders:[S

    .line 124
    const/16 v1, 0xc

    new-array v2, v1, [S

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepDecoders:[S

    .line 125
    new-array v2, v1, [S

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG0Decoders:[S

    .line 126
    new-array v2, v1, [S

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG1Decoders:[S

    .line 127
    new-array v1, v1, [S

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG2Decoders:[S

    .line 128
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRep0LongDecoders:[S

    .line 130
    const/4 v0, 0x4

    new-array v1, v0, [Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosSlotDecoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    .line 131
    const/16 v1, 0x72

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosDecoders:[S

    .line 133
    new-instance v1, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;-><init>(I)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosAlignDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    .line 135
    new-instance v1, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Decoder;)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_LenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    .line 136
    new-instance v1, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Decoder;)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RepLenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    .line 138
    new-instance v1, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Decoder;)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_LiteralDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;

    .line 140
    const/4 v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_DictionarySize:I

    .line 141
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_DictionarySizeCheck:I

    .line 146
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 147
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosSlotDecoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    new-instance v3, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;-><init>(I)V

    aput-object v3, v2, v1

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public Code(Ljava/io/InputStream;Ljava/io/OutputStream;J)Z
    .locals 19
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;
    .param p3, "outSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->SetStream(Ljava/io/InputStream;)V

    .line 193
    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    move-object/from16 v3, p2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->SetStream(Ljava/io/OutputStream;)V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->Init()V

    .line 196
    invoke-static {}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateInit()I

    move-result v1

    .line 197
    .local v1, "state":I
    const/4 v4, 0x0

    .local v4, "rep0":I
    const/4 v5, 0x0

    .local v5, "rep1":I
    const/4 v6, 0x0

    .local v6, "rep2":I
    const/4 v7, 0x0

    .line 199
    .local v7, "rep3":I
    const-wide/16 v8, 0x0

    .line 200
    .local v8, "nowPos64":J
    const/4 v10, 0x0

    .line 201
    .local v10, "prevByte":B
    :goto_0
    const-wide/16 v11, 0x0

    cmp-long v11, p3, v11

    const/4 v12, 0x1

    if-ltz v11, :cond_0

    cmp-long v11, v8, p3

    if-gez v11, :cond_9

    .line 202
    :cond_0
    long-to-int v11, v8

    iget v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosStateMask:I

    and-int/2addr v11, v13

    .line 203
    .local v11, "posState":I
    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    iget-object v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsMatchDecoders:[S

    shl-int/lit8 v15, v1, 0x4

    add-int/2addr v15, v11

    invoke-virtual {v13, v14, v15}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v13

    if-nez v13, :cond_2

    .line 204
    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_LiteralDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;

    long-to-int v13, v8

    invoke-virtual {v12, v13, v10}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->GetDecoder(IB)Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;

    move-result-object v12

    .line 205
    .local v12, "decoder2":Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;
    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateIsCharState(I)Z

    move-result v13

    if-nez v13, :cond_1

    .line 206
    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    iget-object v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    invoke-virtual {v14, v4}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->GetByte(I)B

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;->DecodeWithMatchByte(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;B)B

    move-result v10

    goto :goto_1

    .line 208
    :cond_1
    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;->DecodeNormal(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)B

    move-result v10

    .line 209
    :goto_1
    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    invoke-virtual {v13, v10}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->PutByte(B)V

    .line 210
    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateChar(I)I

    move-result v1

    .line 211
    const-wide/16 v13, 0x1

    add-long/2addr v8, v13

    .line 212
    .end local v12    # "decoder2":Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;
    goto/16 :goto_7

    .line 214
    :cond_2
    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    iget-object v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepDecoders:[S

    invoke-virtual {v13, v14, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v13

    if-ne v13, v12, :cond_7

    .line 215
    const/4 v12, 0x0

    .line 216
    .local v12, "len":I
    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG0Decoders:[S

    invoke-virtual {v13, v15, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v13

    if-nez v13, :cond_3

    .line 217
    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRep0LongDecoders:[S

    shl-int/lit8 v16, v1, 0x4

    add-int v14, v16, v11

    invoke-virtual {v13, v15, v14}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v13

    if-nez v13, :cond_6

    .line 218
    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateShortRep(I)I

    move-result v1

    .line 219
    const/4 v12, 0x1

    goto :goto_4

    .line 223
    :cond_3
    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    iget-object v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG1Decoders:[S

    invoke-virtual {v13, v14, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v13

    if-nez v13, :cond_4

    .line 224
    move v13, v5

    .local v13, "distance":I
    goto :goto_3

    .line 226
    .end local v13    # "distance":I
    :cond_4
    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    iget-object v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG2Decoders:[S

    invoke-virtual {v13, v14, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v13

    if-nez v13, :cond_5

    .line 227
    move v13, v6

    .restart local v13    # "distance":I
    goto :goto_2

    .line 229
    .end local v13    # "distance":I
    :cond_5
    move v13, v7

    .line 230
    .restart local v13    # "distance":I
    move v7, v6

    .line 232
    :goto_2
    move v6, v5

    .line 234
    :goto_3
    move v5, v4

    .line 235
    move v4, v13

    .line 237
    .end local v13    # "distance":I
    :cond_6
    :goto_4
    if-nez v12, :cond_d

    .line 238
    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RepLenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    iget-object v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    invoke-virtual {v13, v14, v11}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->Decode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;I)I

    move-result v13

    add-int/lit8 v12, v13, 0x2

    .line 239
    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateRep(I)I

    move-result v1

    goto/16 :goto_6

    .line 242
    .end local v12    # "len":I
    :cond_7
    move v7, v6

    .line 243
    move v6, v5

    .line 244
    move v5, v4

    .line 245
    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_LenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    iget-object v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    invoke-virtual {v13, v14, v11}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->Decode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;I)I

    move-result v13

    add-int/lit8 v13, v13, 0x2

    .line 246
    .local v13, "len":I
    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateMatch(I)I

    move-result v1

    .line 247
    iget-object v14, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosSlotDecoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    invoke-static {v13}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->GetLenToPosState(I)I

    move-result v15

    aget-object v14, v14, v15

    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Decode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)I

    move-result v14

    .line 248
    .local v14, "posSlot":I
    const/4 v15, 0x4

    if-lt v14, v15, :cond_c

    .line 249
    shr-int/lit8 v16, v14, 0x1

    add-int/lit8 v15, v16, -0x1

    .line 250
    .local v15, "numDirectBits":I
    and-int/lit8 v16, v14, 0x1

    or-int/lit8 v16, v16, 0x2

    shl-int v4, v16, v15

    .line 251
    const/16 v12, 0xe

    if-ge v14, v12, :cond_8

    .line 252
    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosDecoders:[S

    sub-int v17, v4, v14

    move/from16 v18, v1

    const/16 v16, 0x1

    .end local v1    # "state":I
    .local v18, "state":I
    add-int/lit8 v1, v17, -0x1

    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    invoke-static {v12, v1, v2, v15}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->ReverseDecode([SILcom/badlogic/gdx/utils/compression/rangecoder/Decoder;I)I

    move-result v1

    add-int/2addr v4, v1

    goto :goto_5

    .line 254
    .end local v18    # "state":I
    .restart local v1    # "state":I
    :cond_8
    move/from16 v18, v1

    .end local v1    # "state":I
    .restart local v18    # "state":I
    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    add-int/lit8 v2, v15, -0x4

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeDirectBits(I)I

    move-result v1

    const/4 v2, 0x4

    shl-int/2addr v1, v2

    add-int/2addr v4, v1

    .line 255
    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosAlignDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->ReverseDecode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)I

    move-result v1

    add-int/2addr v4, v1

    .line 256
    if-gez v4, :cond_b

    .line 257
    const/4 v1, -0x1

    if-ne v4, v1, :cond_a

    move/from16 v1, v18

    .line 273
    .end local v11    # "posState":I
    .end local v13    # "len":I
    .end local v14    # "posSlot":I
    .end local v15    # "numDirectBits":I
    .end local v18    # "state":I
    .restart local v1    # "state":I
    :cond_9
    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->Flush()V

    .line 274
    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->ReleaseStream()V

    .line 275
    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->ReleaseStream()V

    .line 276
    const/4 v2, 0x1

    return v2

    .line 258
    .end local v1    # "state":I
    .restart local v11    # "posState":I
    .restart local v13    # "len":I
    .restart local v14    # "posSlot":I
    .restart local v15    # "numDirectBits":I
    .restart local v18    # "state":I
    :cond_a
    const/4 v1, 0x0

    return v1

    .line 261
    .end local v15    # "numDirectBits":I
    :cond_b
    :goto_5
    move v12, v13

    move/from16 v1, v18

    goto :goto_6

    .line 262
    .end local v18    # "state":I
    .restart local v1    # "state":I
    :cond_c
    move/from16 v18, v1

    .end local v1    # "state":I
    .restart local v18    # "state":I
    move v4, v14

    move v12, v13

    .line 264
    .end local v13    # "len":I
    .end local v14    # "posSlot":I
    .end local v18    # "state":I
    .restart local v1    # "state":I
    .restart local v12    # "len":I
    :cond_d
    :goto_6
    int-to-long v13, v4

    cmp-long v2, v13, v8

    if-gez v2, :cond_f

    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_DictionarySizeCheck:I

    if-lt v4, v2, :cond_e

    const/4 v13, 0x0

    goto :goto_8

    .line 268
    :cond_e
    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    invoke-virtual {v2, v4, v12}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->CopyBlock(II)V

    .line 269
    int-to-long v13, v12

    add-long/2addr v8, v13

    .line 270
    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->GetByte(I)B

    move-result v2

    move v10, v2

    .line 272
    .end local v11    # "posState":I
    .end local v12    # "len":I
    :goto_7
    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 264
    .restart local v11    # "posState":I
    .restart local v12    # "len":I
    :cond_f
    const/4 v13, 0x0

    .line 266
    :goto_8
    return v13
.end method

.method Init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->Init(Z)V

    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsMatchDecoders:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRep0LongDecoders:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepDecoders:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 176
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG0Decoders:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 177
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG1Decoders:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 178
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG2Decoders:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 179
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosDecoders:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_LiteralDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->Init()V

    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosSlotDecoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Init()V

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_LenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->Init()V

    .line 186
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RepLenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->Init()V

    .line 187
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosAlignDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Init()V

    .line 188
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Init()V

    .line 189
    return-void
.end method

.method public SetDecoderProperties([B)Z
    .locals 10
    .param p1, "properties"    # [B

    .line 280
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    return v1

    .line 281
    :cond_0
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    .line 282
    .local v0, "val":I
    rem-int/lit8 v2, v0, 0x9

    .line 283
    .local v2, "lc":I
    div-int/lit8 v3, v0, 0x9

    .line 284
    .local v3, "remainder":I
    rem-int/lit8 v4, v3, 0x5

    .line 285
    .local v4, "lp":I
    div-int/lit8 v5, v3, 0x5

    .line 286
    .local v5, "pb":I
    const/4 v6, 0x0

    .line 287
    .local v6, "dictionarySize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v8, 0x4

    if-ge v7, v8, :cond_1

    .line 288
    add-int/lit8 v8, v7, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    mul-int/lit8 v9, v7, 0x8

    shl-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 287
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 289
    .end local v7    # "i":I
    :cond_1
    invoke-virtual {p0, v2, v4, v5}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->SetLcLpPb(III)Z

    move-result v7

    if-nez v7, :cond_2

    return v1

    .line 290
    :cond_2
    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->SetDictionarySize(I)Z

    move-result v1

    return v1
.end method

.method SetDictionarySize(I)Z
    .locals 4
    .param p1, "dictionarySize"    # I

    .line 151
    if-gez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 152
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_DictionarySize:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_1

    .line 153
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_DictionarySize:I

    .line 154
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_DictionarySizeCheck:I

    .line 155
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->Create(I)V

    .line 157
    :cond_1
    return v1
.end method

.method SetLcLpPb(III)Z
    .locals 3
    .param p1, "lc"    # I
    .param p2, "lp"    # I
    .param p3, "pb"    # I

    .line 161
    const/16 v0, 0x8

    if-gt p1, v0, :cond_1

    const/4 v0, 0x4

    if-gt p2, v0, :cond_1

    if-le p3, v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_LiteralDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;

    invoke-virtual {v0, p2, p1}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->Create(II)V

    .line 163
    const/4 v0, 0x1

    shl-int v1, v0, p3

    .line 164
    .local v1, "numPosStates":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_LenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->Create(I)V

    .line 165
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RepLenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->Create(I)V

    .line 166
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosStateMask:I

    .line 167
    return v0

    .line 161
    .end local v1    # "numPosStates":I
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
