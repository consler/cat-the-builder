.class abstract Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;
.super Ljava/lang/Object;
.source "ObjectMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/util/ObjectMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TI;>;",
        "Ljava/util/Iterator<",
        "TI;>;"
    }
.end annotation


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field final map:Lcom/esotericsoftware/kryo/util/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/util/ObjectMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/ObjectMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/ObjectMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 458
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->valid:Z

    .line 461
    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    .line 462
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->reset()V

    return-void
.end method


# virtual methods
.method findNextIndex()V
    .locals 4

    .line 472
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 473
    array-length v1, v0

    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_1

    .line 474
    aget-object v2, v0, v2

    if-eqz v2, :cond_0

    .line 475
    iput-boolean v3, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->hasNext:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 479
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->hasNext:Z

    return-void
.end method

.method public remove()V
    .locals 8

    .line 483
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->currentIndex:I

    if-ltz v0, :cond_3

    .line 485
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 486
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget-object v2, v2, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 487
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget v3, v3, Lcom/esotericsoftware/kryo/util/ObjectMap;->mask:I

    add-int/lit8 v4, v0, 0x1

    :goto_0
    and-int/2addr v4, v3

    .line 489
    aget-object v5, v1, v4

    if-eqz v5, :cond_1

    .line 490
    iget-object v6, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    invoke-virtual {v6, v5}, Lcom/esotericsoftware/kryo/util/ObjectMap;->place(Ljava/lang/Object;)I

    move-result v6

    sub-int v7, v4, v6

    and-int/2addr v7, v3

    sub-int v6, v0, v6

    and-int/2addr v6, v3

    if-le v7, v6, :cond_0

    .line 492
    aput-object v5, v1, v0

    .line 493
    aget-object v5, v2, v4

    aput-object v5, v2, v0

    move v0, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 498
    aput-object v3, v1, v0

    .line 499
    aput-object v3, v2, v0

    .line 500
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget v2, v1, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    .line 501
    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->currentIndex:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->nextIndex:I

    :cond_2
    const/4 v0, -0x1

    .line 502
    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->currentIndex:I

    return-void

    .line 484
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    .line 466
    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->currentIndex:I

    .line 467
    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->nextIndex:I

    .line 468
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->findNextIndex()V

    return-void
.end method
