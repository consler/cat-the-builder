.class final Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;
.super Lcom/google/crypto/tink/shaded/protobuf/AbstractProtobufList;
.source "DoubleArrayList.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/Internal$DoubleList;
.implements Ljava/util/RandomAccess;
.implements Lcom/google/crypto/tink/shaded/protobuf/PrimitiveNonBoxingCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/AbstractProtobufList<",
        "Ljava/lang/Double;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/Internal$DoubleList;",
        "Ljava/util/RandomAccess;",
        "Lcom/google/crypto/tink/shaded/protobuf/PrimitiveNonBoxingCollection;"
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;


# instance fields
.field private array:[D

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [D

    invoke-direct {v0, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;-><init>([DI)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->EMPTY_LIST:Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;

    .line 50
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->makeImmutable()V

    .line 51
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 68
    const/16 v0, 0xa

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;-><init>([DI)V

    .line 69
    return-void
.end method

.method private constructor <init>([DI)V
    .locals 0
    .param p1, "other"    # [D
    .param p2, "size"    # I

    .line 74
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/AbstractProtobufList;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->array:[D

    .line 76
    iput p2, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    .line 77
    return-void
.end method

.method private addDouble(ID)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "element"    # D

    .line 191
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 192
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    if-gt p1, v0, :cond_1

    .line 196
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->array:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 198
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 201
    :cond_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 202
    .local v0, "length":I
    new-array v2, v0, [D

    .line 205
    .local v2, "newArray":[D
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->array:[D

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iput-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->array:[D

    .line 212
    .end local v0    # "length":I
    .end local v2    # "newArray":[D
    :goto_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->array:[D

    aput-wide p2, v0, p1

    .line 213
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    .line 214
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->modCount:I

    .line 215
    return-void

    .line 193
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static emptyList()Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;
    .locals 1

    .line 54
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->EMPTY_LIST:Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;

    return-object v0
.end method

.method private ensureIndexInRange(I)V
    .locals 2
    .param p1, "index"    # I

    .line 284
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    if-ge p1, v0, :cond_0

    .line 287
    return-void

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Double;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Double;

    .line 170
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->addDouble(ID)V

    .line 171
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->add(ILjava/lang/Double;)V

    return-void
.end method

.method public add(Ljava/lang/Double;)Z
    .locals 2
    .param p1, "element"    # Ljava/lang/Double;

    .line 164
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->addDouble(D)V

    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 45
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->add(Ljava/lang/Double;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .line 219
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Double;>;"
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 221
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;

    if-nez v0, :cond_0

    .line 225
    invoke-super {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 228
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;

    .line 229
    .local v0, "list":Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;
    iget v1, v0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 230
    return v2

    .line 233
    :cond_1
    const v3, 0x7fffffff

    iget v4, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v3, v4

    .line 234
    .local v3, "overflow":I
    if-lt v3, v1, :cond_3

    .line 239
    add-int/2addr v4, v1

    .line 240
    .local v4, "newSize":I
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->array:[D

    array-length v5, v1

    if-le v4, v5, :cond_2

    .line 241
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    iput-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->array:[D

    .line 244
    :cond_2
    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->array:[D

    iget-object v5, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->array:[D

    iget v6, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    iget v7, v0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    invoke-static {v1, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    iput v4, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    .line 246
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->modCount:I

    .line 247
    return v2

    .line 236
    .end local v4    # "newSize":I
    :cond_3
    new-instance v1, Ljava/lang/OutOfMemoryError;

    invoke-direct {v1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v1
.end method

.method public addDouble(D)V
    .locals 5
    .param p1, "element"    # D

    .line 176
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 177
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->array:[D

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 179
    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 180
    .local v2, "length":I
    new-array v3, v2, [D

    .line 182
    .local v3, "newArray":[D
    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iput-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->array:[D

    .line 186
    .end local v2    # "length":I
    .end local v3    # "newArray":[D
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->array:[D

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    aput-wide p1, v0, v1

    .line 187
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 93
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 94
    return v0

    .line 96
    :cond_0
    instance-of v1, p1, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;

    if-nez v1, :cond_1

    .line 97
    invoke-super {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 99
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;

    .line 100
    .local v1, "other":Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;
    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    iget v3, v1, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    .line 101
    return v4

    .line 104
    :cond_2
    iget-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->array:[D

    .line 105
    .local v2, "arr":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v5, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    if-ge v3, v5, :cond_4

    .line 106
    iget-object v5, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->array:[D

    aget-wide v6, v5, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    aget-wide v7, v2, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    .line 107
    return v4

    .line 105
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    .end local v3    # "i":I
    :cond_4
    return v0
.end method

.method public get(I)Ljava/lang/Double;
    .locals 2
    .param p1, "index"    # I

    .line 134
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->get(I)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public getDouble(I)D
    .locals 3
    .param p1, "index"    # I

    .line 139
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->ensureIndexInRange(I)V

    .line 140
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->array:[D

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public hashCode()I
    .locals 6

    .line 116
    const/4 v0, 0x1

    .line 117
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    if-ge v1, v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->array:[D

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 119
    .local v2, "bits":J
    mul-int/lit8 v4, v0, 0x1f

    invoke-static {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->hashLong(J)I

    move-result v5

    add-int v0, v4, v5

    .line 117
    .end local v2    # "bits":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$DoubleList;
    .locals 3
    .param p1, "capacity"    # I

    .line 126
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    if-lt p1, v0, :cond_0

    .line 129
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->array:[D

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;-><init>([DI)V

    return-object v0

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$DoubleList;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Double;
    .locals 5
    .param p1, "index"    # I

    .line 266
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 267
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->ensureIndexInRange(I)V

    .line 268
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->array:[D

    aget-wide v1, v0, p1

    .line 269
    .local v1, "value":D
    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    add-int/lit8 v4, v3, -0x1

    if-ge p1, v4, :cond_0

    .line 270
    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v4, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    :cond_0
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    .line 273
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->modCount:I

    .line 274
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->remove(I)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 252
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 253
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    if-ge v0, v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->array:[D

    aget-wide v2, v1, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->array:[D

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    .line 257
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->modCount:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->modCount:I

    .line 258
    return v4

    .line 253
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected removeRange(II)V
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 81
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 82
    if-lt p2, p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->array:[D

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    .line 88
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->modCount:I

    .line 89
    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "toIndex < fromIndex"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILjava/lang/Double;)Ljava/lang/Double;
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Double;

    .line 150
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->setDouble(ID)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->set(ILjava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public setDouble(ID)D
    .locals 3
    .param p1, "index"    # I
    .param p2, "element"    # D

    .line 155
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 156
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->ensureIndexInRange(I)V

    .line 157
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->array:[D

    aget-wide v1, v0, p1

    .line 158
    .local v1, "previousValue":D
    aput-wide p2, v0, p1

    .line 159
    return-wide v1
.end method

.method public size()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->size:I

    return v0
.end method
