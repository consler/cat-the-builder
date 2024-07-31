.class public Lcom/thoughtworks/xstream/core/util/Base64Encoder;
.super Ljava/lang/Object;
.source "Base64Encoder.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/StringCodec;


# static fields
.field private static final REVERSE_MAPPING:[I

.field private static final SIXTY_FOUR_CHARS:[C


# instance fields
.field private final lineBreaks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 60
    nop

    .line 61
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->SIXTY_FOUR_CHARS:[C

    .line 62
    const/16 v0, 0x7b

    new-array v0, v0, [I

    sput-object v0, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->REVERSE_MAPPING:[I

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->SIXTY_FOUR_CHARS:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 67
    sget-object v2, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->REVERSE_MAPPING:[I

    aget-char v1, v1, v0

    add-int/lit8 v3, v0, 0x1

    aput v3, v2, v1

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/core/util/Base64Encoder;-><init>(Z)V

    .line 81
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "lineBreaks"    # Z

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean p1, p0, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->lineBreaks:Z

    .line 91
    return-void
.end method

.method private mapCharToInt(Ljava/io/Reader;)I
    .locals 4
    .param p1, "input"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    :goto_0
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    move v1, v0

    .local v1, "c":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 145
    sget-object v0, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->REVERSE_MAPPING:[I

    aget v0, v0, v1

    .line 146
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 147
    add-int/lit8 v2, v0, -0x1

    return v2

    .line 149
    :cond_0
    const/16 v3, 0x3d

    if-ne v1, v3, :cond_1

    .line 150
    return v2

    .line 152
    .end local v0    # "result":I
    :cond_1
    goto :goto_0

    .line 153
    :cond_2
    return v2
.end method


# virtual methods
.method computeResultingStringSize([B)I
    .locals 2
    .param p1, "input"    # [B

    .line 115
    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    array-length v1, p1

    rem-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    .line 116
    .local v0, "stringSize":I
    mul-int/lit8 v0, v0, 0x4

    .line 117
    iget-boolean v1, p0, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->lineBreaks:Z

    if-eqz v1, :cond_1

    .line 118
    div-int/lit8 v1, v0, 0x4c

    add-int/2addr v0, v1

    .line 120
    :cond_1
    return v0
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 9
    .param p1, "input"    # Ljava/lang/String;

    .line 125
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 126
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, "in":Ljava/io/StringReader;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 128
    const/4 v3, 0x4

    new-array v3, v3, [I

    invoke-direct {p0, v1}, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->mapCharToInt(Ljava/io/Reader;)I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-direct {p0, v1}, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->mapCharToInt(Ljava/io/Reader;)I

    move-result v4

    const/4 v6, 0x1

    aput v4, v3, v6

    invoke-direct {p0, v1}, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->mapCharToInt(Ljava/io/Reader;)I

    move-result v4

    const/4 v7, 0x2

    aput v4, v3, v7

    invoke-direct {p0, v1}, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->mapCharToInt(Ljava/io/Reader;)I

    move-result v4

    const/4 v8, 0x3

    aput v4, v3, v8

    .line 129
    .local v3, "a":[I
    aget v4, v3, v5

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x12

    aget v5, v3, v6

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v4, v5

    aget v5, v3, v7

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    aget v5, v3, v8

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v4, v5

    .line 130
    .local v4, "oneBigNumber":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v8, :cond_1

    .line 131
    add-int/lit8 v6, v5, 0x1

    aget v6, v3, v6

    if-ltz v6, :cond_0

    .line 132
    rsub-int/lit8 v6, v5, 0x2

    mul-int/lit8 v6, v6, 0x8

    shr-int v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 130
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 127
    .end local v3    # "a":[I
    .end local v4    # "oneBigNumber":I
    .end local v5    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 136
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 137
    .end local v0    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "in":Ljava/io/StringReader;
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public encode([B)Ljava/lang/String;
    .locals 9
    .param p1, "input"    # [B

    .line 94
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->computeResultingStringSize([B)I

    move-result v0

    .line 95
    .local v0, "stringSize":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 96
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 97
    .local v2, "outputCharCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_5

    .line 98
    array-length v4, p1

    sub-int/2addr v4, v3

    const/4 v5, 0x3

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 99
    .local v4, "remaining":I
    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gt v4, v7, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v3, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    :goto_1
    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    const/4 v7, 0x2

    if-gt v4, v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v3, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    :goto_2
    or-int/2addr v5, v6

    .line 102
    .local v5, "oneBigNumber":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    const/4 v7, 0x4

    if-ge v6, v7, :cond_3

    .line 103
    add-int/lit8 v7, v4, 0x1

    if-le v7, v6, :cond_2

    sget-object v7, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->SIXTY_FOUR_CHARS:[C

    rsub-int/lit8 v8, v6, 0x3

    mul-int/lit8 v8, v8, 0x6

    shr-int v8, v5, v8

    and-int/lit8 v8, v8, 0x3f

    aget-char v7, v7, v8

    goto :goto_4

    :cond_2
    const/16 v7, 0x3d

    :goto_4
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 102
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 105
    .end local v6    # "j":I
    :cond_3
    iget-boolean v6, p0, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->lineBreaks:Z

    if-eqz v6, :cond_4

    add-int/lit8 v2, v2, 0x4

    rem-int/lit8 v6, v2, 0x4c

    if-nez v6, :cond_4

    add-int/lit8 v6, v3, 0x3

    array-length v7, p1

    if-ge v6, v7, :cond_4

    .line 106
    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 97
    .end local v4    # "remaining":I
    .end local v5    # "oneBigNumber":I
    :cond_4
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    .line 109
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "s":Ljava/lang/String;
    return-object v3
.end method
