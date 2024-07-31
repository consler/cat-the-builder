.class public Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;
.super Ljava/lang/Object;
.source "EntrySetToMapIteratorAdapter.java"

# interfaces
.implements Lorg/apache/commons/collections4/MapIterator;
.implements Lorg/apache/commons/collections4/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/MapIterator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/ResettableIterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field transient entry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field transient iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;, "Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter<TK;TV;>;"
    .local p1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;->entrySet:Ljava/util/Set;

    .line 51
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;->reset()V

    .line 52
    return-void
.end method


# virtual methods
.method protected declared-synchronized current()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;, "Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter<TK;TV;>;"
    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;->entry:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;->entry:Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 118
    .end local p0    # "this":Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;, "Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter<TK;TV;>;"
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;, "Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;->current()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;, "Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;->current()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 83
    .local p0, "this":Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;, "Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;, "Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;->entry:Ljava/util/Map$Entry;

    .line 92
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 108
    .local p0, "this":Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;, "Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;->entry:Ljava/util/Map$Entry;

    .line 110
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1

    .local p0, "this":Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;, "Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter<TK;TV;>;"
    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;->entrySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;->iterator:Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 99
    .end local p0    # "this":Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;, "Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter<TK;TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;, "Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;->current()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
