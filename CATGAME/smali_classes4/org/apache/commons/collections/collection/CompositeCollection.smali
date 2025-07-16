.class public Lorg/apache/commons/collections/collection/CompositeCollection;
.super Ljava/lang/Object;
.source "CompositeCollection.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;
    }
.end annotation


# instance fields
.field protected all:[Ljava/util/Collection;

.field protected mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Collection;

    .line 56
    iput-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lorg/apache/commons/collections/collection/CompositeCollection;-><init>()V

    .line 66
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/collection/CompositeCollection;->addComposited(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>([Ljava/util/Collection;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lorg/apache/commons/collections/collection/CompositeCollection;-><init>()V

    .line 77
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/collection/CompositeCollection;->addComposited([Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2

    .line 206
    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;

    if-eqz v0, :cond_0

    .line 210
    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;->add(Lorg/apache/commons/collections/collection/CompositeCollection;[Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 207
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "add() is not supported on CompositeCollection without a CollectionMutator strategy"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2

    .line 263
    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;

    if-eqz v0, :cond_0

    .line 267
    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;->addAll(Lorg/apache/commons/collections/collection/CompositeCollection;[Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 264
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "addAll() is not supported on CompositeCollection without a CollectionMutator strategy"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addComposited(Ljava/util/Collection;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 348
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/collection/CompositeCollection;->addComposited([Ljava/util/Collection;)V

    return-void
.end method

.method public addComposited(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 358
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/collection/CompositeCollection;->addComposited([Ljava/util/Collection;)V

    return-void
.end method

.method public addComposited([Ljava/util/Collection;)V
    .locals 2

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 338
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 339
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/Collection;

    check-cast p1, [Ljava/util/Collection;

    iput-object p1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    return-void
.end method

.method public clear()V
    .locals 3

    const/4 v0, 0x0

    .line 316
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 317
    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 121
    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 122
    iget-object v2, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    .line 242
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/collection/CompositeCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getCollections()Ljava/util/Collection;
    .locals 1

    .line 389
    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/list/UnmodifiableList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    .line 104
    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 105
    iget-object v2, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4

    .line 140
    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    return-object v0

    .line 143
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/iterators/IteratorChain;

    invoke-direct {v0}, Lorg/apache/commons/collections/iterators/IteratorChain;-><init>()V

    const/4 v1, 0x0

    .line 144
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 145
    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 225
    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;

    if-eqz v0, :cond_0

    .line 229
    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;->remove(Lorg/apache/commons/collections/collection/CompositeCollection;[Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 226
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "remove() is not supported on CompositeCollection without a CollectionMutator strategy"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 5

    .line 280
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 284
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v3, v1

    :goto_0
    if-ltz v0, :cond_3

    .line 285
    iget-object v4, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    aget-object v4, v4, v0

    invoke-interface {v4, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v2

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public removeComposited(Ljava/util/Collection;)V
    .locals 2

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 368
    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 369
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 370
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/Collection;

    check-cast p1, [Ljava/util/Collection;

    iput-object p1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 5

    .line 302
    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_2

    .line 303
    iget-object v4, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    aget-object v4, v4, v0

    invoke-interface {v4, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v2

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v1

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public setMutator(Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;

    return-void
.end method

.method public size()I
    .locals 3

    .line 90
    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    .line 91
    iget-object v2, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .line 156
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/CompositeCollection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 158
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/CompositeCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    .line 172
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/CompositeCollection;->size()I

    move-result v0

    .line 174
    array-length v1, p1

    if-lt v1, v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    .line 182
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 183
    aget-object v3, v3, v1

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 184
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p1, v2

    move v2, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 187
    :cond_2
    array-length v1, p1

    if-le v1, v0, :cond_3

    const/4 v1, 0x0

    .line 188
    aput-object v1, p1, v0

    :cond_3
    return-object p1
.end method

.method public toCollection()Ljava/util/Collection;
    .locals 1

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
