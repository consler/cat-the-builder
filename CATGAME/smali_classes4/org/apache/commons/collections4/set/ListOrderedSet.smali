.class public Lorg/apache/commons/collections4/set/ListOrderedSet;
.super Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator;
.source "ListOrderedSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x32c610905e312adL


# instance fields
.field private final setOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 143
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator;-><init>(Ljava/util/Set;)V

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    .line 145
    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 154
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator;-><init>(Ljava/util/Set;)V

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    .line 156
    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 169
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator;-><init>(Ljava/util/Set;)V

    .line 170
    if-eqz p2, :cond_0

    .line 173
    iput-object p2, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    .line 174
    return-void

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "List must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static listOrderedSet(Ljava/util/List;)Lorg/apache/commons/collections4/set/ListOrderedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/set/ListOrderedSet<",
            "TE;>;"
        }
    .end annotation

    .line 126
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    if-eqz p0, :cond_0

    .line 129
    invoke-static {}, Lorg/apache/commons/collections4/functors/UniquePredicate;->uniquePredicate()Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/collections4/CollectionUtils;->filter(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 132
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    new-instance v1, Lorg/apache/commons/collections4/set/ListOrderedSet;

    invoke-direct {v1, v0, p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;-><init>(Ljava/util/Set;Ljava/util/List;)V

    return-object v1

    .line 127
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "List must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static listOrderedSet(Ljava/util/Set;)Lorg/apache/commons/collections4/set/ListOrderedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/set/ListOrderedSet<",
            "TE;>;"
        }
    .end annotation

    .line 108
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/set/ListOrderedSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static listOrderedSet(Ljava/util/Set;Ljava/util/List;)Lorg/apache/commons/collections4/set/ListOrderedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/util/List<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/set/ListOrderedSet<",
            "TE;>;"
        }
    .end annotation

    .line 84
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    if-eqz p0, :cond_2

    .line 87
    if-eqz p1, :cond_1

    .line 90
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 93
    new-instance v0, Lorg/apache/commons/collections4/set/ListOrderedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/set/ListOrderedSet;-><init>(Ljava/util/Set;Ljava/util/List;)V

    return-object v0

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Set and List must be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "List must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Set must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 324
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/set/ListOrderedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 328
    :cond_0
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 200
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    const/4 v0, 0x1

    return v0

    .line 204
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 342
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    .local p2, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v0, 0x0

    .line 344
    .local v0, "changed":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v1, "toAdd":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 346
    .local v3, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections4/set/ListOrderedSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 347
    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    const/4 v0, 0x1

    .line 352
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 354
    :cond_1
    if-eqz v0, :cond_2

    .line 355
    iget-object v2, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v2, p1, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 358
    :cond_2
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 209
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v0, 0x0

    .line 210
    .local v0, "result":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 211
    .local v2, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/set/ListOrderedSet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 212
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 213
    :cond_0
    return v0
.end method

.method public asList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 183
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/commons/collections4/list/UnmodifiableList;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 189
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 190
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 191
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 298
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 311
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 61
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->iterator()Lorg/apache/commons/collections4/OrderedIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/apache/commons/collections4/OrderedIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedIterator<",
            "TE;>;"
        }
    .end annotation

    .line 195
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;

    iget-object v1, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;-><init>(Ljava/util/ListIterator;Ljava/util/Collection;Lorg/apache/commons/collections4/set/ListOrderedSet$1;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 370
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 371
    .local v0, "obj":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->remove(Ljava/lang/Object;)Z

    .line 372
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 218
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 219
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 220
    iget-object v1, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 222
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

    .line 242
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 243
    .local v0, "result":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 244
    .local v2, "name":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/set/ListOrderedSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 245
    .end local v2    # "name":Ljava/lang/Object;
    goto :goto_0

    .line 246
    :cond_0
    return v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 230
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {p1}, L$r8$backportedMethods$utility$Objects$1$isNull;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x0

    return v0

    .line 233
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 234
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 235
    iget-object v1, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 237
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

    .line 260
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    .line 261
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 262
    const/4 v1, 0x0

    return v1

    .line 264
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 265
    iget-object v1, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 267
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 268
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->decorated()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 269
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 273
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_3
    :goto_1
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 278
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 283
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 385
    .local p0, "this":Lorg/apache/commons/collections4/set/ListOrderedSet;, "Lorg/apache/commons/collections4/set/ListOrderedSet<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
