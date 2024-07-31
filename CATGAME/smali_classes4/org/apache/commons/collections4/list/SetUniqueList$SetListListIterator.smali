.class Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;
.source "SetUniqueList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/SetUniqueList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetListListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator<",
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

.field private final set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/ListIterator;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "TE;>;",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 400
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;, "Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator<TE;>;"
    .local p1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;-><init>(Ljava/util/ListIterator;)V

    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;->last:Ljava/lang/Object;

    .line 401
    iput-object p2, p0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;->set:Ljava/util/Set;

    .line 402
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 425
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;, "Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;->add(Ljava/lang/Object;)V

    .line 427
    iget-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_0
    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 406
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;, "Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;->last:Ljava/lang/Object;

    .line 407
    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 412
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;, "Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;->previous()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;->last:Ljava/lang/Object;

    .line 413
    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 418
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;, "Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;->remove()V

    .line 419
    iget-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;->set:Ljava/util/Set;

    iget-object v1, p0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;->last:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;->last:Ljava/lang/Object;

    .line 421
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 433
    .local p0, "this":Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator;, "Lorg/apache/commons/collections4/list/SetUniqueList$SetListListIterator<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ListIterator does not support set"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
