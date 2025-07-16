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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->accepted:Ljava/util/List;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->rejected:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 230
    iput-object p1, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->predicate:Lorg/apache/commons/collections4/Predicate;

    return-void

    .line 228
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Predicate must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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

    :goto_0
    return-object p0
.end method

.method public addAll(Ljava/util/Collection;)Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder<",
            "TE;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 262
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 263
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->add(Ljava/lang/Object;)Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;

    goto :goto_0

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
    new-instance v0, Lorg/apache/commons/collections4/bag/HashBag;

    invoke-direct {v0}, Lorg/apache/commons/collections4/bag/HashBag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->createPredicatedBag(Lorg/apache/commons/collections4/Bag;)Lorg/apache/commons/collections4/Bag;

    move-result-object v0

    return-object v0
.end method

.method public createPredicatedBag(Lorg/apache/commons/collections4/Bag;)Lorg/apache/commons/collections4/Bag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/Bag<",
            "TE;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 397
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-static {p1, v0}, Lorg/apache/commons/collections4/bag/PredicatedBag;->predicatedBag(Lorg/apache/commons/collections4/Bag;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/bag/PredicatedBag;

    move-result-object p1

    .line 398
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->accepted:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/apache/commons/collections4/bag/PredicatedBag;->addAll(Ljava/util/Collection;)Z

    return-object p1

    .line 395
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Bag must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->createPredicatedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createPredicatedList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 297
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-static {p1, v0}, Lorg/apache/commons/collections4/list/PredicatedList;->predicatedList(Ljava/util/List;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/list/PredicatedList;

    move-result-object p1

    .line 298
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->accepted:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1

    .line 295
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "List must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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
    new-instance v0, Lorg/apache/commons/collections4/multiset/HashMultiSet;

    invoke-direct {v0}, Lorg/apache/commons/collections4/multiset/HashMultiSet;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->createPredicatedMultiSet(Lorg/apache/commons/collections4/MultiSet;)Lorg/apache/commons/collections4/MultiSet;

    move-result-object v0

    return-object v0
.end method

.method public createPredicatedMultiSet(Lorg/apache/commons/collections4/MultiSet;)Lorg/apache/commons/collections4/MultiSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/MultiSet<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/MultiSet<",
            "TE;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 363
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->predicate:Lorg/apache/commons/collections4/Predicate;

    .line 364
    invoke-static {p1, v0}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;->predicatedMultiSet(Lorg/apache/commons/collections4/MultiSet;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;

    move-result-object p1

    .line 365
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->accepted:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/apache/commons/collections4/multiset/PredicatedMultiSet;->addAll(Ljava/util/Collection;)Z

    return-object p1

    .line 361
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "MultiSet must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->createPredicatedQueue(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method public createPredicatedQueue(Ljava/util/Queue;)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "TE;>;)",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 430
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-static {p1, v0}, Lorg/apache/commons/collections4/queue/PredicatedQueue;->predicatedQueue(Ljava/util/Queue;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/queue/PredicatedQueue;

    move-result-object p1

    .line 431
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->accepted:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/apache/commons/collections4/queue/PredicatedQueue;->addAll(Ljava/util/Collection;)Z

    return-object p1

    .line 428
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "queue must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->createPredicatedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public createPredicatedSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 330
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-static {p1, v0}, Lorg/apache/commons/collections4/set/PredicatedSet;->predicatedSet(Ljava/util/Set;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/set/PredicatedSet;

    move-result-object p1

    .line 331
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->accepted:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/apache/commons/collections4/set/PredicatedSet;->addAll(Ljava/util/Collection;)Z

    return-object p1

    .line 328
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Set must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection$Builder;->rejected:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
