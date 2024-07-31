.class final Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;
.super Lcom/google/crypto/tink/shaded/protobuf/AbstractProtobufList;
.source "FloatArrayList.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/Internal$FloatList;
.implements Ljava/util/RandomAccess;
.implements Lcom/google/crypto/tink/shaded/protobuf/PrimitiveNonBoxingCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/AbstractProtobufList<",
        "Ljava/lang/Float;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/Internal$FloatList;",
        "Ljava/util/RandomAccess;",
        "Lcom/google/crypto/tink/shaded/protobuf/PrimitiveNonBoxingCollection;"
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;


# instance fields
.field private array:[F

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [F

    invoke-direct {v0, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;-><init>([FI)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->EMPTY_LIST:Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;

    .line 50
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->makeImmutable()V

    .line 51
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 68
    const/16 v0, 0xa

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;-><init>([FI)V

    .line 69
    return-void
.end method

.method private constructor <init>([FI)V
    .locals 0
    .param p1, "other"    # [F
    .param p2, "size"    # I

    .line 74
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/AbstractProtobufList;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->array:[F

    .line 76
    iput p2, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    .line 77
    return-void
.end method

.method private addFloat(IF)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "element"    # F

    .line 190
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->ensureIsMutable()V

    .line 191
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    if-gt p1, v0, :cond_1

    .line 195
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->array:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 197
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 200
    :cond_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 201
    .local v0, "length":I
    new-array v2, v0, [F

    .line 204
    .local v2, "newArray":[F
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->array:[F

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    iput-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->array:[F

    .line 211
    .end local v0    # "length":I
    .end local v2    # "newArray":[F
    :goto_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->array:[F

    aput p2, v0, p1

    .line 212
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    .line 213
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->modCount:I

    .line 214
    return-void

    .line 192
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static emptyList()Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;
    .locals 1

    .line 54
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->EMPTY_LIST:Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;

    return-object v0
.end method

.method private ensureIndexInRange(I)V
    .locals 2
    .param p1, "index"    # I

    .line 283
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    if-ge p1, v0, :cond_0

    .line 286
    return-void

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Float;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Float;

    .line 169
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->addFloat(IF)V

    .line 170
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->add(ILjava/lang/Float;)V

    return-void
.end method

.method public add(Ljava/lang/Float;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Float;

    .line 163
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->addFloat(F)V

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 45
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->add(Ljava/lang/Float;)Z

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
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    .line 218
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Float;>;"
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->ensureIsMutable()V

    .line 220
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;

    if-nez v0, :cond_0

    .line 224
    invoke-super {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 227
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;

    .line 228
    .local v0, "list":Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;
    iget v1, v0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 229
    return v2

    .line 232
    :cond_1
    const v3, 0x7fffffff

    iget v4, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    sub-int/2addr v3, v4

    .line 233
    .local v3, "overflow":I
    if-lt v3, v1, :cond_3

    .line 238
    add-int/2addr v4, v1

    .line 239
    .local v4, "newSize":I
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->array:[F

    array-length v5, v1

    if-le v4, v5, :cond_2

    .line 240
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->array:[F

    .line 243
    :cond_2
    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->array:[F

    iget-object v5, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->array:[F

    iget v6, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    iget v7, v0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    invoke-static {v1, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    iput v4, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    .line 245
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->modCount:I

    .line 246
    return v2

    .line 235
    .end local v4    # "newSize":I
    :cond_3
    new-instance v1, Ljava/lang/OutOfMemoryError;

    invoke-direct {v1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v1
.end method

.method public addFloat(F)V
    .locals 5
    .param p1, "element"    # F

    .line 175
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->ensureIsMutable()V

    .line 176
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->array:[F

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 178
    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 179
    .local v2, "length":I
    new-array v3, v2, [F

    .line 181
    .local v3, "newArray":[F
    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iput-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->array:[F

    .line 185
    .end local v2    # "length":I
    .end local v3    # "newArray":[F
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->array:[F

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    aput p1, v0, v1

    .line 186
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 93
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 94
    return v0

    .line 96
    :cond_0
    instance-of v1, p1, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;

    if-nez v1, :cond_1

    .line 97
    invoke-super {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 99
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;

    .line 100
    .local v1, "other":Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;
    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    iget v3, v1, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    .line 101
    return v4

    .line 104
    :cond_2
    iget-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->array:[F

    .line 105
    .local v2, "arr":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v5, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    if-ge v3, v5, :cond_4

    .line 106
    iget-object v5, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->array:[F

    aget v5, v5, v3

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    aget v6, v2, v3

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    if-eq v5, v6, :cond_3

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

.method public get(I)Ljava/lang/Float;
    .locals 1
    .param p1, "index"    # I

    .line 133
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->get(I)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "index"    # I

    .line 138
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->ensureIndexInRange(I)V

    .line 139
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->array:[F

    aget v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 116
    const/4 v0, 0x1

    .line 117
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    if-ge v1, v2, :cond_0

    .line 118
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->array:[F

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v0, v2, v3

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$FloatList;
    .locals 3
    .param p1, "capacity"    # I

    .line 125
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    if-lt p1, v0, :cond_0

    .line 128
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->array:[F

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;-><init>([FI)V

    return-object v0

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$FloatList;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Float;
    .locals 4
    .param p1, "index"    # I

    .line 265
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->ensureIsMutable()V

    .line 266
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->ensureIndexInRange(I)V

    .line 267
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->array:[F

    aget v1, v0, p1

    .line 268
    .local v1, "value":F
    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_0

    .line 269
    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    :cond_0
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    .line 272
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->modCount:I

    .line 273
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->remove(I)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 251
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->ensureIsMutable()V

    .line 252
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    if-ge v0, v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->array:[F

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->array:[F

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    sub-int/2addr v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    .line 256
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->modCount:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->modCount:I

    .line 257
    return v4

    .line 252
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
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
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->ensureIsMutable()V

    .line 82
    if-lt p2, p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->array:[F

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    .line 88
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->modCount:I

    .line 89
    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "toIndex < fromIndex"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILjava/lang/Float;)Ljava/lang/Float;
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Float;

    .line 149
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->setFloat(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->set(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setFloat(IF)F
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # F

    .line 154
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->ensureIsMutable()V

    .line 155
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->ensureIndexInRange(I)V

    .line 156
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->array:[F

    aget v1, v0, p1

    .line 157
    .local v1, "previousValue":F
    aput p2, v0, p1

    .line 158
    return v1
.end method

.method public size()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->size:I

    return v0
.end method
