.class Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;
.super Ljava/lang/Object;
.source "ObjectIntMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/util/ObjectIntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field final map:Lcom/esotericsoftware/kryo/util/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/util/ObjectIntMap<",
            "TK;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/ObjectIntMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/ObjectIntMap<",
            "TK;>;)V"
        }
    .end annotation

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 404
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->valid:Z

    .line 407
    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    .line 408
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->reset()V

    return-void
.end method


# virtual methods
.method findNextIndex()V
    .locals 4

    .line 418
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 419
    array-length v1, v0

    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_1

    .line 420
    aget-object v2, v0, v2

    if-eqz v2, :cond_0

    .line 421
    iput-boolean v3, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->hasNext:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 425
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->hasNext:Z

    return-void
.end method

.method public remove()V
    .locals 8

    .line 429
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->currentIndex:I

    if-ltz v0, :cond_3

    .line 431
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 432
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    iget-object v2, v2, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    .line 433
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    iget v3, v3, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->mask:I

    add-int/lit8 v4, v0, 0x1

    :goto_0
    and-int/2addr v4, v3

    .line 435
    aget-object v5, v1, v4

    if-eqz v5, :cond_1

    .line 436
    iget-object v6, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    invoke-virtual {v6, v5}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->place(Ljava/lang/Object;)I

    move-result v6

    sub-int v7, v4, v6

    and-int/2addr v7, v3

    sub-int v6, v0, v6

    and-int/2addr v6, v3

    if-le v7, v6, :cond_0

    .line 438
    aput-object v5, v1, v0

    .line 439
    aget v5, v2, v4

    aput v5, v2, v0

    move v0, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 444
    aput-object v2, v1, v0

    .line 445
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    iget v2, v1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    .line 446
    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->currentIndex:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->nextIndex:I

    :cond_2
    const/4 v0, -0x1

    .line 447
    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->currentIndex:I

    return-void

    .line 430
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    .line 412
    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->currentIndex:I

    .line 413
    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->nextIndex:I

    .line 414
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->findNextIndex()V

    return-void
.end method
