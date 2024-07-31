.class public final Lcom/google/crypto/tink/subtle/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/subtle/Base64$Encoder;,
        Lcom/google/crypto/tink/subtle/Base64$Decoder;,
        Lcom/google/crypto/tink/subtle/Base64$Coder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CRLF:I = 0x4

.field public static final DEFAULT:I = 0x0

.field public static final NO_CLOSE:I = 0x10

.field public static final NO_PADDING:I = 0x1

.field public static final NO_WRAP:I = 0x2

.field public static final URL_SAFE:I = 0x8

.field private static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    nop

    .line 34
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/subtle/Base64;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 96
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/crypto/tink/subtle/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "flags"
        }
    .end annotation

    .line 116
    sget-object v0, Lcom/google/crypto/tink/subtle/Base64;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/crypto/tink/subtle/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .locals 2
    .param p0, "input"    # [B
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "flags"
        }
    .end annotation

    .line 131
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/google/crypto/tink/subtle/Base64;->decode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BIII)[B
    .locals 5
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "offset",
            "len",
            "flags"
        }
    .end annotation

    .line 150
    new-instance v0, Lcom/google/crypto/tink/subtle/Base64$Decoder;

    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, p3, v1}, Lcom/google/crypto/tink/subtle/Base64$Decoder;-><init>(I[B)V

    .line 152
    .local v0, "decoder":Lcom/google/crypto/tink/subtle/Base64$Decoder;
    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/google/crypto/tink/subtle/Base64$Decoder;->process([BIIZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    iget v1, v0, Lcom/google/crypto/tink/subtle/Base64$Decoder;->op:I

    iget-object v2, v0, Lcom/google/crypto/tink/subtle/Base64$Decoder;->output:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 158
    iget-object v1, v0, Lcom/google/crypto/tink/subtle/Base64$Decoder;->output:[B

    return-object v1

    .line 163
    :cond_0
    iget v1, v0, Lcom/google/crypto/tink/subtle/Base64$Decoder;->op:I

    new-array v1, v1, [B

    .line 164
    .local v1, "temp":[B
    iget-object v2, v0, Lcom/google/crypto/tink/subtle/Base64$Decoder;->output:[B

    iget v3, v0, Lcom/google/crypto/tink/subtle/Base64$Decoder;->op:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    return-object v1

    .line 153
    .end local v1    # "temp":[B
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bad base-64"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "input"
        }
    .end annotation

    .line 430
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/crypto/tink/subtle/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BI)[B
    .locals 2
    .param p0, "input"    # [B
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "flags"
        }
    .end annotation

    .line 480
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/google/crypto/tink/subtle/Base64;->encode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BIII)[B
    .locals 6
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "offset",
            "len",
            "flags"
        }
    .end annotation

    .line 493
    new-instance v0, Lcom/google/crypto/tink/subtle/Base64$Encoder;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/google/crypto/tink/subtle/Base64$Encoder;-><init>(I[B)V

    .line 496
    .local v0, "encoder":Lcom/google/crypto/tink/subtle/Base64$Encoder;
    div-int/lit8 v1, p2, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 499
    .local v1, "outputLen":I
    iget-boolean v2, v0, Lcom/google/crypto/tink/subtle/Base64$Encoder;->doPadding:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 500
    rem-int/lit8 v2, p2, 0x3

    if-lez v2, :cond_3

    .line 501
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 504
    :cond_0
    rem-int/lit8 v2, p2, 0x3

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 511
    :cond_1
    add-int/lit8 v1, v1, 0x3

    .line 512
    goto :goto_0

    .line 508
    :cond_2
    add-int/lit8 v1, v1, 0x2

    .line 509
    nop

    .line 519
    :cond_3
    :goto_0
    iget-boolean v2, v0, Lcom/google/crypto/tink/subtle/Base64$Encoder;->doNewline:Z

    if-eqz v2, :cond_5

    if-lez p2, :cond_5

    .line 520
    add-int/lit8 v2, p2, -0x1

    div-int/lit8 v2, v2, 0x39

    add-int/2addr v2, v4

    iget-boolean v5, v0, Lcom/google/crypto/tink/subtle/Base64$Encoder;->doCr:Z

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 523
    :cond_5
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/google/crypto/tink/subtle/Base64$Encoder;->output:[B

    .line 524
    invoke-virtual {v0, p0, p1, p2, v4}, Lcom/google/crypto/tink/subtle/Base64$Encoder;->process([BIIZ)Z

    .line 526
    nop

    .line 528
    iget-object v2, v0, Lcom/google/crypto/tink/subtle/Base64$Encoder;->output:[B

    return-object v2
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # [B
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "flags"
        }
    .end annotation

    .line 447
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/crypto/tink/subtle/Base64;->encode([BI)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 448
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static encodeToString([BIII)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "offset",
            "len",
            "flags"
        }
    .end annotation

    .line 465
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lcom/google/crypto/tink/subtle/Base64;->encode([BIII)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 466
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static urlSafeDecode(Ljava/lang/String;)[B
    .locals 1
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 101
    const/16 v0, 0xb

    invoke-static {p0, v0}, Lcom/google/crypto/tink/subtle/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static urlSafeEncode([B)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "input"
        }
    .end annotation

    .line 435
    const/16 v0, 0xb

    invoke-static {p0, v0}, Lcom/google/crypto/tink/subtle/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
