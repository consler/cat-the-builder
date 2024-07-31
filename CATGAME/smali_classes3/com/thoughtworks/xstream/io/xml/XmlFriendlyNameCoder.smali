.class public Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;
.super Ljava/lang/Object;
.source "XmlFriendlyNameCoder.java"

# interfaces
.implements Lcom/thoughtworks/xstream/io/naming/NameCoder;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;
    }
.end annotation


# static fields
.field private static final XML_NAME_CHAR_EXTRA_BOUNDS:[Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;

.field private static final XML_NAME_START_CHAR_BOUNDS:[Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;


# instance fields
.field private final dollarReplacement:Ljava/lang/String;

.field private transient escapeCache:Ljava/util/Map;

.field private final escapeCharReplacement:Ljava/lang/String;

.field private final hexPrefix:Ljava/lang/String;

.field private transient unescapeCache:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;-><init>()V

    .line 67
    .local v0, "list":Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(C)V

    .line 68
    const/16 v1, 0x41

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    .line 69
    const/16 v1, 0x61

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    .line 70
    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(C)V

    .line 72
    const/16 v1, 0xc0

    const/16 v2, 0xd6

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    .line 73
    const/16 v1, 0xd8

    const/16 v2, 0xf6

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    .line 74
    const/16 v1, 0xf8

    const/16 v2, 0x2ff

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    .line 75
    const/16 v1, 0x370

    const/16 v2, 0x37d

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    .line 76
    const/16 v1, 0x37f

    const/16 v2, 0x1fff

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    .line 77
    const/16 v1, 0x200c

    const/16 v2, 0x200d

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    .line 78
    const/16 v1, 0x2070

    const/16 v2, 0x218f

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    .line 79
    const/16 v1, 0x2c00

    const/16 v2, 0x2fef

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    .line 80
    const/16 v1, 0x3001

    const v2, 0xd7ff

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    .line 81
    const v1, 0xf900

    const v2, 0xfdcf

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    .line 82
    const v1, 0xfdf0

    const v2, 0xfffd

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    .line 83
    const/high16 v1, 0x10000

    const v2, 0xeffff

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    .line 84
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;

    check-cast v1, [Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;

    sput-object v1, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->XML_NAME_START_CHAR_BOUNDS:[Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;

    .line 86
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->clear()V

    .line 87
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(C)V

    .line 88
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(C)V

    .line 89
    const/16 v1, 0x30

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    .line 90
    const/16 v1, 0xb7

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(C)V

    .line 91
    const/16 v1, 0x300

    const/16 v2, 0x36f

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    .line 92
    const/16 v1, 0x203f

    const/16 v2, 0x2040

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->add(II)V

    .line 93
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;

    check-cast v1, [Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;

    sput-object v1, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->XML_NAME_CHAR_EXTRA_BOUNDS:[Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;

    .line 94
    .end local v0    # "list":Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 108
    const-string v0, "_-"

    const-string v1, "__"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "dollarReplacement"    # Ljava/lang/String;
    .param p2, "escapeCharReplacement"    # Ljava/lang/String;

    .line 120
    const-string v0, "_."

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "dollarReplacement"    # Ljava/lang/String;
    .param p2, "escapeCharReplacement"    # Ljava/lang/String;
    .param p3, "hexPrefix"    # Ljava/lang/String;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->dollarReplacement:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->escapeCharReplacement:Ljava/lang/String;

    .line 136
    iput-object p3, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->hexPrefix:Ljava/lang/String;

    .line 137
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->readResolve()Ljava/lang/Object;

    .line 138
    return-void
.end method

.method private decodeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->unescapeCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 219
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 220
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->dollarReplacement:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 221
    .local v1, "dollarReplacementFirstChar":C
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->escapeCharReplacement:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 222
    .local v3, "escapeReplacementFirstChar":C
    iget-object v4, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->hexPrefix:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 223
    .local v4, "hexPrefixFirstChar":C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 226
    .local v5, "length":I
    const/4 v6, 0x0

    .line 228
    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 229
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 231
    .local v7, "c":C
    if-eq v7, v1, :cond_1

    if-eq v7, v3, :cond_1

    if-ne v7, v4, :cond_0

    .line 235
    goto :goto_1

    .line 228
    .end local v7    # "c":C
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 239
    :cond_1
    :goto_1
    if-ne v6, v5, :cond_2

    .line 240
    return-object p1

    .line 244
    :cond_2
    new-instance v7, Ljava/lang/StringBuffer;

    add-int/lit8 v8, v5, 0x8

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 247
    .local v7, "result":Ljava/lang/StringBuffer;
    if-lez v6, :cond_3

    .line 248
    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    :cond_3
    :goto_2
    if-ge v6, v5, :cond_7

    .line 252
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 253
    .local v2, "c":C
    if-ne v2, v1, :cond_4

    iget-object v8, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->dollarReplacement:Ljava/lang/String;

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 254
    iget-object v8, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->dollarReplacement:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v6, v8

    .line 255
    const/16 v8, 0x24

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 256
    :cond_4
    if-ne v2, v4, :cond_5

    iget-object v8, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->hexPrefix:Ljava/lang/String;

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 257
    iget-object v8, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->hexPrefix:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v6, v8

    .line 258
    add-int/lit8 v8, v6, 0x4

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    int-to-char v2, v8

    .line 259
    add-int/lit8 v6, v6, 0x3

    .line 260
    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 261
    :cond_5
    if-ne v2, v3, :cond_6

    iget-object v8, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->escapeCharReplacement:Ljava/lang/String;

    .line 262
    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 263
    iget-object v8, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->escapeCharReplacement:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v6, v8

    .line 264
    const/16 v8, 0x5f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 266
    :cond_6
    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 251
    .end local v2    # "c":C
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 270
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->unescapeCache:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .end local v1    # "dollarReplacementFirstChar":C
    .end local v3    # "escapeReplacementFirstChar":C
    .end local v4    # "hexPrefixFirstChar":C
    .end local v5    # "length":I
    .end local v6    # "i":I
    .end local v7    # "result":Ljava/lang/StringBuffer;
    :cond_8
    return-object v0
.end method

.method private encodeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->escapeCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_d

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 174
    .local v1, "length":I
    const/4 v2, 0x0

    .line 176
    .local v2, "i":I
    :goto_0
    const/16 v3, 0x5f

    const/16 v4, 0x24

    if-ge v2, v1, :cond_1

    .line 177
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 178
    .local v5, "c":C
    if-eq v5, v4, :cond_1

    if-eq v5, v3, :cond_1

    const/16 v6, 0x1b

    if-le v5, v6, :cond_1

    const/16 v6, 0x7f

    if-lt v5, v6, :cond_0

    .line 179
    goto :goto_1

    .line 176
    .end local v5    # "c":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :cond_1
    :goto_1
    if-ne v2, v1, :cond_2

    .line 184
    return-object p1

    .line 188
    :cond_2
    new-instance v5, Ljava/lang/StringBuffer;

    add-int/lit8 v6, v1, 0x8

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 191
    .local v5, "result":Ljava/lang/StringBuffer;
    if-lez v2, :cond_3

    .line 192
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    :cond_3
    :goto_2
    if-ge v2, v1, :cond_c

    .line 196
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 197
    .local v6, "c":C
    if-ne v6, v4, :cond_4

    .line 198
    iget-object v7, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->dollarReplacement:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 199
    :cond_4
    if-ne v6, v3, :cond_5

    .line 200
    iget-object v7, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->escapeCharReplacement:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 201
    :cond_5
    if-nez v2, :cond_6

    invoke-static {v6}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->isXmlNameStartChar(I)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    if-lez v2, :cond_b

    invoke-static {v6}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->isXmlNameChar(I)Z

    move-result v7

    if-nez v7, :cond_b

    .line 202
    :cond_7
    iget-object v7, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->hexPrefix:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    const/16 v7, 0x10

    if-ge v6, v7, :cond_8

    const-string v7, "000"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 204
    :cond_8
    const/16 v7, 0x100

    if-ge v6, v7, :cond_9

    const-string v7, "00"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 205
    :cond_9
    const/16 v7, 0x1000

    if-ge v6, v7, :cond_a

    const-string v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    :cond_a
    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 208
    :cond_b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 195
    .end local v6    # "c":C
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 211
    :cond_c
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->escapeCache:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .end local v1    # "length":I
    .end local v2    # "i":I
    .end local v5    # "result":Ljava/lang/StringBuffer;
    :cond_d
    return-object v0
.end method

.method private static isInNameCharBounds(I[Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;)Z
    .locals 3
    .param p0, "cp"    # I
    .param p1, "nameCharBounds"    # [Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;

    .line 319
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 320
    aget-object v1, p1, v0

    .line 321
    .local v1, "p":Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;
    iget v2, v1, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;->min:I

    if-lt p0, v2, :cond_0

    iget v2, v1, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;->max:I

    if-gt p0, v2, :cond_0

    .line 322
    const/4 v2, 0x1

    return v2

    .line 319
    .end local v1    # "p":Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isXmlNameChar(I)Z
    .locals 1
    .param p0, "cp"    # I

    .line 312
    invoke-static {p0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->isXmlNameStartChar(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const/4 v0, 0x1

    return v0

    .line 315
    :cond_0
    sget-object v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->XML_NAME_CHAR_EXTRA_BOUNDS:[Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;

    invoke-static {p0, v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->isInNameCharBounds(I[Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;)Z

    move-result v0

    return v0
.end method

.method private static isXmlNameStartChar(I)Z
    .locals 1
    .param p0, "cp"    # I

    .line 308
    sget-object v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->XML_NAME_START_CHAR_BOUNDS:[Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;

    invoke-static {p0, v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->isInNameCharBounds(I[Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;)Z

    move-result v0

    return v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 288
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->createCacheMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->escapeCache:Ljava/util/Map;

    .line 289
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->createCacheMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->unescapeCache:Ljava/util/Map;

    .line 290
    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .line 278
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    .line 279
    .local v0, "coder":Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;
    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->readResolve()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    return-object v0

    .line 282
    .end local v0    # "coder":Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v2, "Cannot clone XmlFriendlyNameCoder"

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createCacheMap()Ljava/util/Map;
    .locals 1

    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public decodeAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "attributeName"    # Ljava/lang/String;

    .line 144
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decodeNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;

    .line 151
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 158
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->encodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 165
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->encodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
