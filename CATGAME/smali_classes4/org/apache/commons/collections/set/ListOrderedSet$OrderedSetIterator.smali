.class Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;
.super Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;
.source "ListOrderedSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/set/ListOrderedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OrderedSetIterator"
.end annotation


# instance fields
.field protected last:Ljava/lang/Object;

.field protected final set:Ljava/util/Collection;


# direct methods
.method private constructor <init>(Ljava/util/Iterator;Ljava/util/Collection;)V
    .locals 0

    .line 297
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    .line 298
    iput-object p2, p0, Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;->set:Ljava/util/Collection;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Iterator;Ljava/util/Collection;Lorg/apache/commons/collections/set/ListOrderedSet$1;)V
    .locals 0

    .line 289
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;-><init>(Ljava/util/Iterator;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .line 302
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;->last:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 307
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;->set:Ljava/util/Collection;

    iget-object v1, p0, Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;->last:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 308
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    .line 309
    iput-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;->last:Ljava/lang/Object;

    return-void
.end method
