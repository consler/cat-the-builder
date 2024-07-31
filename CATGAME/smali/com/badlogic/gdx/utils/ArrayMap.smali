.class public Lcom/badlogic/gdx/utils/ArrayMap;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/ArrayMap$Keys;,
        Lcom/badlogic/gdx/utils/ArrayMap$Values;,
        Lcom/badlogic/gdx/utils/ArrayMap$Entries;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/ObjectMap$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

.field private entries2:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

.field public keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private keys1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

.field private keys2:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

.field public ordered:Z

.field public size:I

.field public values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private values1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

.field private values2:Lcom/badlogic/gdx/utils/ArrayMap$Values;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZI)V

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 49
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZI)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/ArrayMap;)V
    .locals 4
    .param p1, "array"    # Lcom/badlogic/gdx/utils/ArrayMap;

    .line 80
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    iget v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v2, p1, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p1, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZILjava/lang/Class;Ljava/lang/Class;)V

    .line 81
    iget v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 82
    iget-object v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .param p1, "keyArrayType"    # Ljava/lang/Class;
    .param p2, "valueArrayType"    # Ljava/lang/Class;

    .line 73
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZILjava/lang/Class;Ljava/lang/Class;)V

    .line 74
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "ordered"    # Z
    .param p2, "capacity"    # I

    .line 55
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    .line 57
    new-array v0, p2, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 58
    new-array v0, p2, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public constructor <init>(ZILjava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .param p1, "ordered"    # Z
    .param p2, "capacity"    # I
    .param p3, "keyArrayType"    # Ljava/lang/Class;
    .param p4, "valueArrayType"    # Ljava/lang/Class;

    .line 65
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    .line 67
    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 68
    invoke-static {p4, p2}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 69
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .line 347
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 348
    .local v0, "keys":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 349
    .local v1, "values":[Ljava/lang/Object;, "[TV;"
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 350
    const/4 v4, 0x0

    aput-object v4, v0, v2

    .line 351
    aput-object v4, v1, v2

    .line 349
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 353
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 354
    return-void
.end method

.method public clear(I)V
    .locals 1
    .param p1, "maximumCapacity"    # I

    .line 338
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    if-gt v0, p1, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ArrayMap;->clear()V

    .line 340
    return-void

    .line 342
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 343
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 344
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 208
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 209
    .local v0, "keys":[Ljava/lang/Object;, "[TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 210
    .local v1, "i":I
    if-nez p1, :cond_1

    .line 211
    :goto_0
    if-ltz v1, :cond_3

    .line 212
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "i":I
    .local v3, "i":I
    aget-object v1, v0, v1

    if-ne v1, p1, :cond_0

    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    .line 214
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_1
    :goto_1
    if-ltz v1, :cond_3

    .line 215
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "i":I
    .restart local v3    # "i":I
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    move v1, v3

    goto :goto_1

    .line 217
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .locals 4
    .param p2, "identity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)Z"
        }
    .end annotation

    .line 222
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 223
    .local v0, "values":[Ljava/lang/Object;, "[TV;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 224
    .local v1, "i":I
    if-nez p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 228
    :cond_0
    :goto_0
    if-ltz v1, :cond_4

    .line 229
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "i":I
    .local v3, "i":I
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    move v1, v3

    goto :goto_0

    .line 225
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_2
    :goto_1
    if-ltz v1, :cond_4

    .line 226
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "i":I
    .restart local v3    # "i":I
    aget-object v1, v0, v1

    if-ne v1, p1, :cond_3

    return v2

    :cond_3
    move v1, v3

    goto :goto_1

    .line 231
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "additionalCapacity"    # I

    .line 366
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    if-ltz p1, :cond_1

    .line 367
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/2addr v0, p1

    .line 368
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 369
    :cond_0
    return-void

    .line 366
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

.method public entries()Lcom/badlogic/gdx/utils/ArrayMap$Entries;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ArrayMap$Entries<",
            "TK;TV;>;"
        }
    .end annotation

    .line 492
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    return-object v0

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    if-nez v0, :cond_1

    .line 494
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    .line 495
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries2:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->valid:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 498
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iput v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->index:I

    .line 499
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->valid:Z

    .line 500
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries2:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->valid:Z

    .line 501
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    return-object v0

    .line 503
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries2:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iput v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->index:I

    .line 504
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries2:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->valid:Z

    .line 505
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->valid:Z

    .line 506
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries2:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 432
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 433
    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 434
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/ArrayMap;

    .line 435
    .local v1, "other":Lcom/badlogic/gdx/utils/ArrayMap;
    iget v3, v1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-eq v3, v4, :cond_2

    return v2

    .line 436
    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 437
    .local v3, "keys":[Ljava/lang/Object;, "[TK;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 438
    .local v4, "values":[Ljava/lang/Object;, "[TV;"
    const/4 v5, 0x0

    .local v5, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .local v6, "n":I
    :goto_0
    if-ge v5, v6, :cond_5

    .line 439
    aget-object v7, v3, v5

    .line 440
    .local v7, "key":Ljava/lang/Object;, "TK;"
    aget-object v8, v4, v5

    .line 441
    .local v8, "value":Ljava/lang/Object;, "TV;"
    if-nez v8, :cond_3

    .line 442
    sget-object v9, Lcom/badlogic/gdx/utils/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {v1, v7, v9}, Lcom/badlogic/gdx/utils/ArrayMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    return v2

    .line 444
    :cond_3
    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    return v2

    .line 438
    .end local v7    # "key":Ljava/lang/Object;, "TK;"
    .end local v8    # "value":Ljava/lang/Object;, "TV;"
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 447
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_5
    return v0
.end method

.method public equalsIdentity(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 452
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 453
    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 454
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/ArrayMap;

    .line 455
    .local v1, "other":Lcom/badlogic/gdx/utils/ArrayMap;
    iget v3, v1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-eq v3, v4, :cond_2

    return v2

    .line 456
    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 457
    .local v3, "keys":[Ljava/lang/Object;, "[TK;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 458
    .local v4, "values":[Ljava/lang/Object;, "[TV;"
    const/4 v5, 0x0

    .local v5, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .local v6, "n":I
    :goto_0
    if-ge v5, v6, :cond_4

    .line 459
    aget-object v7, v4, v5

    aget-object v8, v3, v5

    sget-object v9, Lcom/badlogic/gdx/utils/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {v1, v8, v9}, Lcom/badlogic/gdx/utils/ArrayMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eq v7, v8, :cond_3

    return v2

    .line 458
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 460
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_4
    return v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 173
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Map is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public firstValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 178
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Map is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 135
    .local v0, "keys":[Ljava/lang/Object;
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    .line 136
    .local v1, "i":I
    if-nez p1, :cond_1

    .line 137
    :goto_0
    if-ltz v1, :cond_3

    .line 138
    aget-object v2, v0, v1

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    return-object v2

    .line 137
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 140
    :cond_1
    :goto_1
    if-ltz v1, :cond_3

    .line 141
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    return-object v2

    .line 140
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 143
    :cond_3
    return-object p2
.end method

.method public getKey(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3
    .param p2, "identity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)TK;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 151
    .local v0, "values":[Ljava/lang/Object;
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    .line 152
    .local v1, "i":I
    if-nez p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 156
    :cond_0
    :goto_0
    if-ltz v1, :cond_4

    .line 157
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v2, v2, v1

    return-object v2

    .line 156
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 153
    :cond_2
    :goto_1
    if-ltz v1, :cond_4

    .line 154
    aget-object v2, v0, v1

    if-ne v2, p1, :cond_3

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v2, v2, v1

    return-object v2

    .line 153
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 159
    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method public getKeyAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 163
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge p1, v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 168
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge p1, v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 8

    .line 419
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 420
    .local v0, "keys":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 421
    .local v1, "values":[Ljava/lang/Object;, "[TV;"
    const/4 v2, 0x0

    .line 422
    .local v2, "h":I
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 423
    aget-object v5, v0, v3

    .line 424
    .local v5, "key":Ljava/lang/Object;, "TK;"
    aget-object v6, v1, v3

    .line 425
    .local v6, "value":Ljava/lang/Object;, "TV;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    mul-int/lit8 v7, v7, 0x1f

    add-int/2addr v2, v7

    .line 426
    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    .line 422
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 428
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_2
    return v2
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 235
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 236
    .local v0, "keys":[Ljava/lang/Object;
    if-nez p1, :cond_2

    .line 237
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 238
    aget-object v3, v0, v1

    if-ne v3, p1, :cond_0

    return v1

    .line 237
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    goto :goto_2

    .line 240
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .restart local v2    # "n":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 241
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    .line 240
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 243
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_4
    :goto_2
    const/4 v1, -0x1

    return v1
.end method

.method public indexOfValue(Ljava/lang/Object;Z)I
    .locals 4
    .param p2, "identity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)I"
        }
    .end annotation

    .line 247
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 248
    .local v0, "values":[Ljava/lang/Object;
    if-nez p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 252
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 253
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    .line 252
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .restart local v2    # "n":I
    :goto_2
    if-ge v1, v2, :cond_4

    .line 250
    aget-object v3, v0, v1

    if-ne v3, p1, :cond_3

    return v1

    .line 249
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 255
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_4
    const/4 v1, -0x1

    return v1
.end method

.method public insert(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)V"
        }
    .end annotation

    .line 193
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-gt p1, v0, :cond_2

    .line 194
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/16 v1, 0x8

    int-to-float v0, v0

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 195
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    aget-object v2, v0, p1

    aput-object v2, v0, v1

    .line 200
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v2, v0, p1

    aput-object v2, v0, v1

    .line 202
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 203
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 204
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object p3, v0, p1

    .line 205
    return-void

    .line 193
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 323
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/utils/ObjectMap$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 483
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ArrayMap;->entries()Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/ArrayMap$Keys;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ArrayMap$Keys<",
            "TK;>;"
        }
    .end annotation

    .line 538
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    return-object v0

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    if-nez v0, :cond_1

    .line 540
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    .line 541
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys2:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->valid:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 544
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iput v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->index:I

    .line 545
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->valid:Z

    .line 546
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys2:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->valid:Z

    .line 547
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    return-object v0

    .line 549
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys2:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iput v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->index:I

    .line 550
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys2:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->valid:Z

    .line 551
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->valid:Z

    .line 552
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys2:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    return-object v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 318
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public peekKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 328
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public peekValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 333
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 87
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 88
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 89
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    const/16 v2, 0x8

    int-to-float v1, v1

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 90
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    move v0, v1

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 93
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 94
    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 4
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I)I"
        }
    .end annotation

    .line 98
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 99
    .local v0, "existingIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 100
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    goto :goto_0

    .line 101
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 102
    const/16 v2, 0x8

    int-to-float v1, v1

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 103
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    add-int/lit8 v2, p3, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v3, p3

    invoke-static {v1, p3, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    add-int/lit8 v2, p3, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v3, p3

    invoke-static {v1, p3, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object p1, v1, p3

    .line 106
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object p2, v1, p3

    .line 107
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 108
    return p3
.end method

.method public putAll(Lcom/badlogic/gdx/utils/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ArrayMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<+TK;+TV;>;"
    iget v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->putAll(Lcom/badlogic/gdx/utils/ArrayMap;II)V

    .line 113
    return-void
.end method

.method public putAll(Lcom/badlogic/gdx/utils/ArrayMap;II)V
    .locals 4
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ArrayMap<",
            "+TK;+TV;>;II)V"
        }
    .end annotation

    .line 116
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<+TK;+TV;>;"
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-gt v0, v1, :cond_1

    .line 118
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/2addr v0, p3

    sub-int/2addr v0, p2

    .line 119
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    int-to-float v2, v0

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 120
    :cond_0
    iget-object v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-static {v1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    iget-object v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-static {v1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 123
    return-void

    .line 117
    .end local v0    # "sizeNeeded":I
    :cond_1
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

    iget v2, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeIndex(I)V
    .locals 4
    .param p1, "index"    # I

    .line 302
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge p1, v0, :cond_1

    .line 303
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 304
    .local v1, "keys":[Ljava/lang/Object;
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 305
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    if-eqz v2, :cond_0

    .line 306
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 309
    :cond_0
    aget-object v2, v1, v0

    aput-object v2, v1, p1

    .line 310
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v0, v2, v0

    aput-object v0, v2, p1

    .line 312
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 313
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 314
    return-void

    .line 302
    .end local v1    # "keys":[Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 259
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 260
    .local v0, "keys":[Ljava/lang/Object;
    if-nez p1, :cond_2

    .line 261
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 262
    aget-object v3, v0, v1

    if-ne v3, p1, :cond_0

    .line 263
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v1

    .line 264
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    .line 265
    return-object v3

    .line 261
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    goto :goto_2

    .line 269
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .restart local v2    # "n":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 270
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 271
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v1

    .line 272
    .restart local v3    # "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    .line 273
    return-object v3

    .line 269
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 277
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_4
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public removeValue(Ljava/lang/Object;Z)Z
    .locals 5
    .param p2, "identity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)Z"
        }
    .end annotation

    .line 281
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 282
    .local v0, "values":[Ljava/lang/Object;
    const/4 v1, 0x1

    if-nez p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 290
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 291
    aget-object v4, v0, v2

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 292
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    .line 293
    return v1

    .line 290
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_2
    :goto_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .restart local v3    # "n":I
    :goto_2
    if-ge v2, v3, :cond_4

    .line 284
    aget-object v4, v0, v2

    if-ne v4, p1, :cond_3

    .line 285
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    .line 286
    return v1

    .line 283
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 297
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method protected resize(I)V
    .locals 6
    .param p1, "newSize"    # I

    .line 372
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 373
    .local v0, "newKeys":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 376
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 377
    .local v1, "newValues":[Ljava/lang/Object;, "[TV;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    array-length v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    iput-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 379
    return-void
.end method

.method public reverse()V
    .locals 8

    .line 382
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v2, v1, -0x1

    .local v2, "lastIndex":I
    div-int/lit8 v1, v1, 0x2

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 383
    sub-int v3, v2, v0

    .line 384
    .local v3, "ii":I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v5, v4, v0

    .line 385
    .local v5, "tempKey":Ljava/lang/Object;, "TK;"
    aget-object v6, v4, v3

    aput-object v6, v4, v0

    .line 386
    aput-object v5, v4, v3

    .line 388
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v6, v4, v0

    .line 389
    .local v6, "tempValue":Ljava/lang/Object;, "TV;"
    aget-object v7, v4, v3

    aput-object v7, v4, v0

    .line 390
    aput-object v6, v4, v3

    .line 382
    .end local v3    # "ii":I
    .end local v5    # "tempKey":Ljava/lang/Object;, "TK;"
    .end local v6    # "tempValue":Ljava/lang/Object;, "TV;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "lastIndex":I
    :cond_0
    return-void
.end method

.method public setKey(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)V"
        }
    .end annotation

    .line 183
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge p1, v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 185
    return-void

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 188
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge p1, v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 190
    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shrink()V
    .locals 2

    .line 359
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ne v0, v1, :cond_0

    return-void

    .line 360
    :cond_0
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 361
    return-void
.end method

.method public shuffle()V
    .locals 6

    .line 395
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 396
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v1

    .line 397
    .local v1, "ii":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v3, v2, v0

    .line 398
    .local v3, "tempKey":Ljava/lang/Object;, "TK;"
    aget-object v4, v2, v1

    aput-object v4, v2, v0

    .line 399
    aput-object v3, v2, v1

    .line 401
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v4, v2, v0

    .line 402
    .local v4, "tempValue":Ljava/lang/Object;, "TV;"
    aget-object v5, v2, v1

    aput-object v5, v2, v0

    .line 403
    aput-object v4, v2, v1

    .line 395
    .end local v1    # "ii":I
    .end local v3    # "tempKey":Ljava/lang/Object;, "TK;"
    .end local v4    # "tempValue":Ljava/lang/Object;, "TV;"
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 405
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 464
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "{}"

    return-object v0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 466
    .local v0, "keys":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 467
    .local v1, "values":[Ljava/lang/Object;, "[TV;"
    new-instance v2, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 468
    .local v2, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 469
    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 470
    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 471
    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 472
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    iget v5, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge v3, v5, :cond_1

    .line 473
    const-string v5, ", "

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 474
    aget-object v5, v0, v3

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 475
    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 476
    aget-object v5, v1, v3

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 472
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 478
    .end local v3    # "i":I
    :cond_1
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 479
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public truncate(I)V
    .locals 3
    .param p1, "newSize"    # I

    .line 410
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-gt v0, p1, :cond_0

    return-void

    .line 411
    :cond_0
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge v0, v1, :cond_1

    .line 412
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 413
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    .end local v0    # "i":I
    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 416
    return-void
.end method

.method public values()Lcom/badlogic/gdx/utils/ArrayMap$Values;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ArrayMap$Values<",
            "TV;>;"
        }
    .end annotation

    .line 515
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Values;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    return-object v0

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    if-nez v0, :cond_1

    .line 517
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Values;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    .line 518
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Values;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values2:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->valid:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iput v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    .line 522
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->valid:Z

    .line 523
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values2:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->valid:Z

    .line 524
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    return-object v0

    .line 526
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values2:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iput v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    .line 527
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values2:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->valid:Z

    .line 528
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->valid:Z

    .line 529
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values2:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    return-object v0
.end method
