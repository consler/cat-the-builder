.class public Lorg/apache/commons/collections4/collection/IndexedCollection;
.super Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;
.source "IndexedCollection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator<",
        "TC;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4c80b9ffe2716b76L


# instance fields
.field private final index:Lorg/apache/commons/collections4/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/MultiMap<",
            "TK;TC;>;"
        }
    .end annotation
.end field

.field private final keyTransformer:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "TC;TK;>;"
        }
    .end annotation
.end field

.field private final uniqueIndex:Z


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/MultiMap;Z)V
    .locals 0
    .param p4, "uniqueIndex"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TC;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "TC;TK;>;",
            "Lorg/apache/commons/collections4/MultiMap<",
            "TK;TC;>;Z)V"
        }
    .end annotation

    .line 109
    .local p0, "this":Lorg/apache/commons/collections4/collection/IndexedCollection;, "Lorg/apache/commons/collections4/collection/IndexedCollection<TK;TC;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TC;>;"
    .local p2, "keyTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<TC;TK;>;"
    .local p3, "map":Lorg/apache/commons/collections4/MultiMap;, "Lorg/apache/commons/collections4/MultiMap<TK;TC;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;-><init>(Ljava/util/Collection;)V

    .line 110
    iput-object p2, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->keyTransformer:Lorg/apache/commons/collections4/Transformer;

    .line 111
    iput-object p3, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->index:Lorg/apache/commons/collections4/MultiMap;

    .line 112
    iput-boolean p4, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->uniqueIndex:Z

    .line 113
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/IndexedCollection;->reindex()V

    .line 114
    return-void
.end method

.method private addToIndex(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 270
    .local p0, "this":Lorg/apache/commons/collections4/collection/IndexedCollection;, "Lorg/apache/commons/collections4/collection/IndexedCollection<TK;TC;>;"
    .local p1, "object":Ljava/lang/Object;, "TC;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->keyTransformer:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 271
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget-boolean v1, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->uniqueIndex:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->index:Lorg/apache/commons/collections4/MultiMap;

    invoke-interface {v1, v0}, Lorg/apache/commons/collections4/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Duplicate key in uniquely indexed collection."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->index:Lorg/apache/commons/collections4/MultiMap;

    invoke-interface {v1, v0, p1}, Lorg/apache/commons/collections4/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    return-void
.end method

.method public static nonUniqueIndexedCollection(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/collection/IndexedCollection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "TC;TK;>;)",
            "Lorg/apache/commons/collections4/collection/IndexedCollection<",
            "TK;TC;>;"
        }
    .end annotation

    .line 94
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TC;>;"
    .local p1, "keyTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<TC;TK;>;"
    new-instance v0, Lorg/apache/commons/collections4/collection/IndexedCollection;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 95
    invoke-static {v1}, Lorg/apache/commons/collections4/map/MultiValueMap;->multiValueMap(Ljava/util/Map;)Lorg/apache/commons/collections4/map/MultiValueMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/apache/commons/collections4/collection/IndexedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/MultiMap;Z)V

    .line 94
    return-object v0
.end method

.method private removeFromIndex(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 283
    .local p0, "this":Lorg/apache/commons/collections4/collection/IndexedCollection;, "Lorg/apache/commons/collections4/collection/IndexedCollection<TK;TC;>;"
    .local p1, "object":Ljava/lang/Object;, "TC;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->index:Lorg/apache/commons/collections4/MultiMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->keyTransformer:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {v1, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/collections4/MultiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    return-void
.end method

.method public static uniqueIndexedCollection(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/collection/IndexedCollection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "TC;TK;>;)",
            "Lorg/apache/commons/collections4/collection/IndexedCollection<",
            "TK;TC;>;"
        }
    .end annotation

    .line 78
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TC;>;"
    .local p1, "keyTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<TC;TK;>;"
    new-instance v0, Lorg/apache/commons/collections4/collection/IndexedCollection;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 79
    invoke-static {v1}, Lorg/apache/commons/collections4/map/MultiValueMap;->multiValueMap(Ljava/util/Map;)Lorg/apache/commons/collections4/map/MultiValueMap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/apache/commons/collections4/collection/IndexedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/MultiMap;Z)V

    .line 78
    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .line 124
    .local p0, "this":Lorg/apache/commons/collections4/collection/IndexedCollection;, "Lorg/apache/commons/collections4/collection/IndexedCollection<TK;TC;>;"
    .local p1, "object":Ljava/lang/Object;, "TC;"
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 125
    .local v0, "added":Z
    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/collection/IndexedCollection;->addToIndex(Ljava/lang/Object;)V

    .line 128
    :cond_0
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TC;>;)Z"
        }
    .end annotation

    .line 133
    .local p0, "this":Lorg/apache/commons/collections4/collection/IndexedCollection;, "Lorg/apache/commons/collections4/collection/IndexedCollection<TK;TC;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TC;>;"
    const/4 v0, 0x0

    .line 134
    .local v0, "changed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 135
    .local v2, "c":Ljava/lang/Object;, "TC;"
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/collection/IndexedCollection;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 136
    .end local v2    # "c":Ljava/lang/Object;, "TC;"
    goto :goto_0

    .line 137
    :cond_0
    return v0
