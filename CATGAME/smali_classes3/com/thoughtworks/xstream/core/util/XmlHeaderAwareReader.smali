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
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/PushbackInputStream;

    instance-of v1, p1, Ljava/io/PushbackInputStream;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/io/PushbackInputStream;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/PushbackInputStream;

    const/16 v2, 0x40

    invoke-direct {v1, p1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 61
    .local v0, "pin":[Ljava/io/PushbackInputStream;
    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->getHeader([Ljava/io/PushbackInputStream;)Ljava/util/Map;

    move-result-object v1

    .line 62
    .local v1, "header":Ljava/util/Map;
    const-string v3, "version"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->version:D

    .line 63
    new-instance v3, Ljava/io/InputStreamReader;

    aget-object v2, v0, v2

    const-string v4, "encoding"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    .line 64
    return-void
.end method

.method private getHeader([Ljava/io/PushbackInputStream;)Ljava/util/Map;
    .locals 16
    .param p1, "in"    # [Ljava/io/PushbackInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    .line 68
    .local v1, "header":Ljava/util/Map;
    const-string v0, "encoding"

    const-string v2, "utf-8"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v0, "version"

    const-string v2, "1.0"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "state":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 73
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 74
    .local v3, "i":I
    const/4 v4, 0x0

    .line 75
    .local v4, "ch":C
    const/4 v5, 0x0

    .line 76
    .local v5, "valueEnd":C
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .local v6, "name":Ljava/lang/StringBuffer;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 78
    .local v7, "value":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    move v15, v3

    move v3, v0

    move v0, v15

    .line 79
    .local v0, "i":I
    .local v3, "state":I
    .local v8, "escape":Z
    :goto_0
    const/4 v9, -0x1

    const/4 v10, 0x0

    if-eq v0, v9, :cond_17

    aget-object v11, p1, v10

    invoke-virtual {v11}, Ljava/io/PushbackInputStream;->read()I

    move-result v11

    move v0, v11

    if-eq v11, v9, :cond_17

    .line 80
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 81
    int-to-char v4, v0

    .line 82
    const/4 v9, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v3, :cond_e

    if-eq v3, v12, :cond_14

    if-eq v3, v11, :cond_b

    if-eq v3, v9, :cond_7

    const/4 v9, 0x4

    if-eq v3, v9, :cond_0

    goto/16 :goto_2

    .line 140
    :cond_0
    if-nez v5, :cond_3

    .line 141
    const/16 v9, 0x22

    if-eq v4, v9, :cond_2

    const/16 v9, 0x27

    if-ne v4, v9, :cond_1

    goto :goto_1

    .line 144
    :cond_1
    const/4 v0, -0x1

    goto/16 :goto_2

    .line 142
    :cond_2
    :goto_1
    move v5, v4

    goto/16 :goto_2

    .line 147
    :cond_3
    const/16 v9, 0x5c

    if-ne v4, v9, :cond_4

    if-nez v8, :cond_4

    .line 148
    const/4 v8, 0x1

    .line 149
    goto/16 :goto_2

    .line 151
    :cond_4
    if-ne v4, v5, :cond_5

    if-nez v8, :cond_5

    .line 152
    const/4 v5, 0x0

    .line 153
    const/4 v3, 0x3

    .line 154
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 156
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_2

    .line 158
    :cond_5
    const/4 v8, 0x0

    .line 159
    const/16 v9, 0xa

    if-eq v4, v9, :cond_6

    .line 160
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 162
    :cond_6
    const/4 v0, -0x1

    goto/16 :goto_2

    .line 124
    :cond_7
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_a

    .line 125
    const/16 v9, 0x3d

    if-ne v4, v9, :cond_8

    .line 126
    const/4 v3, 0x4

    goto/16 :goto_2

    .line 128
    :cond_8
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 129
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 130
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 132
    :cond_9
    const/4 v0, -0x1

    goto/16 :goto_2

    .line 135
    :cond_a
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_16

    .line 136
    const/4 v0, -0x1

    goto/16 :goto_2

    .line 109
    :cond_b
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    const-string v11, "?xml"

    if-nez v9, :cond_c

    .line 110
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_16

    .line 112
    const/4 v0, -0x1

    goto :goto_2

    .line 115
    :cond_c
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 116
    const/4 v3, 0x3

    .line 117
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_2

    .line 119
    :cond_d
    const/4 v0, -0x1

    .line 122
    goto :goto_2

    .line 84
    :cond_e
    const/16 v10, 0xef

    const/16 v13, 0xbf

    if-ne v4, v10, :cond_f

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    if-eq v10, v12, :cond_11

    :cond_f
    const/16 v10, 0xbb

    if-ne v4, v10, :cond_10

    .line 85
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    if-eq v10, v11, :cond_11

    :cond_10
    if-ne v4, v13, :cond_12

    .line 86
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    if-ne v10, v9, :cond_12

    .line 87
    :cond_11
    if-ne v4, v13, :cond_16

    .line 88
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 89
    const/4 v3, 0x1

    goto :goto_2

    .line 92
    :cond_12
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    if-le v9, v12, :cond_13

    .line 93
    const/4 v0, -0x1

    .line 94
    goto :goto_2

    .line 96
    :cond_13
    const/4 v3, 0x1

    .line 100
    :cond_14
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_16

    .line 101
    const/16 v9, 0x3c

    if-ne v4, v9, :cond_15

    .line 102
    const/4 v3, 0x2

    goto :goto_2

    .line 104
    :cond_15
    const/4 v0, -0x1

    .line 166
    :cond_16
    :goto_2
    goto/16 :goto_0

    .line 170
    :cond_17
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 171
    .local v9, "pushbackData":[B
    array-length v0, v9

    :goto_3
    add-int/lit8 v11, v0, -0x1

    .end local v0    # "i":I
    .local v11, "i":I
    if-lez v0, :cond_18

    .line 172
    aget-byte v12, v9, v11

    .line 174
    .local v12, "b":B
    :try_start_0
    aget-object v0, p1, v10

    invoke-virtual {v0, v12}, Ljava/io/PushbackInputStream;->unread(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    move v0, v11

    goto :goto_4

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "ex":Ljava/io/IOException;
    new-instance v13, Ljava/io/PushbackInputStream;

    aget-object v14, p1, v10

    add-int/lit8 v11, v11, 0x1

    invoke-direct {v13, v14, v11}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    aput-object v13, p1, v10

    move v0, v11

    .line 178
    .end local v11    # "i":I
    .end local v12    # "b":B
    .local v0, "i":I
    :goto_4
    goto :goto_3

    .line 179
    .end local v0    # "i":I
    .restart local v11    # "i":I
    :cond_18
    return-object v1
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

    .line 264
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
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
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1}, Ljava/io/InputStreamReader;->mark(I)V

    .line 203
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
    .param p1, "cbuf"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v0

    return v0
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

    .line 250
    return-void
.end method

.method public skip(J)J
    .locals 2
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStreamReader;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
