.class public Lorg/apache/commons/collections/set/CompositeSet;
.super Lorg/apache/commons/collections/collection/CompositeCollection;
.source "CompositeSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/set/CompositeSet$SetMutator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/apache/commons/collections/collection/CompositeCollection;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .param p1, "set"    # Ljava/util/Set;

    .line 51
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/CompositeCollection;-><init>(Ljava/util/Collection;)V

    .line 52
    return-void
.end method

.method public constructor <init>([Ljava/util/Set;)V
    .locals 0
    .param p1, "sets"    # [Ljava/util/Set;

    .line 58
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/CompositeCollection;-><init>([Ljava/util/Collection;)V

    .line 59
    return-void
.end method


# virtual methods
.method public declared-synchronized addComposited(Ljava/util/Collection;)V
    .locals 5
    .param p1, "c"    # Ljava/util/Collection;

    monitor-enter p0

    .line 73
    :try_start_0
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_5

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/CompositeSet;->getCollections()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 79
    .local v1, "set":Ljava/util/Set;
    invoke-static {v1, p1}, Lorg/apache/commons/collections/CollectionUtils;->intersection(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    .line 80
    .local v2, "intersects":Ljava/util/Collection;
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 81
    iget-object v3, p0, Lorg/apache/commons/collections/set/CompositeSet;->mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;

    if-eqz v3, :cond_2

    .line 85
    iget-object v3, p0, Lorg/apache/commons/collections/set/CompositeSet;->mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;

    instance-of v3, v3, Lorg/apache/commons/collections/set/CompositeSet$SetMutator;

    if-eqz v3, :cond_1

    .line 89
    iget-object v3, p0, Lorg/apache/commons/collections/set/CompositeSet;->mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;

    check-cast v3, Lorg/apache/commons/collections/set/CompositeSet$SetMutator;

    move-object v4, p1

    check-cast v4, Ljava/util/Set;

    invoke-interface {v3, p0, v1, v4, v2}, Lorg/apache/commons/collections/set/CompositeSet$SetMutator;->resolveCollision(Lorg/apache/commons/collections/set/CompositeSet;Ljava/util/Set;Ljava/util/Set;Ljava/util/Collection;)V

    .line 90
    invoke-static {v1, p1}, Lorg/apache/commons/collections/CollectionUtils;->intersection(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    .line 91
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Attempt to add illegal entry unresolved by SetMutator.resolveCollision()"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    .end local p0    # "this":Lorg/apache/commons/collections/set/CompositeSet;
    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Collision adding composited collection to a CompositeSet with a CollectionMutator instead of a SetMutator"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Collision adding composited collection with no SetMutator set"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    .end local v1    # "set":Ljava/util/Set;
    .end local v2    # "intersects":Ljava/util/Collection;
    :cond_3
    :goto_1
    goto :goto_0

    .line 96
    .end local v0    # "i":Ljava/util/Iterator;
    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-super {p0, v0}, Lorg/apache/commons/collections/collection/CompositeCollection;->addComposited([Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 74
    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Collections added must implement java.util.Set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .end local p1    # "c":Ljava/util/Collection;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addComposited(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .param p1, "c"    # Ljava/util/Collection;
    .param p2, "d"    # Ljava/util/Collection;

    monitor-enter p0

    .line 105
    :try_start_0
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 106
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Set;

    const/4 v1, 0x0

    move-object v2, p1

    check-cast v2, Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    move-object v2, p2

    check-cast v2, Ljava/util/Set;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/set/CompositeSet;->addComposited([Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 106
    .end local p0    # "this":Lorg/apache/commons/collections/set/CompositeSet;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument must implement java.util.Set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument must implement java.util.Set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .end local p1    # "c":Ljava/util/Collection;
    .end local p2    # "d":Ljava/util/Collection;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addComposited([Ljava/util/Collection;)V
    .locals 2
    .param p1, "comps"    # [Ljava/util/Collection;

    monitor-enter p0

    .line 116
    :try_start_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 117
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/set/CompositeSet;->addComposited(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 119
    .end local v0    # "i":I
    .end local p0    # "this":Lorg/apache/commons/collections/set/CompositeSet;
    :cond_0
    monitor-exit p0

    return-void

    .line 115
    .end local p1    # "comps":[Ljava/util/Collection;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 154
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 155
    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    .line 156
    .local v0, "set":Ljava/util/Set;
    invoke-interface {v0, p0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/collections/set/CompositeSet;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 157
    const/4 v1, 0x1

    return v1

    .line 160
    .end local v0    # "set":Ljava/util/Set;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "code":I
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/CompositeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 170
    .local v2, "next":Ljava/lang/Object;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    .line 171
    .end local v2    # "next":Ljava/lang/Object;
    goto :goto_0

    .line 172
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 142
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/CompositeSet;->getCollections()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 144
    .local v1, "set":Ljava/util/Set;
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 145
    .end local v1    # "set":Ljava/util/Set;
    :cond_0
    goto :goto_0

    .line 146
    .end local v0    # "i":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setMutator(Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;)V
    .locals 0
    .param p1, "mutator"    # Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;

    .line 129
    invoke-super {p0, p1}, Lorg/apache/commons/collections/collection/CompositeCollection;->setMutator(Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;)V

    .line 130
    return-void
.end method
