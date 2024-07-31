.class Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;
.source "ListOrderedSet.java"

# interfaces
.implements Lorg/apache/commons/collections4/OrderedIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/set/ListOrderedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OrderedSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/OrderedIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private last:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final set:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/ListIterator;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "TE;>;",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 403
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;, "Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator<TE;>;"
    .local p1, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    .local p2, "set":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    .line 404
    iput-object p2, p0, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;->set:Ljava/util/Collection;

    .line 405
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ListIterator;Ljava/util/Collection;Lorg/apache/commons/collections4/set/ListOrderedSet$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/ListIterator;
    .param p2, "x1"    # Ljava/util/Collection;
    .param p3, "x2"    # Lorg/apache/commons/collections4/set/ListOrderedSet$1;

    .line 392
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;, "Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator<TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;-><init>(Ljava/util/ListIterator;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public hasPrevious()Z
    .locals 1

    .line 422
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;, "Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 409
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;, "Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;->last:Ljava/lang/Object;

    .line 410
    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 427
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;, "Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;->last:Ljava/lang/Object;

    .line 428
    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 415
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;, "Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;->set:Ljava/util/Collection;

    iget-object v1, p0, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;->last:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 416
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;->last:Ljava/lang/Object;

    .line 418
    return-void
.end method
