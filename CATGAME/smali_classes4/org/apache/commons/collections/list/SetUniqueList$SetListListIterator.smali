.class Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;
.super Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;
.source "SetUniqueList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/list/SetUniqueList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetListListIterator"
.end annotation


# instance fields
.field protected last:Ljava/lang/Object;

.field protected final set:Ljava/util/Set;


# direct methods
.method protected constructor <init>(Ljava/util/ListIterator;Ljava/util/Set;)V
    .locals 1
    .param p1, "it"    # Ljava/util/ListIterator;
    .param p2, "set"    # Ljava/util/Set;

    .line 348
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;-><init>(Ljava/util/ListIterator;)V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;->last:Ljava/lang/Object;

    .line 349
    iput-object p2, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;->set:Ljava/util/Set;

    .line 350
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 369
    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    invoke-super {p0, p1}, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;->add(Ljava/lang/Object;)V

    .line 371
    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_0
    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 353
    invoke-super {p0}, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;->last:Ljava/lang/Object;

    .line 354
    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .line 358
    invoke-super {p0}, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;->previous()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;->last:Ljava/lang/Object;

    .line 359
    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 363
    invoke-super {p0}, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;->remove()V

    .line 364
    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;->set:Ljava/util/Set;

    iget-object v1, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;->last:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;->last:Ljava/lang/Object;

    .line 366
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 376
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ListIterator does not support set"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
