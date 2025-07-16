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
    .locals 3

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->SIXTY_FOUR_CHARS:[C

    const/16 v0, 0x7b

    new-array v0, v0, [I

    .line 62
    sput-object v0, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->REVERSE_MAPPING:[I

    const/4 v0, 0x0

    .line 66
    :goto_0
    sget-object v1, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->SIXTY_FOUR_CHARS:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 67
    sget-object v2, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->REVERSE_MAPPING:[I

    aget-char v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput v0, v2, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/core/util/Base64Encoder;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean p1, p0, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->lineBreaks:Z

    return-void
.end method

.method private mapCharToInt(Ljava/io/Reader;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    :cond_0
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 145
    sget-object v2, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->REVERSE_MAPPING:[I

    aget v2, v2, v0

    if-eqz v2, :cond_1

    add-int/lit8 v2, v2, -0x1

    return v2

    :cond_1
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_0

    :cond_2
    return v1
.end method


# virtual methods
.method computeResultingStringSize([B)I
    .locals 1

    .line 115
    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    array-length p1, p1

    rem-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    add-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x4

    .line 117
    iget-boolean p1, p0, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->lineBreaks:Z

    if-eqz p1, :cond_1

    .line 118
    div-int/lit8 p1, v0, 0x4c

    add-int/2addr v0, p1

    :cond_1
    return v0
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 10

    .line 125
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 126
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    .line 127
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    const/4 v4, 0x4

    new-array v4, v4, [I

    .line 128
    invoke-direct {p0, v1}, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->mapCharToInt(Ljava/io/Reader;)I

    move-result v5

    aput v5, v4, v2

    invoke-direct {p0, v1}, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->mapCharToInt(Ljava/io/Reader;)I

    move-result v5

    const/4 v6, 0x1

    aput v5, v4, v6

    invoke-direct {p0, v1}, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->mapCharToInt(Ljava/io/Reader;)I

    move-result v5

    const/4 v7, 0x2

    aput v5, v4, v7

    invoke-direct {p0, v1}, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->mapCharToInt(Ljava/io/Reader;)I

    move-result v5

    const/4 v8, 0x3

    aput v5, v4, v8

    aget v9, v4, v2

    and-int/lit8 v9, v9, 0x3f

    shl-int/lit8 v9, v9, 0x12

    aget v6, v4, v6

    and-int/lit8 v6, v6, 0x3f

    shl-int/lit8 v6, v6, 0xc

    or-int/2addr v6, v9

    aget v7, v4, v7

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v6, v7

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v6

    move v6, v2

    :goto_1
    if-ge v6, v8, :cond_1

    add-int/lit8 v7, v6, 0x1

    .line 131
    aget v9, v4, v7

    if-ltz v9, :cond_0

    rsub-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, 0x8

    shr-int v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    .line 132
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_0
    move v6, v7

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 138
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode([B)Ljava/lang/String;
    .locals 9

    .line 94
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->computeResultingStringSize([B)I

    move-result v0

    .line 95
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    .line 97
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_5

    .line 98
    array-length v4, p1

    sub-int/2addr v4, v2

    const/4 v5, 0x3

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 99
    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    const/4 v6, 0x1

    if-gt v4, v6, :cond_0

    move v6, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    :goto_1
    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    const/4 v6, 0x2

    if-gt v4, v6, :cond_1

    move v6, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v2, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    :goto_2
    or-int/2addr v5, v6

    move v6, v0

    :goto_3
    const/4 v7, 0x4

    if-ge v6, v7, :cond_3

    add-int/lit8 v7, v4, 0x1

    if-le v7, v6, :cond_2

    .line 103
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

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 105
    :cond_3
    iget-boolean v4, p0, Lcom/thoughtworks/xstream/core/util/Base64Encoder;->lineBreaks:Z

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x4

    rem-int/lit8 v4, v3, 0x4c

    if-nez v4, :cond_4

    add-int/lit8 v4, v2, 0x3

    array-length v5, p1

    if-ge v4, v5, :cond_4

    const/16 v4, 0xa

    .line 106
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    .line 109
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
