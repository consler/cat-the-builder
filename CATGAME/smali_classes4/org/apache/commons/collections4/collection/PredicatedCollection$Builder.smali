.class public Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;
.super Ljava/lang/Object;
.source "PredicatedCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/collection/PredicatedCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final accepted:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final predicate:Lorg/apache/commons/collections4/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private final rejected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/Predicate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 226
    .local p0, "this":Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;, "Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder<TE;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->accepted:Ljava/util/List;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->rejected:Ljava/util/List;

    .line 227
    if-eqz p1, :cond_0

    .line 230
    iput-object p1, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->predicate:Lorg/apache/commons/collections4/Predicate;

    .line 231
    return-void

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Predicate must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 243
    .local p0, "this":Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;, "Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder<TE;>;"
    .local p1, "item":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->accepted:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->rejected:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :goto_0
    return-object p0
.end method

.method public addAll(Ljava/util/Collection;)Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 261
    .local p0, "this":Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;, "Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder<TE;>;"
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    if-eqz p1, :cond_0

    .line 262
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 263
    .local v1, "item":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->add(Ljava/lang/Object;)Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;

    .line 264
    .end local v1    # "item":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 266
    :cond_0
    return-object p0
.end method

.method public createPredicatedBag()Lorg/apache/commons/collections4/Bag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;"
        }
    .end annotation

    .line 378
    .local p0, "this":Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;, "Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/bag/HashBag;

    invoke-direct {v0}, Lorg/apache/commons/collections4/bag/HashBag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->createPredicatedBag(Lorg/apache/commons/collections4/Bag;)Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    return-object v0
.end method

.method public createPredicatedBag(Lorg/apache/commons/collections4/Bag;)Lorg/apache/commons/collections4/Bag;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;"
        }
    .end annotation

    .line 394
    .local p0, "this":Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;, "Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder<TE;>;"
    .local p1, "bag":Lorg/apache/commons/collections4/Bag;, "Lorg/apache/commons/collections4/Bag<TE;>;"
    if-eqz p1, :cond_0

    .line 397
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-static {p1, v0}, Lorg/apache/commons/collections4/bag/PredicatedBag;->predicatedBag(Lorg/apache/commons/collections4/Bag;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/bag/PredicatedBag;

    move-result-object v0

    .line 398
    .local v0, "predicatedBag":Lorg/apache/commons/collections4/bag/PredicatedBag;, "Lorg/apache/commons/collections4/bag/PredicatedBag<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->accepted:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/bag/PredicatedBag;->addAll(Ljava/util/Collection;)Z

    .line 399
    return-object v0

    .line 395
    .end local v0    # "predicatedBag":Lorg/apache/commons/collections4/bag/PredicatedBag;, "Lorg/apache/commons/collections4/bag/PredicatedBag<TE;>;"
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bag must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createPredicatedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 278
    .local p0, "this":Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;, "Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->createPredicatedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createPredicatedList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 294
    .local p0, "this":Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;, "Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    if-eqz p1, :cond_0

    .line 297
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-static {p1, v0}, Lorg/apache/commons/collections4/list/PredicatedList;->predicatedList(Ljava/util/List;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/list/PredicatedList;

    move-result-object v0

    .line 298
    .local v0, "predicatedList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->accepted:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 299
    return-object v0

    .line 295
    .end local v0    # "predicatedList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "List must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createPredicatedMultiSet()Lorg/apache/commons/collections4/MultiSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/MultiSet<",
            "TE;>;"
        }
    .end annotation

    .line 344
    .local p0, "this":Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;, "Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/multiset/HashMultiSet;

    invoke-direct {v0}, Lorg/apache/commons/collections4/multiset/HashMultiSet;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->createPredicatedMultiSet(Lorg/apache/commons/collections4/MultiSet;)Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    return-object v0
.end method

.method public createPredicatedMultiSet(Lorg/apache/commons/collections4/MultiSet;)Lorg/apache/commons/collections4/MultiSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/MultiSet<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/MultiSet<",
            "TE;>;"
        }
    .end annotation

    .line 360
    .local p0, "this":Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;, "Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder<TE;>;"
    .local p1, "multiset":Lorg/apache/commons/collections4/MultiSet;, "Lorg/apache/commons/collections4/MultiSet<TE;>;"
    if-eqz p1, :cond_0

    .line 363
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->predicate:Lorg/apache/commons/collections4/Predicate;

    .line 364
    invoke-static {p1, v0}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;->predicatedMultiSet(Lorg/apache/commons/collections4/MultiSet;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;

    move-result-object v0

    .line 365
    .local v0, "predicatedMultiSet":Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;, "Lorg/apache/commons/collections4/multiset/PredicatedMultiSet<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->accepted:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;->addAll(Ljava/util/Collection;)Z

    .line 366
    return-object v0

    .line 361
    .end local v0    # "predicatedMultiSet":Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;, "Lorg/apache/commons/collections4/multiset/PredicatedMultiSet<TE;>;"
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "MultiSet must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createPredicatedQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 411
    .local p0, "this":Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;, "Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder<TE;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->createPredicatedQueue(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method public createPredicatedQueue(Ljava/util/Queue;)Ljava/util/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "TE;>;)",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 427
    .local p0, "this":Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;, "Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder<TE;>;"
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    if-eqz p1, :cond_0

    .line 430
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-static {p1, v0}, Lorg/apache/commons/collections4/queue/PredicatedQueue;->predicatedQueue(Ljava/util/Queue;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/queue/PredicatedQueue;

    move-result-object v0

    .line 431
    .local v0, "predicatedQueue":Lorg/apache/commons/collections4/queue/PredicatedQueue;, "Lorg/apache/commons/collections4/queue/PredicatedQueue<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->accepted:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/queue/PredicatedQueue;->addAll(Ljava/util/Collection;)Z

    .line 432
    return-object v0

    .line 428
    .end local v0    # "predicatedQueue":Lorg/apache/commons/collections4/queue/PredicatedQueue;, "Lorg/apache/commons/collections4/queue/PredicatedQueue<TE;>;"
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "queue must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createPredicatedSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 311
    .local p0, "this":Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;, "Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder<TE;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->createPredicatedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public createPredicatedSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 327
    .local p0, "this":Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;, "Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder<TE;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    if-eqz p1, :cond_0

    .line 330
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-static {p1, v0}, Lorg/apache/commons/collections4/set/PredicatedSet;->predicatedSet(Ljava/util/Set;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/set/PredicatedSet;

    move-result-object v0

    .line 331
    .local v0, "predicatedSet":Lorg/apache/commons/collections4/set/PredicatedSet;, "Lorg/apache/commons/collections4/set/PredicatedSet<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->accepted:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/set/PredicatedSet;->addAll(Ljava/util/Collection;)Z

    .line 332
    return-object v0

    .line 328
    .end local v0    # "predicatedSet":Lorg/apache/commons/collections4/set/PredicatedSet;, "Lorg/apache/commons/collections4/set/PredicatedSet<TE;>;"
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Set must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rejectedElements()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 441
    .local p0, "this":Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;, "Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->rejected:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
