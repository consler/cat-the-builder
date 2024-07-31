.class Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;
.super Ljava/lang/Object;
.source "AbstractMapBag.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bag/AbstractMapBag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BagIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private canRemove:Z

.field private current:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TE;",
            "Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;",
            ">;"
        }
    .end annotation
.end field

.field private final entryIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TE;",
            "Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;",
            ">;>;"
        }
    .end annotation
.end field

.field private itemCount:I

.field private final mods:I

.field private final parent:Lorg/apache/commons/collections4/bag/AbstractMapBag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bag/AbstractMapBag<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/bag/AbstractMapBag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bag/AbstractMapBag<",
            "TE;>;)V"
        }
    .end annotation

    .line 194
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;, "Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator<TE;>;"
    .local p1, "parent":Lorg/apache/commons/collections4/bag/AbstractMapBag;, "Lorg/apache/commons/collections4/bag/AbstractMapBag<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->parent:Lorg/apache/commons/collections4/bag/AbstractMapBag;

    .line 196
    invoke-static {p1}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->access$000(Lorg/apache/commons/collections4/bag/AbstractMapBag;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->entryIterator:Ljava/util/Iterator;

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->current:Ljava/util/Map$Entry;

    .line 198
    invoke-static {p1}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->access$100(Lorg/apache/commons/collections4/bag/AbstractMapBag;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->mods:I

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->canRemove:Z

    .line 200
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 205
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;, "Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->itemCount:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 211
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;, "Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->parent:Lorg/apache/commons/collections4/bag/AbstractMapBag;

    invoke-static {v0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->access$100(Lorg/apache/commons/collections4/bag/AbstractMapBag;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->mods:I

    if-ne v0, v1, :cond_1

    .line 214
    iget v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->itemCount:I

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->current:Ljava/util/Map$Entry;

    .line 216
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    iget v0, v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    iput v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->itemCount:I

    .line 218
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->canRemove:Z

    .line 219
    iget v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->itemCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->itemCount:I

    .line 220
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->current:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 212
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 226
    .local p0, "this":Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;, "Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->parent:Lorg/apache/commons/collections4/bag/AbstractMapBag;

    invoke-static {v0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->access$100(Lorg/apache/commons/collections4/bag/AbstractMapBag;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->mods:I

    if-ne v0, v1, :cond_2

    .line 229
    iget-boolean v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->canRemove:Z

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->current:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;

    .line 233
    .local v0, "mut":Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;
    iget v1, v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 234
    iget v1, v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;->value:I

    goto :goto_0

    .line 236
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 238
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->parent:Lorg/apache/commons/collections4/bag/AbstractMapBag;

    invoke-static {v1}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->access$210(Lorg/apache/commons/collections4/bag/AbstractMapBag;)I

    .line 239
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/collections4/bag/AbstractMapBag$BagIterator;->canRemove:Z

    .line 240
    return-void

    .line 230
    .end local v0    # "mut":Lorg/apache/commons/collections4/bag/AbstractMapBag$MutableInteger;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 227
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
