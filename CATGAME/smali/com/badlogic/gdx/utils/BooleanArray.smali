.class public Lcom/badlogic/gdx/utils/BooleanArray;
.super Ljava/lang/Object;
.source "BooleanArray.java"


# instance fields
.field public items:[Z

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(ZI)V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(ZI)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/BooleanArray;)V
    .locals 4
    .param p1, "array"    # Lcom/badlogic/gdx/utils/BooleanArray;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    .line 56
    iget v0, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 57
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 58
    iget-object v2, p1, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "ordered"    # Z
    .param p2, "capacity"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    .line 48
    new-array v0, p2, [Z

    iput-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 49
    return-void
.end method

.method public constructor <init>(Z[ZII)V
    .locals 2
    .param p1, "ordered"    # Z
    .param p2, "array"    # [Z
    .param p3, "startIndex"    # I
    .param p4, "count"    # I

    .line 72
    invoke-direct {p0, p1, p4}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(ZI)V

    .line 73
    iput p4, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    return-void
.end method

.method public constructor <init>([Z)V
    .locals 3
    .param p1, "array"    # [Z

    .line 64
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(Z[ZII)V

    .line 65
    return-void
.end method

.method public static varargs with([Z)Lcom/badlogic/gdx/utils/BooleanArray;
    .locals 1
    .param p0, "array"    # [Z

    .line 365
    new-instance v0, Lcom/badlogic/gdx/utils/BooleanArray;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>([Z)V

    return-object v0
.end method


# virtual methods
.method public add(Z)V
    .locals 4
    .param p1, "value"    # Z

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 79
    .local v0, "items":[Z
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v2, 0x8

    int-to-float v1, v1

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 80
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aput-boolean p1, v0, v1

    .line 81
    return-void
.end method

.method public add(ZZ)V
    .locals 4
    .param p1, "value1"    # Z
    .param p2, "value2"    # Z

    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 85
    .local v0, "items":[Z
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

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

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 86
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aput-boolean p1, v0, v1

    .line 87
    add-int/lit8 v2, v1, 0x1

    aput-boolean p2, v0, v2

    .line 88
    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 89
    return-void
.end method

.method public add(ZZZ)V
    .locals 4
    .param p1, "value1"    # Z
    .param p2, "value2"    # Z
    .param p3, "value3"    # Z

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 93
    .local v0, "items":[Z
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

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

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 94
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aput-boolean p1, v0, v1

    .line 95
    add-int/lit8 v2, v1, 0x1

    aput-boolean p2, v0, v2

    .line 96
    add-int/lit8 v2, v1, 0x2

    aput-boolean p3, v0, v2

    .line 97
    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 98
    return-void
.end method

.method public add(ZZZZ)V
    .locals 4
    .param p1, "value1"    # Z
    .param p2, "value2"    # Z
    .param p3, "value3"    # Z
    .param p4, "value4"    # Z

    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 102
    .local v0, "items":[Z
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

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

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 103
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aput-boolean p1, v0, v1

    .line 104
    add-int/lit8 v2, v1, 0x1

    aput-boolean p2, v0, v2

    .line 105
    add-int/lit8 v2, v1, 0x2

    aput-boolean p3, v0, v2

    .line 106
    add-int/lit8 v2, v1, 0x3

    aput-boolean p4, v0, v2

    .line 107
    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 108
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/BooleanArray;)V
    .locals 3
    .param p1, "array"    # Lcom/badlogic/gdx/utils/BooleanArray;

    .line 111
    iget-object v0, p1, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget v1, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->addAll([ZII)V

    .line 112
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/BooleanArray;II)V
    .locals 3
    .param p1, "array"    # Lcom/badlogic/gdx/utils/BooleanArray;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 115
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-gt v0, v1, :cond_0

    .line 117
    iget-object v0, p1, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/BooleanArray;->addAll([ZII)V

    .line 118
    return-void

    .line 116
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

    iget v2, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs addAll([Z)V
    .locals 2
    .param p1, "array"    # [Z

    .line 121
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->addAll([ZII)V

    .line 122
    return-void
.end method

.method public addAll([ZII)V
    .locals 5
    .param p1, "array"    # [Z
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 126
    .local v0, "items":[Z
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/2addr v1, p3

    .line 127
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

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 128
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 130
    return-void
.end method

.method public clear()V
    .locals 1

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 238
    return-void
.end method

.method public ensureCapacity(I)[Z
    .locals 3
    .param p1, "additionalCapacity"    # I

    .line 252
    if-ltz p1, :cond_1

    .line 253
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/2addr v0, p1

    .line 254
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    array-length v1, v1

    if-le v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    return-object v1

    .line 252
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

    .line 324
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 325
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 326
    :cond_1
    instance-of v1, p1, Lcom/badlogic/gdx/utils/BooleanArray;

    if-nez v1, :cond_2

    return v2

    .line 327
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/BooleanArray;

    .line 328
    .local v1, "array":Lcom/badlogic/gdx/utils/BooleanArray;
    iget-boolean v3, v1, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    if-nez v3, :cond_3

    return v2

    .line 329
    :cond_3
    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 330
    .local v3, "n":I
    iget v4, v1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-eq v3, v4, :cond_4

    return v2

    .line 331
    :cond_4
    iget-object v4, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .local v4, "items1":[Z
    iget-object v5, v1, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 332
    .local v5, "items2":[Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_6

    .line 333
    aget-boolean v7, v4, v6

    aget-boolean v8, v5, v6

    if-eq v7, v8, :cond_5

    return v2

    .line 332
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 334
    .end local v6    # "i":I
    :cond_6
    return v0
.end method

.method public first()Z
    .locals 2

    .line 222
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)Z
    .locals 3
    .param p1, "index"    # I

    .line 133
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge p1, v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    aget-boolean v0, v0, p1

    return v0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 6

    .line 314
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 316
    .local v0, "items":[Z
    const/4 v1, 0x1

    .line 317
    .local v1, "h":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 318
    mul-int/lit8 v4, v1, 0x1f

    aget-boolean v5, v0, v2

    if-eqz v5, :cond_1

    const/16 v5, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v5, 0x4d5

    :goto_1
    add-int v1, v4, v5

    .line 317
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_2
    return v1
.end method

.method public insert(IZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 143
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-gt p1, v0, :cond_2

    .line 144
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 145
    .local v1, "items":[Z
    array-length v2, v1

    if-ne v0, v2, :cond_0

    const/16 v2, 0x8

    int-to-float v0, v0

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v1

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    if-eqz v0, :cond_1

    .line 147
    add-int/lit8 v0, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 149
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aget-boolean v2, v1, p1

    aput-boolean v2, v1, v0

    .line 150
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 151
    aput-boolean p2, v1, p1

    .line 152
    return-void

    .line 143
    .end local v1    # "items":[Z
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be > size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 233
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 228
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public peek()Z
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public pop()Z
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aget-boolean v0, v0, v1

    return v0
.end method

.method public random()Z
    .locals 3

    .line 303
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 304
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    aget-boolean v0, v2, v0

    return v0
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/BooleanArray;)Z
    .locals 8
    .param p1, "array"    # Lcom/badlogic/gdx/utils/BooleanArray;

    .line 194
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 195
    .local v0, "size":I
    move v1, v0

    .line 196
    .local v1, "startSize":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 197
    .local v2, "items":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 198
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/BooleanArray;->get(I)Z

    move-result v5

    .line 199
    .local v5, "item":Z
    const/4 v6, 0x0

    .local v6, "ii":I
    :goto_1
    if-ge v6, v0, :cond_1

    .line 200
    aget-boolean v7, v2, v6

    if-ne v5, v7, :cond_0

    .line 201
    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/utils/BooleanArray;->removeIndex(I)Z

    .line 202
    add-int/lit8 v0, v0, -0x1

    .line 203
    goto :goto_2

    .line 199
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 197
    .end local v5    # "item":Z
    .end local v6    # "ii":I
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
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

.method public removeIndex(I)Z
    .locals 4
    .param p1, "index"    # I

    .line 165
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge p1, v0, :cond_1

    .line 166
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 167
    .local v1, "items":[Z
    aget-boolean v2, v1, p1

    .line 168
    .local v2, "value":Z
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 169
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    if-eqz v3, :cond_0

    .line 170
    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 172
    :cond_0
    aget-boolean v0, v1, v0

    aput-boolean v0, v1, p1

    .line 173
    :goto_0
    return v2

    .line 165
    .end local v1    # "items":[Z
    .end local v2    # "value":Z
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

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

    .line 178
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 179
    .local v0, "n":I
    if-ge p2, v0, :cond_2

    .line 180
    if-gt p1, p2, :cond_1

    .line 181
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    .local v1, "count":I
    sub-int v2, v0, v1

    .line 182
    .local v2, "lastIndex":I
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    if-eqz v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    add-int v4, p1, v1

    add-int v5, p1, v1

    sub-int v5, v0, v5

    invoke-static {v3, v4, v3, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 185
    :cond_0
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 186
    .local v3, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    sub-int v5, v0, v3

    invoke-static {v4, v3, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    .end local v3    # "i":I
    :goto_0
    sub-int v3, v0, v1

    iput v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 189
    return-void

    .line 180
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

    .line 179
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end can\'t be >= size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected resize(I)[Z
    .locals 4
    .param p1, "newSize"    # I

    .line 268
    new-array v0, p1, [Z

    .line 269
    .local v0, "newItems":[Z
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 270
    .local v1, "items":[Z
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    iput-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 272
    return-object v0
.end method

.method public reverse()V
    .locals 7

    .line 276
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 277
    .local v0, "items":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v3, v2, -0x1

    .local v3, "lastIndex":I
    div-int/lit8 v2, v2, 0x2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 278
    sub-int v4, v3, v1

    .line 279
    .local v4, "ii":I
    aget-boolean v5, v0, v1

    .line 280
    .local v5, "temp":Z
    aget-boolean v6, v0, v4

    aput-boolean v6, v0, v1

    .line 281
    aput-boolean v5, v0, v4

    .line 277
    .end local v4    # "ii":I
    .end local v5    # "temp":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "lastIndex":I
    :cond_0
    return-void
.end method

.method public set(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 138
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge p1, v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    aput-boolean p2, v0, p1

    .line 140
    return-void

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

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSize(I)[Z
    .locals 3
    .param p1, "newSize"    # I

    .line 261
    if-ltz p1, :cond_1

    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    array-length v0, v0

    if-le p1, v0, :cond_0

    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    .line 263
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 264
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    return-object v0

    .line 261
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

.method public shrink()[Z
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    return-object v0
.end method

.method public shuffle()V
    .locals 5

    .line 286
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 287
    .local v0, "items":[Z
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 288
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v2

    .line 289
    .local v2, "ii":I
    aget-boolean v3, v0, v1

    .line 290
    .local v3, "temp":Z
    aget-boolean v4, v0, v2

    aput-boolean v4, v0, v1

    .line 291
    aput-boolean v3, v0, v2

    .line 287
    .end local v2    # "ii":I
    .end local v3    # "temp":Z
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 293
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public swap(II)V
    .locals 4
    .param p1, "first"    # I
    .param p2, "second"    # I

    .line 155
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    const-string v1, " >= "

    if-ge p1, v0, :cond_1

    .line 156
    if-ge p2, v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 158
    .local v0, "items":[Z
    aget-boolean v1, v0, p1

    .line 159
    .local v1, "firstValue":Z
    aget-boolean v2, v0, p2

    aput-boolean v2, v0, p1

    .line 160
    aput-boolean v1, v0, p2

    .line 161
    return-void

    .line 156
    .end local v0    # "items":[Z
    .end local v1    # "firstValue":Z
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "second can\'t be >= size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first can\'t be >= size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toArray()[Z
    .locals 4

    .line 308
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    new-array v1, v0, [Z

    .line 309
    .local v1, "array":[Z
    iget-object v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 338
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 340
    .local v0, "items":[Z
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 341
    .local v1, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 342
    const/4 v2, 0x0

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 343
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge v2, v3, :cond_1

    .line 344
    const-string v3, ", "

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 345
    aget-boolean v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 348
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;

    .line 352
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 354
    .local v0, "items":[Z
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 355
    .local v1, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/4 v2, 0x0

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 356
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge v2, v3, :cond_1

    .line 357
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 358
    aget-boolean v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public truncate(I)V
    .locals 1
    .param p1, "newSize"    # I

    .line 298
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-le v0, p1, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 299
    :cond_0
    return-void
.end method
