.class public Lcom/google/common/util/concurrent/AtomicDoubleArray;
.super Ljava/lang/Object;
.source "AtomicDoubleArray.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient longs:Ljava/util/concurrent/atomic/AtomicLongArray;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 61
    return-void
.end method

.method public constructor <init>([D)V
    .locals 5
    .param p1, "array"    # [D

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    array-length v0, p1

    .line 72
    .local v0, "len":I
    new-array v1, v0, [J

    .line 73
    .local v1, "longArray":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 74
    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>([J)V

    iput-object v2, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 77
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 250
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 252
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 253
    .local v0, "length":I
    invoke-static {}, Lcom/google/common/primitives/ImmutableLongArray;->builder()Lcom/google/common/primitives/ImmutableLongArray$Builder;

    move-result-object v1

    .line 254
    .local v1, "builder":Lcom/google/common/primitives/ImmutableLongArray$Builder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 255
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->add(J)Lcom/google/common/primitives/ImmutableLongArray$Builder;

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v1}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->build()Lcom/google/common/primitives/ImmutableLongArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/primitives/ImmutableLongArray;->toArray()[J

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>([J)V

    iput-object v2, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 258
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 238
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDoubleArray;->length()I

    move-result v0

    .line 239
    .local v0, "length":I
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 242
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 243
    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/AtomicDoubleArray;->get(I)D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addAndGet(ID)D
    .locals 17
    .param p1, "i"    # I
    .param p2, "delta"    # D

    move-object/from16 v0, p0

    .line 194
    :goto_0
    iget-object v1, v0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    move/from16 v8, p1

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v9

    .line 195
    .local v9, "current":J
    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v11

    .line 196
    .local v11, "currentVal":D
    add-double v13, v11, p2

    .line 197
    .local v13, "nextVal":D
    invoke-static {v13, v14}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v15

    .line 198
    .local v15, "next":J
    iget-object v2, v0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    move/from16 v3, p1

    move-wide v4, v9

    move-wide v6, v15

    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    return-wide v13

    .line 201
    .end local v9    # "current":J
    .end local v11    # "currentVal":D
    .end local v13    # "nextVal":D
    .end local v15    # "next":J
    :cond_0
    goto :goto_0
.end method

.method public final compareAndSet(IDD)Z
    .locals 6
    .param p1, "i"    # I
    .param p2, "expect"    # D
    .param p4, "update"    # D

    .line 143
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    return v0
.end method

.method public final get(I)D
    .locals 2
    .param p1, "i"    # I

    .line 95
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndAdd(ID)D
    .locals 17
    .param p1, "i"    # I
    .param p2, "delta"    # D

    move-object/from16 v0, p0

    .line 174
    :goto_0
    iget-object v1, v0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    move/from16 v8, p1

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v9

    .line 175
    .local v9, "current":J
    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v11

    .line 176
    .local v11, "currentVal":D
    add-double v13, v11, p2

    .line 177
    .local v13, "nextVal":D
    invoke-static {v13, v14}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v15

    .line 178
    .local v15, "next":J
    iget-object v2, v0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    move/from16 v3, p1

    move-wide v4, v9

    move-wide v6, v15

    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    return-wide v11

    .line 181
    .end local v9    # "current":J
    .end local v11    # "currentVal":D
    .end local v13    # "nextVal":D
    .end local v15    # "next":J
    :cond_0
    goto :goto_0
.end method

.method public final getAndSet(ID)D
    .locals 4
    .param p1, "i"    # I
    .param p2, "newValue"    # D

    .line 128
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 129
    .local v0, "next":J
    iget-object v2, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v2, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndSet(IJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method

.method public final lazySet(ID)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "newValue"    # D

    .line 116
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 117
    .local v0, "next":J
    iget-object v2, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v2, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->lazySet(IJ)V

    .line 118
    return-void
.end method

.method public final length()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v0

    return v0
.end method

.method public final set(ID)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "newValue"    # D

    .line 105
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 106
    .local v0, "next":J
    iget-object v2, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v2, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 211
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDoubleArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 212
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 213
    const-string v1, "[]"

    return-object v1

    .line 217
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 218
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    const/4 v2, 0x0

    .line 220
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 221
    if-ne v2, v0, :cond_1

    .line 222
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 224
    :cond_1
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final weakCompareAndSet(IDD)Z
    .locals 6
    .param p1, "i"    # I
    .param p2, "expect"    # D
    .param p4, "update"    # D

    .line 161
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->weakCompareAndSet(IJJ)Z

    move-result v0

    return v0
.end method
