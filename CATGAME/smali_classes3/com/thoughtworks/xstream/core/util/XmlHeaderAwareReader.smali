.class public final Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;
.super Ljava/io/Reader;
.source "XmlHeaderAwareReader.java"


# static fields
.field private static final KEY_ENCODING:Ljava/lang/String; = "encoding"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final STATE_ATTR_NAME:I = 0x3

.field private static final STATE_ATTR_VALUE:I = 0x4

.field private static final STATE_AWAIT_XML_HEADER:I = 0x2

.field private static final STATE_BOM:I = 0x0

.field private static final STATE_START:I = 0x1

.field private static final XML_TOKEN:Ljava/lang/String; = "?xml"


# instance fields
.field private final reader:Ljava/io/InputStreamReader;

.field private final version:D


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/PushbackInputStream;

    .line 58
    instance-of v1, p1, Ljava/io/PushbackInputStream;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/io/PushbackInputStream;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/PushbackInputStream;

    const/16 v2, 0x40

    invoke-direct {v1, p1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v1

    :goto_0
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 61
    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->getHeader([Ljava/io/PushbackInputStream;)Ljava/util/Map;

    move-result-object p1

    const-string v2, "version"

    .line 62
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->version:D

    .line 63
    new-instance v2, Ljava/io/InputStreamReader;

    aget-object v0, v0, v1

    const-string v1, "encoding"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v2, v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    return-void
.end method

.method private getHeader([Ljava/io/PushbackInputStream;)Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "encoding"

    const-string v2, "utf-8"

    .line 68
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    const-string v2, "1.0"

    .line 69
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 76
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :cond_0
    :goto_0
    const/4 v9, -0x1

    if-eq v5, v9, :cond_14

    .line 79
    aget-object v5, p1, v4

    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v5

    if-eq v5, v9, :cond_14

    .line 80
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-char v10, v5

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x1

    if-eqz v6, :cond_c

    if-eq v6, v13, :cond_12

    if-eq v6, v11, :cond_a

    const/4 v11, 0x4

    if-eq v6, v12, :cond_7

    if-eq v6, v11, :cond_1

    goto :goto_0

    :cond_1
    if-nez v7, :cond_3

    const/16 v11, 0x22

    if-eq v10, v11, :cond_2

    const/16 v11, 0x27

    if-ne v10, v11, :cond_13

    :cond_2
    move v7, v10

    goto :goto_0

    :cond_3
    const/16 v11, 0x5c

    if-ne v10, v11, :cond_4

    if-nez v8, :cond_4

    move v8, v13

    goto :goto_0

    :cond_4
    if-ne v10, v7, :cond_5

    if-nez v8, :cond_5

    .line 154
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 156
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    move v7, v4

    goto :goto_1

    :cond_5
    const/16 v8, 0xa

    if-eq v10, v8, :cond_6

    .line 160
    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v8, v4

    goto :goto_0

    :cond_6
    move v8, v4

    goto/16 :goto_3

    .line 124
    :cond_7
    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v12

    if-nez v12, :cond_9

    const/16 v12, 0x3d

    if-ne v10, v12, :cond_8

    goto/16 :goto_2

    .line 128
    :cond_8
    invoke-static {v10}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v10

    .line 129
    invoke-static {v10}, Ljava/lang/Character;->isLetter(C)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 130
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 135
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_0

    goto/16 :goto_3

    .line 109
    :cond_a
    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    const-string v13, "?xml"

    if-nez v11, :cond_b

    .line 110
    invoke-static {v10}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_3

    .line 115
    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 117
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_1
    move v6, v12

    goto/16 :goto_0

    :cond_c
    const/16 v14, 0xef

    const/16 v15, 0xbf

    if-ne v10, v14, :cond_d

    .line 84
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v14

    if-eq v14, v13, :cond_f

    :cond_d
    const/16 v14, 0xbb

    if-ne v10, v14, :cond_e

    .line 85
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v14

    if-eq v14, v11, :cond_f

    :cond_e
    if-ne v10, v15, :cond_10

    .line 86
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v14

    if-ne v14, v12, :cond_10

    :cond_f
    if-ne v10, v15, :cond_0

    .line 88
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    move v6, v13

    goto/16 :goto_0

    .line 92
    :cond_10
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    if-le v12, v13, :cond_11

    goto :goto_3

    :cond_11
    move v6, v13

    .line 100
    :cond_12
    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v12

    if-nez v12, :cond_0

    const/16 v12, 0x3c

    if-ne v10, v12, :cond_13

    :goto_2
    move v6, v11

    goto/16 :goto_0

    :cond_13
    :goto_3
    move v5, v9

    goto/16 :goto_0

    .line 170
    :cond_14
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 171
    array-length v2, v1

    :goto_4
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_15

    .line 172
    aget-byte v2, v1, v3

    .line 174
    :try_start_0
    aget-object v5, p1, v4

    invoke-virtual {v5, v2}, Ljava/io/PushbackInputStream;->unread(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 176
    :catch_0
    new-instance v2, Ljava/io/PushbackInputStream;

    aget-object v5, p1, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v5, v3}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    aput-object v2, p1, v4

    :goto_5
    move v2, v3

    goto :goto_4

    :cond_15
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()D
    .locals 2

    .line 195
    iget-wide v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->version:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public mark(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1}, Ljava/io/InputStreamReader;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->read()I

    move-result v0

    return v0
.end method

.method public read([C)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1}, Ljava/io/InputStreamReader;->read([C)I

    move-result p1

    return p1
.end method

.method public read([CII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result p1

    return p1
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->ready()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStreamReader;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
