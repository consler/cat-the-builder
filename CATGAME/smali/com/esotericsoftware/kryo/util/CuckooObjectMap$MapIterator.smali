.class Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;
.super Ljava/lang/Object;
.source "CuckooObjectMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/util/CuckooObjectMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field final map:Lcom/esotericsoftware/kryo/util/CuckooObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/CuckooObjectMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/CuckooObjectMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/CuckooObjectMap;

    .line 682
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->reset()V

    return-void
.end method


# virtual methods
.method advance()V
    .locals 4

    const/4 v0, 0x0

    .line 692
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->hasNext:Z

    .line 693
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/CuckooObjectMap;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    .line 694
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/CuckooObjectMap;

    iget v1, v1, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/CuckooObjectMap;

    iget v2, v2, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->stashSize:I

    add-int/2addr v1, v2

    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_1

    .line 695
    aget-object v2, v0, v2

    if-eqz v2, :cond_0

    .line 696
    iput-boolean v3, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->hasNext:Z

    :cond_1
    return-void
.end method

.method public remove()V
    .locals 3

    .line 703
    iget v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->currentIndex:I

    if-ltz v0, :cond_1

    .line 704
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/CuckooObjectMap;

    iget v1, v1, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->capacity:I

    if-lt v0, v1, :cond_0

    .line 705
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/CuckooObjectMap;

    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->removeStashIndex(I)V

    .line 706
    iget v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->nextIndex:I

    .line 707
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->advance()V

    goto :goto_0

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/CuckooObjectMap;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->keyTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->currentIndex:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 710
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/CuckooObjectMap;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->valueTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->currentIndex:I

    aput-object v2, v0, v1

    :goto_0
    const/4 v0, -0x1

    .line 712
    iput v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->currentIndex:I

    .line 713
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->map:Lcom/esotericsoftware/kryo/util/CuckooObjectMap;

    iget v1, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap;->size:I

    return-void

    .line 703
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    .line 686
    iput v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->currentIndex:I

    .line 687
    iput v0, p0, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->nextIndex:I

    .line 688
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/CuckooObjectMap$MapIterator;->advance()V

    return-void
.end method
