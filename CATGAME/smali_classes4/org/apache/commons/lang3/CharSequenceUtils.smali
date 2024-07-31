.class public Lorg/apache/commons/lang3/CharSequenceUtils;
.super Ljava/lang/Object;
.source "CharSequenceUtils.java"


# static fields
.field private static final NOT_FOUND:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method static indexOf(Ljava/lang/CharSequence;II)I
    .locals 6
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "start"    # I

    .line 100
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 101
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0

    .line 103
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 104
    .local v0, "sz":I
    if-gez p2, :cond_1

    .line 105
    const/4 p2, 0x0

    .line 107
    :cond_1
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_3

    .line 108
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 109
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_2

    .line 110
    return v1

    .line 108
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "i":I
    :cond_3
    const v1, 0x10ffff

    if-gt p1, v1, :cond_5

    .line 116
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    .line 117
    .local v1, "chars":[C
    move v2, p2

    .local v2, "i":I
    :goto_1
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_5

    .line 118
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 119
    .local v3, "high":C
    add-int/lit8 v4, v2, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 120
    .local v4, "low":C
    const/4 v5, 0x0

    aget-char v5, v1, v5

    if-ne v3, v5, :cond_4

    const/4 v5, 0x1

    aget-char v5, v1, v5

    if-ne v4, v5, :cond_4

    .line 121
    return v2

    .line 117
    .end local v3    # "high":C
    .end local v4    # "low":C
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
    .end local v1    # "chars":[C
    .end local v2    # "i":I
    :cond_5
    const/4 v1, -0x1

    return v1
.end method

.method static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .line 137
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static lastIndexOf(Ljava/lang/CharSequence;II)I
    .locals 7
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "start"    # I

    .line 176
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 177
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    return v0

    .line 179
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 180
    .local v0, "sz":I
    const/4 v1, -0x1

    if-gez p2, :cond_1

    .line 181
    return v1

    .line 183
    :cond_1
    if-lt p2, v0, :cond_2

    .line 184
    add-int/lit8 p2, v0, -0x1

    .line 186
    :cond_2
    const/high16 v2, 0x10000

    if-ge p1, v2, :cond_4

    .line 187
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 188
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_3

    .line 189
    return v2

    .line 187
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 195
    .end local v2    # "i":I
    :cond_4
    const v2, 0x10ffff

    if-gt p1, v2, :cond_7

    .line 196
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    .line 198
    .local v2, "chars":[C
    add-int/lit8 v3, v0, -0x1

    if-ne p2, v3, :cond_5

    .line 199
    return v1

    .line 201
    :cond_5
    move v3, p2

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_7

    .line 202
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 203
    .local v4, "high":C
    add-int/lit8 v5, v3, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 204
    .local v5, "low":C
    const/4 v6, 0x0

    aget-char v6, v2, v6

    if-ne v6, v4, :cond_6

    const/4 v6, 0x1

    aget-char v6, v2, v6

    if-ne v6, v5, :cond_6

    .line 205
    return v3

    .line 201
    .end local v4    # "high":C
    .end local v5    # "low":C
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 209
    .end local v2    # "chars":[C
    .end local v3    # "i":I
    :cond_7
    return v1
.end method

.method static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .line 221
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z
    .locals 10
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "ignoreCase"    # Z
    .param p2, "thisStart"    # I
    .param p3, "substring"    # Ljava/lang/CharSequence;
    .param p4, "start"    # I
    .param p5, "length"    # I

    .line 264
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 265
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    move-object v4, p3

    check-cast v4, Ljava/lang/String;

    move v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0

    .line 267
    :cond_0
    move v0, p2

    .line 268
    .local v0, "index1":I
    move v1, p4

    .line 269
    .local v1, "index2":I
    move v2, p5

    .line 272
    .local v2, "tmpLen":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p2

    .line 273
    .local v3, "srcLen":I
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, p4

    .line 276
    .local v4, "otherLen":I
    const/4 v5, 0x0

    if-ltz p2, :cond_8

    if-ltz p4, :cond_8

    if-gez p5, :cond_1

    goto :goto_3

    .line 281
    :cond_1
    if-lt v3, p5, :cond_7

    if-ge v4, p5, :cond_2

    goto :goto_2

    .line 285
    :cond_2
    :goto_0
    add-int/lit8 v6, v2, -0x1

    .end local v2    # "tmpLen":I
    .local v6, "tmpLen":I
    if-lez v2, :cond_6

    .line 286
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index1":I
    .local v2, "index1":I
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 287
    .local v0, "c1":C
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "index2":I
    .local v7, "index2":I
    invoke-interface {p3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 289
    .local v1, "c2":C
    if-ne v0, v1, :cond_3

    .line 290
    goto :goto_1

    .line 293
    :cond_3
    if-nez p1, :cond_4

    .line 294
    return v5

    .line 298
    :cond_4
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    if-eq v8, v9, :cond_5

    .line 299
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    if-eq v8, v9, :cond_5

    .line 300
    return v5

    .line 302
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :cond_5
    nop

    .line 285
    :goto_1
    move v0, v2

    move v2, v6

    move v1, v7

    goto :goto_0

    .line 304
    .end local v2    # "index1":I
    .end local v7    # "index2":I
    .local v0, "index1":I
    .local v1, "index2":I
    :cond_6
    const/4 v2, 0x1

    return v2

    .line 282
    .end local v6    # "tmpLen":I
    .local v2, "tmpLen":I
    :cond_7
    :goto_2
    return v5

    .line 277
    :cond_8
    :goto_3
    return v5
.end method

.method public static subSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I

    .line 57
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static toCharArray(Ljava/lang/CharSequence;)[C
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 240
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 241
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0

    .line 243
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 244
    .local v0, "sz":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    new-array v1, v1, [C

    .line 245
    .local v1, "array":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 246
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method