.end method

.method public clear()V
    .locals 1

    .line 142
    .local p0, "this":Lorg/apache/commons/collections4/collection/IndexedCollection;, "Lorg/apache/commons/collections4/collection/IndexedCollection<TK;TC;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->clear()V

    .line 143
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->index:Lorg/apache/commons/collections4/MultiMap;

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiMap;->clear()V

    .line 144
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 154
    .local p0, "this":Lorg/apache/commons/collections4/collection/IndexedCollection;, "Lorg/apache/commons/collections4/collection/IndexedCollection<TK;TC;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->index:Lorg/apache/commons/collections4/MultiMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->keyTransformer:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {v1, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/collections4/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 164
    .local p0, "this":Lorg/apache/commons/collections4/collection/IndexedCollection;, "Lorg/apache/commons/collections4/collection/IndexedCollection<TK;TC;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 165
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/collection/IndexedCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    const/4 v0, 0x0

    return v0

    .line 168
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 169
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TC;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lorg/apache/commons/collections4/collection/IndexedCollection;, "Lorg/apache/commons/collections4/collection/IndexedCollection<TK;TC;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->index:Lorg/apache/commons/collections4/MultiMap;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 186
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TC;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public reindex()V
    .locals 2

    .line 204
    .local p0, "this":Lorg/apache/commons/collections4/collection/IndexedCollection;, "Lorg/apache/commons/collections4/collection/IndexedCollection<TK;TC;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->index:Lorg/apache/commons/collections4/MultiMap;

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiMap;->clear()V

    .line 205
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/IndexedCollection;->decorated()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 206
    .local v1, "c":Ljava/lang/Object;, "TC;"
    invoke-direct {p0, v1}, Lorg/apache/commons/collections4/collection/IndexedCollection;->addToIndex(Ljava/lang/Object;)V

    .line 207
    .end local v1    # "c":Ljava/lang/Object;, "TC;"
    goto :goto_0

    .line 208
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 213
    .local p0, "this":Lorg/apache/commons/collections4/collection/IndexedCollection;, "Lorg/apache/commons/collections4/collection/IndexedCollection<TK;TC;>;"
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 214
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/collection/IndexedCollection;->removeFromIndex(Ljava/lang/Object;)V

    .line 217
    :cond_0
    return v0
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

    .line 244
    .local p0, "this":Lorg/apache/commons/collections4/collection/IndexedCollection;, "Lorg/apache/commons/collections4/collection/IndexedCollection<TK;TC;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 245
    .local v0, "changed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 246
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/collection/IndexedCollection;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 247
    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 248
    :cond_0
    return v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TC;>;)Z"
        }
    .end annotation

    .line 225
    .local p0, "this":Lorg/apache/commons/collections4/collection/IndexedCollection;, "Lorg/apache/commons/collections4/collection/IndexedCollection<TK;TC;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TC;>;"
    invoke-static {p1}, L$r8$backportedMethods$utility$Objects$1$isNull;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const/4 v0, 0x0

    return v0

    .line 228
    :cond_0
    const/4 v0, 0x0

    .line 229
    .local v0, "changed":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/IndexedCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 230
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TC;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 233
    const/4 v0, 0x1

    goto :goto_0

    .line 236
    :cond_2
    if-eqz v0, :cond_3

    .line 237
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/IndexedCollection;->reindex()V

    .line 239
    :cond_3
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 253
    .local p0, "this":Lorg/apache/commons/collections4/collection/IndexedCollection;, "Lorg/apache/commons/collections4/collection/IndexedCollection<TK;TC;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    .line 254
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/IndexedCollection;->reindex()V

    .line 257
    :cond_0
    return v0
.end method

.method public values(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TC;>;"
        }
    .end annotation

    .line 197
    .local p0, "this":Lorg/apache/commons/collections4/collection/IndexedCollection;, "Lorg/apache/commons/collections4/collection/IndexedCollection<TK;TC;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/IndexedCollection;->index:Lorg/apache/commons/collections4/MultiMap;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method
