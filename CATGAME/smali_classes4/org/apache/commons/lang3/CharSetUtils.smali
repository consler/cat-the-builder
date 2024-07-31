.class public Lorg/apache/commons/lang3/CharSetUtils;
.super Ljava/lang/Object;
.source "CharSetUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static varargs containsAny(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;

    .line 118
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 121
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object v0

    .line 122
    .local v0, "chars":Lorg/apache/commons/lang3/CharSet;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-char v5, v2, v4

    .line 123
    .local v5, "c":C
    invoke-virtual {v0, v5}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 124
    const/4 v1, 0x1

    return v1

    .line 122
    .end local v5    # "c":C
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    :cond_2
    return v1

    .line 119
    .end local v0    # "chars":Lorg/apache/commons/lang3/CharSet;
    :cond_3
    :goto_1
    return v1
.end method

.method public static varargs count(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;

    .line 151
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 154
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object v0

    .line 155
    .local v0, "chars":Lorg/apache/commons/lang3/CharSet;
    const/4 v2, 0x0

    .line 156
    .local v2, "count":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_2

    aget-char v5, v3, v1

    .line 157
    .local v5, "c":C
    invoke-virtual {v0, v5}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 158
    add-int/lit8 v2, v2, 0x1

    .line 156
    .end local v5    # "c":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_2
    return v2

    .line 152
    .end local v0    # "chars":Lorg/apache/commons/lang3/CharSet;
    .end local v2    # "count":I
    :cond_3
    :goto_1
    return v1
.end method

.method private static deepEmpty([Ljava/lang/String;)Z
    .locals 5
    .param p0, "strings"    # [Ljava/lang/String;

    .line 251
    if-eqz p0, :cond_1

    .line 252
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 253
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    return v1

    .line 252
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static varargs delete(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;

    .line 216
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSetUtils;->modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 217
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static varargs keep(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;

    .line 186
    if-nez p0, :cond_0

    .line 187
    const/4 v0, 0x0

    return-object v0

    .line 189
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 192
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSetUtils;->modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 190
    :cond_2
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method private static modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;
    .param p2, "expect"    # Z

    .line 232
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object v0

    .line 233
    .local v0, "chars":Lorg/apache/commons/lang3/CharSet;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 234
    .local v1, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 235
    .local v2, "chrs":[C
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-char v5, v2, v4

    .line 236
    .local v5, "chr":C
    invoke-virtual {v0, v5}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v6

    if-ne v6, p2, :cond_0

    .line 237
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    .end local v5    # "chr":C
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static varargs squeeze(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;

    .line 64
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 67
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object v0

    .line 68
    .local v0, "chars":Lorg/apache/commons/lang3/CharSet;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 69
    .local v1, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 70
    .local v2, "chrs":[C
    array-length v3, v2

    .line 71
    .local v3, "sz":I
    const/4 v4, 0x0

    aget-char v4, v2, v4

    .line 72
    .local v4, "lastChar":C
    const/16 v5, 0x20

    .line 73
    .local v5, "ch":C
    const/4 v6, 0x0

    .line 74
    .local v6, "inChars":Ljava/lang/Character;
    const/4 v7, 0x0

    .line 75
    .local v7, "notInChars":Ljava/lang/Character;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_5

    .line 77
    aget-char v5, v2, v8

    .line 78
    if-ne v5, v4, :cond_4

    .line 79
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v9

    if-ne v5, v9, :cond_1

    .line 80
    goto :goto_1

    .line 82
    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v9

    if-eq v5, v9, :cond_4

    .line 83
    :cond_2
    invoke-virtual {v0, v5}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 84
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    .line 85
    goto :goto_1

    .line 87
    :cond_3
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    .line 90
    :cond_4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    move v4, v5

    .line 76
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 93
    .end local v8    # "i":I
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 65
    .end local v0    # "chars":Lorg/apache/commons/lang3/CharSet;
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v2    # "chrs":[C
    .end local v3    # "sz":I
    .end local v4    # "lastChar":C
    .end local v5    # "ch":C
    .end local v6    # "inChars":Ljava/lang/Character;
    .end local v7    # "notInChars":Ljava/lang/Character;
    :cond_6
    :goto_2
    return-object p0
.end method
