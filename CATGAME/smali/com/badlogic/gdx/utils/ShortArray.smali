.class public Lcom/badlogic/gdx/utils/ShortArray;
.super Ljava/lang/Object;
.source "ShortArray.java"


# instance fields
.field public items:[S

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ShortArray;-><init>(ZI)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;-><init>(ZI)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/ShortArray;)V
    .locals 4
    .param p1, "array"    # Lcom/badlogic/gdx/utils/ShortArray;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/ShortArray;->ordered:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->ordered:Z

    .line 54
    iget v0, p1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 55
    new-array v1, v0, [S

    iput-object v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 56
    iget-object v2, p1, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "ordered"    # Z
    .param p2, "capacity"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/ShortArray;->ordered:Z

    .line 46
    new-array v0, p2, [S

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 47
    return-void
.end method

.method public constructor <init>(Z[SII)V
    .locals 2
    .param p1, "ordered"    # Z
    .param p2, "array"    # [S
    .param p3, "startIndex"    # I
    .param p4, "count"    # I

    .line 70
    invoke-direct {p0, p1, p4}, Lcom/badlogic/gdx/utils/ShortArray;-><init>(ZI)V

    .line 71
    iput p4, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    return-void
.end method

.method public constructor <init>([S)V
    .locals 3
    .param p1, "array"    # [S

    .line 62
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/badlogic/gdx/utils/ShortArray;-><init>(Z[SII)V

    .line 63
    return-void
.end method

.method public static varargs with([S)Lcom/badlogic/gdx/utils/ShortArray;
    .locals 1
    .param p0, "array"    # [S

    .line 416
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ShortArray;-><init>([S)V

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 4
    .param p1, "value"    # I

    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 78
    .local v0, "items":[S
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v2, 0x8

    int-to-float v1, v1

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    move-result-object v0

    .line 79
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    int-to-short v2, p1

    aput-short v2, v0, v1

    .line 80
    return-void
.end method

.method public add(S)V
    .locals 4
    .param p1, "value"    # S

    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 84
    .local v0, "items":[S
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v2, 0x8

    int-to-float v1, v1

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    move-result-object v0

    .line 85
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    aput-short p1, v0, v1

    .line 86
    return-void
.end method

.method public add(SS)V
    .locals 4
    .param p1, "value1"    # S
    .param p2, "value2"    # S

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 90
    .local v0, "items":[S
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v2, v1, 0x1

    array-length v3, v0

    if-lt v2, v3, :cond_0

    const/16 v2, 0x8

    int-to-float v1, v1

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    move-result-object v0

    .line 91
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    aput-short p1, v0, v1

    .line 92
    add-int/lit8 v2, v1, 0x1

    aput-short p2, v0, v2

    .line 93
    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 94
    return-void
.end method

.method public add(SSS)V
    .locals 4
    .param p1, "value1"    # S
    .param p2, "value2"    # S
    .param p3, "value3"    # S

    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 98
    .local v0, "items":[S
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v2, v1, 0x2

    array-length v3, v0

    if-lt v2, v3, :cond_0

    const/16 v2, 0x8

    int-to-float v1, v1

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    move-result-object v0

    .line 99
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    aput-short p1, v0, v1

    .line 100
    add-int/lit8 v2, v1, 0x1

    aput-short p2, v0, v2

    .line 101
    add-int/lit8 v2, v1, 0x2

    aput-short p3, v0, v2

    .line 102
    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 103
    return-void
.end method

.method public add(SSSS)V
    .locals 4
    .param p1, "value1"    # S
    .param p2, "value2"    # S
    .param p3, "value3"    # S
    .param p4, "value4"    # S

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 107
    .local v0, "items":[S
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v2, v1, 0x3

    array-length v3, v0

    if-lt v2, v3, :cond_0

    const/16 v2, 0x8

    int-to-float v1, v1

    const v3, 0x3fe66666    # 1.8f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    move-result-object v0

    .line 108
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    aput-short p1, v0, v1

    .line 109
    add-int/lit8 v2, v1, 0x1

    aput-short p2, v0, v2

    .line 110
    add-int/lit8 v2, v1, 0x2

    aput-short p3, v0, v2

    .line 111
    add-int/lit8 v2, v1, 0x3

    aput-short p4, v0, v2

    .line 112
    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 113
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/ShortArray;)V
    .locals 3
    .param p1, "array"    # Lcom/badlogic/gdx/utils/ShortArray;

    .line 116
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget v1, p1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/badlogic/gdx/utils/ShortArray;->addAll([SII)V

    .line 117
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/ShortArray;II)V
    .locals 3
    .param p1, "array"    # Lcom/badlogic/gdx/utils/ShortArray;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 120
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-gt v0, v1, :cond_0

    .line 122
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/ShortArray;->addAll([SII)V

    .line 123
    return-void

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset + length must be <= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs addAll([S)V
    .locals 2
    .param p1, "array"    # [S

    .line 126
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/ShortArray;->addAll([SII)V

    .line 127
    return-void
.end method

.method public addAll([SII)V
    .locals 5
    .param p1, "array"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 131
    .local v0, "items":[S
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/2addr v1, p3

    .line 132
    .local v1, "sizeNeeded":I
    array-length v2, v0

    if-le v1, v2, :cond_0

    const/16 v2, 0x8

    int-to-float v3, v1

    const/high16 v4, 0x3fe00000    # 1.75f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    move-result-object v0

    .line 133
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 135
    return-void
.end method

.method public clear()V
    .locals 1

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 286
    return-void
.end method

.method public contains(S)Z
    .locals 4
    .param p1, "value"    # S

    .line 179
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 180
    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 181
    .local v2, "items":[S
    :goto_0
    if-ltz v0, :cond_1

    .line 182
    add-int/lit8 v3, v0, -0x1

    .end local v0    # "i":I
    .local v3, "i":I
    aget-short v0, v2, v0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    move v0, v3

    goto :goto_0

    .line 183
    .end local v3    # "i":I
    .restart local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public ensureCapacity(I)[S
    .locals 3
    .param p1, "additionalCapacity"    # I

    .line 300
    if-ltz p1, :cond_1

    .line 301
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/2addr v0, p1

    .line 302
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    array-length v1, v1

    if-le v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    return-object v1

    .line 300
    .end local v0    # "sizeNeeded":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additionalCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;

    .line 375
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 376
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->ordered:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 377
    :cond_1
    instance-of v1, p1, Lcom/badlogic/gdx/utils/ShortArray;

    if-nez v1, :cond_2

    return v2

    .line 378
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/ShortArray;

    .line 379
    .local v1, "array":Lcom/badlogic/gdx/utils/ShortArray;
    iget-boolean v3, v1, Lcom/badlogic/gdx/utils/ShortArray;->ordered:Z

    if-nez v3, :cond_3

    return v2

    .line 380
    :cond_3
    iget v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 381
    .local v3, "n":I
    iget v4, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-eq v3, v4, :cond_4

    return v2

    .line 382
    :cond_4
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .local v4, "items1":[S
    iget-object v5, v1, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 383
    .local v5, "items2":[S
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_6

    .line 384
    aget-short v7, v4, v6

    aget-short v8, v5, v6

    if-eq v7, v8, :cond_5

    return v2

    .line 383
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 385
    .end local v6    # "i":I
    :cond_6
    return v0
.end method

.method public first()S
    .locals 2

    .line 270
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    return v0

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)S
    .locals 3
    .param p1, "index"    # I

    .line 138
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-ge p1, v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    aget-short v0, v0, p1

    return v0

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 6

    .line 366
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->ordered:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 368
    .local v0, "items":[S
    const/4 v1, 0x1

    .line 369
    .local v1, "h":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 370
    mul-int/lit8 v4, v1, 0x1f

    aget-short v5, v0, v2

    add-int v1, v4, v5

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 371
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_1
    return v1
.end method

.method public incr(IS)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # S

    .line 148
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-ge p1, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    aget-short v1, v0, p1

    add-int/2addr v1, p2

    int-to-short v1, v1

    aput-short v1, v0, p1

    .line 150
    return-void

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOf(S)I
    .locals 4
    .param p1, "value"    # S

    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 188
    .local v0, "items":[S
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 189
    aget-short v3, v0, v1

    if-ne v3, p1, :cond_0

    return v1

    .line 188
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public insert(IS)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # S

    .line 158
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-gt p1, v0, :cond_2

    .line 159
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 160
    .local v1, "items":[S
    array-length v2, v1

    if-ne v0, v2, :cond_0

    const/16 v2, 0x8

    int-to-float v0, v0

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    move-result-object v1

    .line 161
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->ordered:Z

    if-eqz v0, :cond_1

    .line 162
    add-int/lit8 v0, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 164
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    aget-short v2, v1, p1

    aput-short v2, v1, v0

    .line 165
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 166
    aput-short p2, v1, p1

    .line 167
    return-void

    .line 158
    .end local v1    # "items":[S
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be > size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 281
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastIndexOf(C)I
    .locals 3
    .param p1, "value"    # C

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 195
    .local v0, "items":[S
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 196
    aget-short v2, v0, v1

    if-ne v2, p1, :cond_0

    return v1

    .line 195
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 197
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public mul(IS)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # S

    .line 153
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-ge p1, v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    aget-short v1, v0, p1

    mul-int/2addr v1, p2

    int-to-short v1, v1

    aput-short v1, v0, p1

    .line 155
    return-void

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 276
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public peek()S
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-short v0, v0, v1

    return v0
.end method

.method public pop()S
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    aget-short v0, v0, v1

    return v0
.end method

.method public random()S
    .locals 3

    .line 355
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 356
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    aget-short v0, v2, v0

    return v0
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/ShortArray;)Z
    .locals 8
    .param p1, "array"    # Lcom/badlogic/gdx/utils/ShortArray;

    .line 242
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 243
    .local v0, "size":I
    move v1, v0

    .line 244
    .local v1, "startSize":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 245
    .local v2, "items":[S
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, p1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 246
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v5

    .line 247
    .local v5, "item":S
    const/4 v6, 0x0

    .local v6, "ii":I
    :goto_1
    if-ge v6, v0, :cond_1

    .line 248
    aget-short v7, v2, v6

    if-ne v5, v7, :cond_0

    .line 249
    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    .line 250
    add-int/lit8 v0, v0, -0x1

    .line 251
    goto :goto_2

    .line 247
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 245
    .end local v5    # "item":S
    .end local v6    # "ii":I
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 255
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_2
    if-eq v0, v1, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    return v3
.end method

.method public removeIndex(I)S
    .locals 4
    .param p1, "index"    # I

    .line 213
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-ge p1, v0, :cond_1

    .line 214
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 215
    .local v1, "items":[S
    aget-short v2, v1, p1

    .line 216
    .local v2, "value":S
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 217
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->ordered:Z

    if-eqz v3, :cond_0

    .line 218
    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 220
    :cond_0
    aget-short v0, v1, v0

    aput-short v0, v1, p1

    .line 221
    :goto_0
    return v2

    .line 213
    .end local v1    # "items":[S
    .end local v2    # "value":S
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeRange(II)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 226
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 227
    .local v0, "n":I
    if-ge p2, v0, :cond_2

    .line 228
    if-gt p1, p2, :cond_1

    .line 229
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    .local v1, "count":I
    sub-int v2, v0, v1

    .line 230
    .local v2, "lastIndex":I
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->ordered:Z

    if-eqz v3, :cond_0

    .line 231
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    add-int v4, p1, v1

    add-int v5, p1, v1

    sub-int v5, v0, v5

    invoke-static {v3, v4, v3, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 233
    :cond_0
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 234
    .local v3, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    sub-int v5, v0, v3

    invoke-static {v4, v3, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    .end local v3    # "i":I
    :goto_0
    sub-int v3, v0, v1

    iput v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 237
    return-void

    .line 228
    .end local v1    # "count":I
    .end local v2    # "lastIndex":I
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start can\'t be > end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end can\'t be >= size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeValue(S)Z
    .locals 4
    .param p1, "value"    # S

    .line 201
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 202
    .local v0, "items":[S
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 203
    aget-short v3, v0, v1

    if-ne v3, p1, :cond_0

    .line 204
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    .line 205
    const/4 v3, 0x1

    return v3

    .line 202
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected resize(I)[S
    .locals 4
    .param p1, "newSize"    # I

    .line 316
    new-array v0, p1, [S

    .line 317
    .local v0, "newItems":[S
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 318
    .local v1, "items":[S
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    iput-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 320
    return-object v0
.end method

.method public reverse()V
    .locals 7

    .line 328
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 329
    .local v0, "items":[S
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v3, v2, -0x1

    .local v3, "lastIndex":I
    div-int/lit8 v2, v2, 0x2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 330
    sub-int v4, v3, v1

    .line 331
    .local v4, "ii":I
    aget-short v5, v0, v1

    .line 332
    .local v5, "temp":S
    aget-short v6, v0, v4

    aput-short v6, v0, v1

    .line 333
    aput-short v5, v0, v4

    .line 329
    .end local v4    # "ii":I
    .end local v5    # "temp":S
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "lastIndex":I
    :cond_0
    return-void
.end method

.method public set(IS)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # S

    .line 143
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-ge p1, v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    aput-short p2, v0, p1

    .line 145
    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSize(I)[S
    .locals 3
    .param p1, "newSize"    # I

    .line 309
    if-ltz p1, :cond_1

    .line 310
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    array-length v0, v0

    if-le p1, v0, :cond_0

    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    .line 311
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 312
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    return-object v0

    .line 309
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newSize must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shrink()[S
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ShortArray;->resize(I)[S

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    return-object v0
.end method

.method public shuffle()V
    .locals 5

    .line 338
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 339
    .local v0, "items":[S
    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 340
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v2

    .line 341
    .local v2, "ii":I
    aget-short v3, v0, v1

    .line 342
    .local v3, "temp":S
    aget-short v4, v0, v2

    aput-short v4, v0, v1

    .line 343
    aput-short v3, v0, v2

    .line 339
    .end local v2    # "ii":I
    .end local v3    # "temp":S
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 345
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public sort()V
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->sort([SII)V

    .line 325
    return-void
.end method

.method public swap(II)V
    .locals 4
    .param p1, "first"    # I
    .param p2, "second"    # I

    .line 170
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    const-string v1, " >= "

    if-ge p1, v0, :cond_1

    .line 171
    if-ge p2, v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 173
    .local v0, "items":[S
    aget-short v1, v0, p1

    .line 174
    .local v1, "firstValue":S
    aget-short v2, v0, p2

    aput-short v2, v0, p1

    .line 175
    aput-short v1, v0, p2

    .line 176
    return-void

    .line 171
    .end local v0    # "items":[S
    .end local v1    # "firstValue":S
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "second can\'t be >= size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first can\'t be >= size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toArray()[S
    .locals 4

    .line 360
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    new-array v1, v0, [S

    .line 361
    .local v1, "array":[S
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 389
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 391
    .local v0, "items":[S
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 392
    .local v1, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 393
    const/4 v2, 0x0

    aget-short v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 394
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-ge v2, v3, :cond_1

    .line 395
    const-string v3, ", "

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 396
    aget-short v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 394
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 398
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 399
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;

    .line 403
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 405
    .local v0, "items":[S
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 406
    .local v1, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/4 v2, 0x0

    aget-short v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 407
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-ge v2, v3, :cond_1

    .line 408
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 409
    aget-short v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 407
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 411
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public truncate(I)V
    .locals 1
    .param p1, "newSize"    # I

    .line 350
    iget v0, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-le v0, p1, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 351
    :cond_0
    return-void
.end method
