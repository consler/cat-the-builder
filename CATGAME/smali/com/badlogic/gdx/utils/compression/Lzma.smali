.class public Lcom/badlogic/gdx/utils/compression/Lzma;
.super Ljava/lang/Object;
.source "Lzma.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compress(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 13
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;-><init>()V

    .line 63
    .local v0, "params":Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;
    const/4 v1, 0x0

    .line 64
    .local v1, "eos":Z
    iget-boolean v2, v0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Eos:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 65
    :cond_0
    new-instance v2, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;-><init>()V

    .line 66
    .local v2, "encoder":Lcom/badlogic/gdx/utils/compression/lzma/Encoder;
    iget v3, v0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Algorithm:I

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetAlgorithm(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 67
    iget v3, v0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->DictionarySize:I

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetDictionarySize(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 68
    iget v3, v0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Fb:I

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetNumFastBytes(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 69
    iget v3, v0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->MatchFinder:I

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetMatchFinder(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 70
    iget v3, v0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Lc:I

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Lp:I

    iget v5, v0, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Pb:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetLcLpPb(III)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 71
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetEndMarkerMode(Z)V

    .line 72
    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->WriteCoderProperties(Ljava/io/OutputStream;)V

    .line 74
    if-eqz v1, :cond_1

    .line 75
    const-wide/16 v3, -0x1

    move-wide v11, v3

    .local v3, "fileSize":J
    goto :goto_0

    .line 77
    .end local v3    # "fileSize":J
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    int-to-long v3, v3

    move-wide v5, v3

    .local v5, "fileSize":J
    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-nez v3, :cond_2

    .line 78
    const-wide/16 v3, -0x1

    move-wide v11, v3

    .end local v5    # "fileSize":J
    .restart local v3    # "fileSize":J
    goto :goto_0

    .line 77
    .end local v3    # "fileSize":J
    .restart local v5    # "fileSize":J
    :cond_2
    move-wide v11, v5

    .line 81
    .end local v5    # "fileSize":J
    .local v11, "fileSize":J
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_3

    .line 82
    mul-int/lit8 v4, v3, 0x8

    ushr-long v4, v11, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 84
    .end local v3    # "i":I
    :cond_3
    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v3 .. v10}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->Code(Ljava/io/InputStream;Ljava/io/OutputStream;JJLcom/badlogic/gdx/utils/compression/ICodeProgress;)V

    .line 85
    return-void

    .line 70
    .end local v11    # "fileSize":J
    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Incorrect -lc or -lp or -pb value"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    :cond_5
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Incorrect -mf value"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 68
    :cond_6
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Incorrect -fb value"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 67
    :cond_7
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Incorrect dictionary size"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 66
    :cond_8
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Incorrect compression mode"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static decompress(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 10
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    const/4 v0, 0x5

    .line 94
    .local v0, "propertiesSize":I
    new-array v1, v0, [B

    .line 95
    .local v1, "properties":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ne v2, v0, :cond_4

    .line 96
    new-instance v2, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;-><init>()V

    .line 97
    .local v2, "decoder":Lcom/badlogic/gdx/utils/compression/lzma/Decoder;
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->SetDecoderProperties([B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 98
    const-wide/16 v3, 0x0

    .line 99
    .local v3, "outSize":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v6, 0x8

    if-ge v5, v6, :cond_1

    .line 100
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 101
    .local v6, "v":I
    if-ltz v6, :cond_0

    .line 104
    int-to-long v7, v6

    mul-int/lit8 v9, v5, 0x8

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    .line 99
    .end local v6    # "v":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 102
    .restart local v6    # "v":I
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Can\'t read stream size"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 106
    .end local v5    # "i":I
    .end local v6    # "v":I
    :cond_1
    invoke-virtual {v2, p0, p1, v3, v4}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->Code(Ljava/io/InputStream;Ljava/io/OutputStream;J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    return-void

    .line 107
    :cond_2
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Error in data stream"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 97
    .end local v3    # "outSize":J
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Incorrect stream properties"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    .end local v2    # "decoder":Lcom/badlogic/gdx/utils/compression/lzma/Decoder;
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "input .lzma file is too short"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
