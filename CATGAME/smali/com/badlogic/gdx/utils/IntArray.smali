.class public Lcom/badlogic/gdx/utils/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"


# instance fields
.field public items:[I

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(ZI)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(ZI)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/IntArray;)V
    .locals 4
    .param p1, "array"    # Lcom/badlogic/gdx/utils/IntArray;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    .line 54
    iget v0, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 55
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 56
    iget-object v2, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

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
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    .line 46
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 47
    return-void
.end method

.method public constructor <init>(Z[III)V
    .locals 2
    .param p1, "ordered"    # Z
    .param p2, "array"    # [I
    .param p3, "startIndex"    # I
    .param p4, "count"    # I

    .line 70
    invoke-direct {p0, p1, p4}, Lcom/badlogic/gdx/utils/IntArray;-><init>(ZI)V

    .line 71
    iput p4, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    return-void
.end method

.method public constructor <init>([I)V
    .locals 3
    .param p1, "array"    # [I

    .line 62
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>(Z[III)V

    .line 63
    return-void
.end method

.method public static varargs with([I)Lcom/badlogic/gdx/utils/IntArray;
    .locals 1
    .param p0, "array"    # [I

    .line 409
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntArray;-><init>([I)V

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 4
    .param p1, "value"    # I

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 77
    .local v0, "items":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v2, 0x8

    int-to-float v1, v1

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    move-result-object v0

    .line 78
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    aput p1, v0, v1

    .line 79
    return-void
.end method

.method public add(II)V
    .locals 4
    .param p1, "value1"    # I
    .param p2, "value2"    # I

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 83
    .local v0, "items":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

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

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    move-result-object v0

    .line 84
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    aput p1, v0, v1

    .line 85
    add-int/lit8 v2, v1, 0x1

    aput p2, v0, v2

    .line 86
    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 87
    return-void
.end method

.method public add(III)V
    .locals 4
    .param p1, "value1"    # I
    .param p2, "value2"    # I
    .param p3, "value3"    # I

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 91
    .local v0, "items":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

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

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    move-result-object v0

    .line 92
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    aput p1, v0, v1

    .line 93
    add-int/lit8 v2, v1, 0x1

    aput p2, v0, v2

    .line 94
    add-int/lit8 v2, v1, 0x2

    aput p3, v0, v2

    .line 95
    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 96
    return-void
.end method

.method public add(IIII)V
    .locals 4
    .param p1, "value1"    # I
    .param p2, "value2"    # I
    .param p3, "value3"    # I
    .param p4, "value4"    # I

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 100
    .local v0, "items":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

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

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    move-result-object v0

    .line 101
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    aput p1, v0, v1

    .line 102
    add-int/lit8 v2, v1, 0x1

    aput p2, v0, v2

    .line 103
    add-int/lit8 v2, v1, 0x2

    aput p3, v0, v2

    .line 104
    add-int/lit8 v2, v1, 0x3

    aput p4, v0, v2

    .line 105
    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 106
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/IntArray;)V
    .locals 3
    .param p1, "array"    # Lcom/badlogic/gdx/utils/IntArray;

    .line 109
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v1, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/badlogic/gdx/utils/IntArray;->addAll([III)V

    .line 110
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/IntArray;II)V
    .locals 3
    .param p1, "array"    # Lcom/badlogic/gdx/utils/IntArray;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 113
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-gt v0, v1, :cond_0

    .line 115
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/IntArray;->addAll([III)V

    .line 116
    return-void

    .line 114
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

    iget v2, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs addAll([I)V
    .locals 2
    .param p1, "array"    # [I

    .line 119
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/IntArray;->addAll([III)V

    .line 120
    return-void
.end method

.method public addAll([III)V
    .locals 5
    .param p1, "array"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 124
    .local v0, "items":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/2addr v1, p3

    .line 125
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

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    move-result-object v0

    .line 126
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 128
    return-void
.end method

.method public clear()V
    .locals 1

    .line 278
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 279
    return-void
.end method

.method public contains(I)Z
    .locals 4
    .param p1, "value"    # I

    .line 172
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 173
    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 174
    .local v2, "items":[I
    :goto_0
    if-ltz v0, :cond_1

    .line 175
    add-int/lit8 v3, v0, -0x1

    .end local v0    # "i":I
    .local v3, "i":I
    aget v0, v2, v0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    move v0, v3

    goto :goto_0

    .line 176
    .end local v3    # "i":I
    .restart local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public ensureCapacity(I)[I
    .locals 3
    .param p1, "additionalCapacity"    # I

    .line 293
    if-ltz p1, :cond_1

    .line 294
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/2addr v0, p1

    .line 295
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    array-length v1, v1

    if-le v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    return-object v1

    .line 293
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

    .line 368
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 369
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 370
    :cond_1
    instance-of v1, p1, Lcom/badlogic/gdx/utils/IntArray;

    if-nez v1, :cond_2

    return v2

    .line 371
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/IntArray;

    .line 372
    .local v1, "array":Lcom/badlogic/gdx/utils/IntArray;
    iget-boolean v3, v1, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    if-nez v3, :cond_3

    return v2

    .line 373
    :cond_3
    iget v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 374
    .local v3, "n":I
    iget v4, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-eq v3, v4, :cond_4

    return v2

    .line 375
    :cond_4
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .local v4, "items1":[I
    iget-object v5, v1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 376
    .local v5, "items2":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_6

    .line 377
    aget v7, v4, v6

    aget v8, v5, v6

    if-eq v7, v8, :cond_5

    return v2

    .line 376
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 378
    .end local v6    # "i":I
    :cond_6
    return v0
.end method

.method public first()I
    .locals 2

    .line 263
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)I
    .locals 3
    .param p1, "index"    # I

    .line 131
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge p1, v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v0, v0, p1

    return v0

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 6

    .line 359
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 361
    .local v0, "items":[I
    const/4 v1, 0x1

    .line 362
    .local v1, "h":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 363
    mul-int/lit8 v4, v1, 0x1f

    aget v5, v0, v2

    add-int v1, v4, v5

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_1
    return v1
.end method

.method public incr(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 141
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge p1, v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v1, v0, p1

    add-int/2addr v1, p2

    aput v1, v0, p1

    .line 143
    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOf(I)I
    .locals 4
    .param p1, "value"    # I

    .line 180
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 181
    .local v0, "items":[I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 182
    aget v3, v0, v1

    if-ne v3, p1, :cond_0

    return v1

    .line 181
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public insert(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 151
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-gt p1, v0, :cond_2

    .line 152
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 153
    .local v1, "items":[I
    array-length v2, v1

    if-ne v0, v2, :cond_0

    const/16 v2, 0x8

    int-to-float v0, v0

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    move-result-object v1

    .line 154
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    if-eqz v0, :cond_1

    .line 155
    add-int/lit8 v0, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 157
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    aget v2, v1, p1

    aput v2, v1, v0

    .line 158
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 159
    aput p2, v1, p1

    .line 160
    return-void

    .line 151
    .end local v1    # "items":[I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be > size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 274
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastIndexOf(I)I
    .locals 3
    .param p1, "value"    # I

    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 188
    .local v0, "items":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 189
    aget v2, v0, v1

    if-ne v2, p1, :cond_0

    return v1

    .line 188
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 190
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public mul(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 146
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge p1, v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v1, v0, p1

    mul-int/2addr v1, p2

    aput v1, v0, p1

    .line 148
    return-void

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 269
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public peek()I
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public pop()I
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    aget v0, v0, v1

    return v0
.end method

.method public random()I
    .locals 3

    .line 348
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 349
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    aget v0, v2, v0

    return v0
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/IntArray;)Z
    .locals 8
    .param p1, "array"    # Lcom/badlogic/gdx/utils/IntArray;

    .line 235
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 236
    .local v0, "size":I
    move v1, v0

    .line 237
    .local v1, "startSize":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 238
    .local v2, "items":[I
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 239
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v5

    .line 240
    .local v5, "item":I
    const/4 v6, 0x0

    .local v6, "ii":I
    :goto_1
    if-ge v6, v0, :cond_1

    .line 241
    aget v7, v2, v6

    if-ne v5, v7, :cond_0

    .line 242
    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/utils/IntArray;->removeIndex(I)I

    .line 243
    add-int/lit8 v0, v0, -0x1

    .line 244
    goto :goto_2

    .line 240
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 238
    .end local v5    # "item":I
    .end local v6    # "ii":I
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
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

.method public removeIndex(I)I
    .locals 4
    .param p1, "index"    # I

    .line 206
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge p1, v0, :cond_1

    .line 207
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 208
    .local v1, "items":[I
    aget v2, v1, p1

    .line 209
    .local v2, "value":I
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 210
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    if-eqz v3, :cond_0

    .line 211
    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 213
    :cond_0
    aget v0, v1, v0

    aput v0, v1, p1

    .line 214
    :goto_0
    return v2

    .line 206
    .end local v1    # "items":[I
    .end local v2    # "value":I
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

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

    .line 219
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 220
    .local v0, "n":I
    if-ge p2, v0, :cond_2

    .line 221
    if-gt p1, p2, :cond_1

    .line 222
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    .local v1, "count":I
    sub-int v2, v0, v1

    .line 223
    .local v2, "lastIndex":I
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    if-eqz v3, :cond_0

    .line 224
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    add-int v4, p1, v1

    add-int v5, p1, v1

    sub-int v5, v0, v5

    invoke-static {v3, v4, v3, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 226
    :cond_0
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 227
    .local v3, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    sub-int v5, v0, v3

    invoke-static {v4, v3, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    .end local v3    # "i":I
    :goto_0
    sub-int v3, v0, v1

    iput v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 230
    return-void

    .line 221
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

    .line 220
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end can\'t be >= size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeValue(I)Z
    .locals 4
    .param p1, "value"    # I

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 195
    .local v0, "items":[I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 196
    aget v3, v0, v1

    if-ne v3, p1, :cond_0

    .line 197
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntArray;->removeIndex(I)I

    .line 198
    const/4 v3, 0x1

    return v3

    .line 195
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected resize(I)[I
    .locals 4
    .param p1, "newSize"    # I

    .line 309
    new-array v0, p1, [I

    .line 310
    .local v0, "newItems":[I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 311
    .local v1, "items":[I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 313
    return-object v0
.end method

.method public reverse()V
    .locals 7

    .line 321
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 322
    .local v0, "items":[I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v3, v2, -0x1

    .local v3, "lastIndex":I
    div-int/lit8 v2, v2, 0x2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 323
    sub-int v4, v3, v1

    .line 324
    .local v4, "ii":I
    aget v5, v0, v1

    .line 325
    .local v5, "temp":I
    aget v6, v0, v4

    aput v6, v0, v1

    .line 326
    aput v5, v0, v4

    .line 322
    .end local v4    # "ii":I
    .end local v5    # "temp":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "lastIndex":I
    :cond_0
    return-void
.end method

.method public set(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 136
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge p1, v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aput p2, v0, p1

    .line 138
    return-void

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSize(I)[I
    .locals 3
    .param p1, "newSize"    # I

    .line 302
    if-ltz p1, :cond_1

    .line 303
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    array-length v0, v0

    if-le p1, v0, :cond_0

    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    .line 304
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 305
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    return-object v0

    .line 302
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

.method public shrink()[I
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    return-object v0
.end method

.method public shuffle()V
    .locals 5

    .line 331
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 332
    .local v0, "items":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 333
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v2

    .line 334
    .local v2, "ii":I
    aget v3, v0, v1

    .line 335
    .local v3, "temp":I
    aget v4, v0, v2

    aput v4, v0, v1

    .line 336
    aput v3, v0, v2

    .line 332
    .end local v2    # "ii":I
    .end local v3    # "temp":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 338
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public sort()V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->sort([III)V

    .line 318
    return-void
.end method

.method public swap(II)V
    .locals 4
    .param p1, "first"    # I
    .param p2, "second"    # I

    .line 163
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const-string v1, " >= "

    if-ge p1, v0, :cond_1

    .line 164
    if-ge p2, v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 166
    .local v0, "items":[I
    aget v1, v0, p1

    .line 167
    .local v1, "firstValue":I
    aget v2, v0, p2

    aput v2, v0, p1

    .line 168
    aput v1, v0, p2

    .line 169
    return-void

    .line 164
    .end local v0    # "items":[I
    .end local v1    # "firstValue":I
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "second can\'t be >= size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first can\'t be >= size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toArray()[I
    .locals 4

    .line 353
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    new-array v1, v0, [I

    .line 354
    .local v1, "array":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 382
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 384
    .local v0, "items":[I
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 385
    .local v1, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 386
    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 387
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v2, v3, :cond_1

    .line 388
    const-string v3, ", "

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 389
    aget v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 387
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 392
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;

    .line 396
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 398
    .local v0, "items":[I
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 399
    .local v1, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 400
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v2, v3, :cond_1

    .line 401
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 402
    aget v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 400
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 404
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public truncate(I)V
    .locals 1
    .param p1, "newSize"    # I

    .line 343
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-le v0, p1, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 344
    :cond_0
    return-void
.end method
