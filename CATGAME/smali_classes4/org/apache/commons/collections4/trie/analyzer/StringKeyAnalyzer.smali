.class public Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;
.super Lorg/apache/commons/collections4/trie/KeyAnalyzer;
.source "StringKeyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/trie/KeyAnalyzer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;

.field public static final LENGTH:I = 0x10

.field private static final MSB:I = 0x8000

.field private static final serialVersionUID:J = -0x6198478d83fdbdfdL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;

    invoke-direct {v0}, Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;->INSTANCE:Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/apache/commons/collections4/trie/KeyAnalyzer;-><init>()V

    return-void
.end method

.method private static mask(I)I
    .locals 1
    .param p0, "bit"    # I

    .line 41
    const v0, 0x8000

    ushr-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public bridge synthetic bitIndex(Ljava/lang/Object;IILjava/lang/Object;II)I
    .locals 7

    .line 26
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    move-object v4, p4

    check-cast v4, Ljava/lang/String;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;->bitIndex(Ljava/lang/String;IILjava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public bitIndex(Ljava/lang/String;IILjava/lang/String;II)I
    .locals 16
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "offsetInBits"    # I
    .param p3, "lengthInBits"    # I
    .param p4, "other"    # Ljava/lang/String;
    .param p5, "otherOffsetInBits"    # I
    .param p6, "otherLengthInBits"    # I

    .line 58
    move-object/from16 v0, p4

    const/4 v1, 0x1

    .line 60
    .local v1, "allNull":Z
    rem-int/lit8 v2, p2, 0x10

    if-nez v2, :cond_7

    rem-int/lit8 v2, p5, 0x10

    if-nez v2, :cond_7

    rem-int/lit8 v2, p3, 0x10

    if-nez v2, :cond_7

    rem-int/lit8 v2, p6, 0x10

    if-nez v2, :cond_7

    .line 65
    div-int/lit8 v2, p2, 0x10

    .line 66
    .local v2, "beginIndex1":I
    div-int/lit8 v3, p5, 0x10

    .line 68
    .local v3, "beginIndex2":I
    div-int/lit8 v4, p3, 0x10

    add-int/2addr v4, v2

    .line 69
    .local v4, "endIndex1":I
    div-int/lit8 v5, p6, 0x10

    add-int/2addr v5, v3

    .line 71
    .local v5, "endIndex2":I
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 76
    .local v6, "length":I
    const/4 v7, 0x0

    .local v7, "k":C
    const/4 v8, 0x0

    .line 77
    .local v8, "f":C
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v6, :cond_5

    .line 78
    add-int v10, v2, v9

    .line 79
    .local v10, "index1":I
    add-int v11, v3, v9

    .line 81
    .local v11, "index2":I
    if-lt v10, v4, :cond_0

    .line 82
    const/4 v7, 0x0

    move-object/from16 v12, p1

    goto :goto_1

    .line 84
    :cond_0
    move-object/from16 v12, p1

    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 87
    :goto_1
    if-eqz v0, :cond_2

    if-lt v11, v5, :cond_1

    goto :goto_2

    .line 90
    :cond_1
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_3

    .line 88
    :cond_2
    :goto_2
    const/4 v8, 0x0

    .line 93
    :goto_3
    if-eq v7, v8, :cond_3

    .line 94
    xor-int v13, v7, v8

    .line 95
    .local v13, "x":I
    mul-int/lit8 v14, v9, 0x10

    invoke-static {v13}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x10

    return v14

    .line 98
    .end local v13    # "x":I
    :cond_3
    if-eqz v7, :cond_4

    .line 99
    const/4 v1, 0x0

    .line 77
    .end local v10    # "index1":I
    .end local v11    # "index2":I
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v12, p1

    .line 104
    .end local v9    # "i":I
    if-eqz v1, :cond_6

    .line 105
    const/4 v9, -0x1

    return v9

    .line 109
    :cond_6
    const/4 v9, -0x2

    return v9

    .line 60
    .end local v2    # "beginIndex1":I
    .end local v3    # "beginIndex2":I
    .end local v4    # "endIndex1":I
    .end local v5    # "endIndex2":I
    .end local v6    # "length":I
    .end local v7    # "k":C
    .end local v8    # "f":C
    :cond_7
    move-object/from16 v12, p1

    .line 62
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The offsets and lengths must be at Character boundaries"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bitsPerElement()I
    .locals 1

    .line 46
    const/16 v0, 0x10

    return v0
.end method

.method public bridge synthetic isBitSet(Ljava/lang/Object;II)Z
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;->isBitSet(Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public isBitSet(Ljava/lang/String;II)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitIndex"    # I
    .param p3, "lengthInBits"    # I

    .line 114
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-lt p2, p3, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    div-int/lit8 v1, p2, 0x10

    .line 119
    .local v1, "index":I
    rem-int/lit8 v2, p2, 0x10

    .line 121
    .local v2, "bit":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v2}, Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;->mask(I)I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 115
    .end local v1    # "index":I
    .end local v2    # "bit":I
    :cond_2
    :goto_0
    return v0
.end method

.method public bridge synthetic isPrefix(Ljava/lang/Object;IILjava/lang/Object;)Z
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/String;

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;->isPrefix(Ljava/lang/String;IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isPrefix(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "offsetInBits"    # I
    .param p3, "lengthInBits"    # I
    .param p4, "key"    # Ljava/lang/String;

    .line 127
    rem-int/lit8 v0, p2, 0x10

    if-nez v0, :cond_0

    rem-int/lit8 v0, p3, 0x10

    if-nez v0, :cond_0

    .line 132
    div-int/lit8 v0, p2, 0x10

    div-int/lit8 v1, p3, 0x10

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "s1":Ljava/lang/String;
    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 128
    .end local v0    # "s1":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot determine prefix outside of Character boundaries"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic lengthInBits(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/trie/analyzer/StringKeyAnalyzer;->lengthInBits(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public lengthInBits(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 51
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
