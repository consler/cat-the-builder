.class public Lcom/koushikdutta/async/util/HashList;
.super Ljava/lang/Object;
.source "HashList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field internal:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/util/TaggedList<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    .local p0, "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/util/HashList;->internal:Ljava/util/Hashtable;

    .line 14
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .local p0, "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 54
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/HashList;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 55
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-nez v0, :cond_0

    .line 56
    new-instance v1, Lcom/koushikdutta/async/util/TaggedList;

    invoke-direct {v1}, Lcom/koushikdutta/async/util/TaggedList;-><init>()V

    .line 57
    .local v1, "put":Lcom/koushikdutta/async/util/TaggedList;, "Lcom/koushikdutta/async/util/TaggedList<TT;>;"
    move-object v0, v1

    .line 58
    iget-object v2, p0, Lcom/koushikdutta/async/util/HashList;->internal:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .end local v1    # "put":Lcom/koushikdutta/async/util/TaggedList;, "Lcom/koushikdutta/async/util/TaggedList<TT;>;"
    .end local p0    # "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 53
    .end local v0    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .local p0, "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    monitor-enter p0

    .line 49
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/HashList;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 50
    .local v0, "check":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    .line 48
    .end local v0    # "check":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .local p0, "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/util/HashList;->internal:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 45
    .end local p0    # "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    .local p0, "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    iget-object v0, p0, Lcom/koushikdutta/async/util/HashList;->internal:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized pop(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .local p0, "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/util/HashList;->internal:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/util/TaggedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .local v0, "values":Lcom/koushikdutta/async/util/TaggedList;, "Lcom/koushikdutta/async/util/TaggedList<TT;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 66
    monitor-exit p0

    return-object v1

    .line 67
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/koushikdutta/async/util/TaggedList;->size()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 68
    monitor-exit p0

    return-object v1

    .line 69
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/koushikdutta/async/util/TaggedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/TaggedList;->remove(I)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 63
    .end local v0    # "values":Lcom/koushikdutta/async/util/TaggedList;, "Lcom/koushikdutta/async/util/TaggedList<TT;>;"
    .end local p0    # "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .local p0, "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/util/HashList;->internal:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 37
    .end local p0    # "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeItem(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .local p0, "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/util/HashList;->internal:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/util/TaggedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .local v0, "values":Lcom/koushikdutta/async/util/TaggedList;, "Lcom/koushikdutta/async/util/TaggedList<TT;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 75
    monitor-exit p0

    return v1

    .line 77
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/util/TaggedList;->remove(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {v0}, Lcom/koushikdutta/async/util/TaggedList;->size()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    .line 72
    .end local v0    # "values":Lcom/koushikdutta/async/util/TaggedList;, "Lcom/koushikdutta/async/util/TaggedList<TT;>;"
    .end local p0    # "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()I
    .locals 1

    .local p0, "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/util/HashList;->internal:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 41
    .end local p0    # "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tag(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .local p0, "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/util/HashList;->internal:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/util/TaggedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .local v0, "list":Lcom/koushikdutta/async/util/TaggedList;, "Lcom/koushikdutta/async/util/TaggedList<TT;>;"
    if-nez v0, :cond_0

    .line 23
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 24
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/koushikdutta/async/util/TaggedList;->tag()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 20
    .end local v0    # "list":Lcom/koushikdutta/async/util/TaggedList;, "Lcom/koushikdutta/async/util/TaggedList<TT;>;"
    .end local p0    # "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized tag(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TV;)V"
        }
    .end annotation

    .local p0, "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    .local p2, "tag":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/util/HashList;->internal:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/util/TaggedList;

    .line 29
    .local v0, "list":Lcom/koushikdutta/async/util/TaggedList;, "Lcom/koushikdutta/async/util/TaggedList<TT;>;"
    if-nez v0, :cond_0

    .line 30
    new-instance v1, Lcom/koushikdutta/async/util/TaggedList;

    invoke-direct {v1}, Lcom/koushikdutta/async/util/TaggedList;-><init>()V

    move-object v0, v1

    .line 31
    iget-object v1, p0, Lcom/koushikdutta/async/util/HashList;->internal:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .end local p0    # "this":Lcom/koushikdutta/async/util/HashList;, "Lcom/koushikdutta/async/util/HashList<TT;>;"
    :cond_0
    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/util/TaggedList;->tag(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    .line 27
    .end local v0    # "list":Lcom/koushikdutta/async/util/TaggedList;, "Lcom/koushikdutta/async/util/TaggedList<TT;>;"
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "tag":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
