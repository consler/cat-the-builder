.class public Lorg/apache/commons/collections4/collection/CompositeCollection;
.super Ljava/lang/Object;
.source "CompositeCollection.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x74d105f656c97d71L


# instance fields
.field private final all:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private mutator:Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "compositeCollection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    .line 68
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/collection/CompositeCollection;->addComposited(Ljava/util/Collection;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 79
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "compositeCollection1":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p2, "compositeCollection2":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    .line 80
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/collection/CompositeCollection;->addComposited(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 81
    return-void
.end method

.method public varargs constructor <init>([Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "compositeCollections":[Ljava/util/Collection;, "[Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    .line 90
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/collection/CompositeCollection;->addComposited([Ljava/util/Collection;)V

    .line 91
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 227
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;

    if-eqz v0, :cond_0

    .line 231
    iget-object v1, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;->add(Lorg/apache/commons/collections4/collection/CompositeCollection;Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add() is not supported on CompositeCollection without a CollectionMutator strategy"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 290
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;

    if-eqz v0, :cond_0

    .line 294
    iget-object v1, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;->addAll(Lorg/apache/commons/collections4/collection/CompositeCollection;Ljava/util/List;Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addAll() is not supported on CompositeCollection without a CollectionMutator strategy"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addComposited(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 391
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "compositeCollection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    if-eqz p1, :cond_0

    .line 392
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_0
    return-void
.end method

.method public addComposited(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 404
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "compositeCollection1":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p2, "compositeCollection2":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    if-eqz p1, :cond_0

    .line 405
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_0
    if-eqz p2, :cond_1

    .line 408
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_1
    return-void
.end method

.method public varargs addComposited([Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 418
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "compositeCollections":[Ljava/util/Collection;, "[Ljava/util/Collection<TE;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 419
    .local v2, "compositeCollection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    if-eqz v2, :cond_0

    .line 420
    iget-object v3, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    .end local v2    # "compositeCollection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 423
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 2

    .line 370
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 371
    .local v1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 372
    .end local v1    # "coll":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    goto :goto_0

    .line 373
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 137
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 138
    .local v1, "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    const/4 v0, 0x1

    return v0

    .line 141
    .end local v1    # "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    :cond_0
    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 265
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 266
    return v0

    .line 268
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 269
    .local v2, "item":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/collection/CompositeCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 270
    return v0

    .line 272
    .end local v2    # "item":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 273
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public getCollections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation

    .line 451
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/commons/collections4/list/UnmodifiableList;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getMutator()Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator<",
            "TE;>;"
        }
    .end annotation

    .line 459
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    .line 119
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 120
    .local v1, "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    const/4 v0, 0x0

    return v0

    .line 123
    .end local v1    # "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    :cond_0
    goto :goto_0

    .line 124
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 157
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyIterator;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 160
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/IteratorChain;

    invoke-direct {v0}, Lorg/apache/commons/collections4/iterators/IteratorChain;-><init>()V

    .line 161
    .local v0, "chain":Lorg/apache/commons/collections4/iterators/IteratorChain;, "Lorg/apache/commons/collections4/iterators/IteratorChain<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 162
    .local v2, "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    .line 163
    .end local v2    # "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    goto :goto_0

    .line 164
    :cond_1
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 247
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;

    if-eqz v0, :cond_0

    .line 251
    iget-object v1, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;->remove(Lorg/apache/commons/collections4/collection/CompositeCollection;Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported on CompositeCollection without a CollectionMutator strategy"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 308
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lorg/apache/commons/collections4/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const/4 v0, 0x0

    return v0

    .line 311
    :cond_0
    const/4 v0, 0x0

    .line 312
    .local v0, "changed":Z
    iget-object v1, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 313
    .local v2, "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v2, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 314
    .end local v2    # "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    goto :goto_0

    .line 315
    :cond_1
    return v0
.end method

.method public removeComposited(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 431
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 432
    return-void
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 330
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {p1}, L$r8$backportedMethods$utility$Objects$1$isNull;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, 0x0

    return v0

    .line 333
    :cond_0
    const/4 v0, 0x0

    .line 334
    .local v0, "changed":Z
    iget-object v1, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 335
    .local v2, "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v2, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 336
    .end local v2    # "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    goto :goto_0

    .line 337
    :cond_1
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 352
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 353
    .local v0, "changed":Z
    if-eqz p1, :cond_0

    .line 354
    iget-object v1, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 355
    .local v2, "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v2, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 356
    .end local v2    # "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    goto :goto_0

    .line 358
    :cond_0
    return v0
.end method

.method public setMutator(Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator<",
            "TE;>;)V"
        }
    .end annotation

    .line 382
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "mutator":Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;, "Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator<TE;>;"
    iput-object p1, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;

    .line 383
    return-void
.end method

.method public size()I
    .locals 4

    .line 103
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    const/4 v0, 0x0

    .line 104
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 105
    .local v2, "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 106
    .end local v2    # "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    goto :goto_0

    .line 107
    :cond_0
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .line 174
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/CompositeCollection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 175
    .local v0, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 176
    .local v1, "i":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/CompositeCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 193
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/CompositeCollection;->size()I

    move-result v0

    .line 194
    .local v0, "size":I
    const/4 v1, 0x0

    .line 195
    .local v1, "result":[Ljava/lang/Object;
    array-length v2, p1

    if-lt v2, v0, :cond_0

    .line 196
    move-object v1, p1

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 201
    :goto_0
    const/4 v2, 0x0

    .line 202
    .local v2, "offset":I
    iget-object v3, p0, Lorg/apache/commons/collections4/collection/CompositeCollection;->all:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 203
    .local v4, "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 204
    .local v6, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "offset":I
    .local v7, "offset":I
    aput-object v6, v1, v2

    .line 205
    .end local v6    # "e":Ljava/lang/Object;, "TE;"
    move v2, v7

    goto :goto_2

    .line 206
    .end local v4    # "item":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .end local v7    # "offset":I
    .restart local v2    # "offset":I
    :cond_1
    goto :goto_1

    .line 207
    :cond_2
    array-length v3, v1

    if-le v3, v0, :cond_3

    .line 208
    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 210
    :cond_3
    move-object v3, v1

    check-cast v3, [Ljava/lang/Object;

    return-object v3
.end method

.method public toCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 442
    .local p0, "this":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
