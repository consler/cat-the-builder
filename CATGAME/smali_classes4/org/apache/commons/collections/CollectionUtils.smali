.class public Lorg/apache/commons/collections/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# static fields
.field public static final EMPTY_COLLECTION:Ljava/util/Collection;

.field private static INTEGER_ONE:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/collections/CollectionUtils;->INTEGER_ONE:Ljava/lang/Integer;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/collections/collection/UnmodifiableCollection;->decorate(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/CollectionUtils;->EMPTY_COLLECTION:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public static addAll(Ljava/util/Collection;Ljava/util/Enumeration;)V
    .locals 1
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "enumeration"    # Ljava/util/Enumeration;

    .line 674
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 677
    :cond_0
    return-void
.end method

.method public static addAll(Ljava/util/Collection;Ljava/util/Iterator;)V
    .locals 1
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "iterator"    # Ljava/util/Iterator;

    .line 661
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 664
    :cond_0
    return-void
.end method

.method public static addAll(Ljava/util/Collection;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "elements"    # [Ljava/lang/Object;

    .line 687
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 688
    aget-object v2, p1, v0

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 687
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 690
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    return-void
.end method

.method public static addIgnoreNull(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "object"    # Ljava/lang/Object;

    .line 650
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static cardinality(Ljava/lang/Object;Ljava/util/Collection;)I
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "coll"    # Ljava/util/Collection;

    .line 333
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 334
    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 336
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/collections/Bag;

    if-eqz v0, :cond_1

    .line 337
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections/Bag;

    invoke-interface {v0, p0}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 339
    :cond_1
    const/4 v0, 0x0

    .line 340
    .local v0, "count":I
    if-nez p0, :cond_4

    .line 341
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 342
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "it":Ljava/util/Iterator;
    :cond_3
    goto :goto_2

    .line 347
    :cond_4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "it":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 348
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 353
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_6
    :goto_2
    return v0
.end method

.method public static collect(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)Ljava/util/Collection;
    .locals 2
    .param p0, "inputCollection"    # Ljava/util/Collection;
    .param p1, "transformer"    # Lorg/apache/commons/collections/Transformer;

    .line 574
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 575
    .local v0, "answer":Ljava/util/ArrayList;
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections/CollectionUtils;->collect(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;Ljava/util/Collection;)Ljava/util/Collection;

    .line 576
    return-object v0
.end method

.method public static collect(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .param p0, "inputCollection"    # Ljava/util/Collection;
    .param p1, "transformer"    # Lorg/apache/commons/collections/Transformer;
    .param p2, "outputCollection"    # Ljava/util/Collection;

    .line 609
    if-eqz p0, :cond_0

    .line 610
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/commons/collections/CollectionUtils;->collect(Ljava/util/Iterator;Lorg/apache/commons/collections/Transformer;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 612
    :cond_0
    return-object p2
.end method

.method public static collect(Ljava/util/Iterator;Lorg/apache/commons/collections/Transformer;)Ljava/util/Collection;
    .locals 1
    .param p0, "inputIterator"    # Ljava/util/Iterator;
    .param p1, "transformer"    # Lorg/apache/commons/collections/Transformer;

    .line 590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 591
    .local v0, "answer":Ljava/util/ArrayList;
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections/CollectionUtils;->collect(Ljava/util/Iterator;Lorg/apache/commons/collections/Transformer;Ljava/util/Collection;)Ljava/util/Collection;

    .line 592
    return-object v0
.end method

.method public static collect(Ljava/util/Iterator;Lorg/apache/commons/collections/Transformer;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .param p0, "inputIterator"    # Ljava/util/Iterator;
    .param p1, "transformer"    # Lorg/apache/commons/collections/Transformer;
    .param p2, "outputCollection"    # Ljava/util/Collection;

    .line 629
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 630
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 632
    .local v0, "item":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 633
    .local v1, "value":Ljava/lang/Object;
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 634
    .end local v0    # "item":Ljava/lang/Object;
    .end local v1    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 636
    :cond_0
    return-object p2
.end method

.method public static containsAny(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 3
    .param p0, "coll1"    # Ljava/util/Collection;
    .param p1, "coll2"    # Ljava/util/Collection;

    .line 201
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    .line 202
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    return v2

    .end local v0    # "it":Ljava/util/Iterator;
    :cond_1
    goto :goto_0

    .line 208
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 210
    return v2

    .line 214
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_4
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static countMatches(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)I
    .locals 3
    .param p0, "inputCollection"    # Ljava/util/Collection;
    .param p1, "predicate"    # Lorg/apache/commons/collections/Predicate;

    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, "count":I
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 456
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 457
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method public static disjunction(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 10
    .param p0, "a"    # Ljava/util/Collection;
    .param p1, "b"    # Ljava/util/Collection;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v0, "list":Ljava/util/ArrayList;
    invoke-static {p0}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    .line 156
    .local v1, "mapa":Ljava/util/Map;
    invoke-static {p1}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    .line 157
    .local v2, "mapb":Ljava/util/Map;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 158
    .local v3, "elts":Ljava/util/Set;
    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 159
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 160
    .local v4, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 161
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 162
    .local v5, "obj":Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-static {v5, v1}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v7

    invoke-static {v5, v2}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v5, v1}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v8

    invoke-static {v5, v2}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int/2addr v7, v8

    .local v7, "m":I
    :goto_1
    if-ge v6, v7, :cond_0

    .line 163
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 165
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "i":I
    .end local v7    # "m":I
    :cond_0
    goto :goto_0

    .line 166
    :cond_1
    return-object v0
.end method

.method public static exists(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)Z
    .locals 2
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "predicate"    # Lorg/apache/commons/collections/Predicate;

    .line 475
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 476
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    const/4 v1, 0x1

    return v1

    .line 482
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static filter(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)V
    .locals 2
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "predicate"    # Lorg/apache/commons/collections/Predicate;

    .line 404
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 405
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 407
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 411
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public static find(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)Ljava/lang/Object;
    .locals 3
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "predicate"    # Lorg/apache/commons/collections/Predicate;

    .line 367
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 368
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 369
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 370
    .local v1, "item":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    return-object v1

    .line 373
    .end local v1    # "item":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 375
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static forAllDo(Ljava/util/Collection;Lorg/apache/commons/collections/Closure;)V
    .locals 2
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "closure"    # Lorg/apache/commons/collections/Closure;

    .line 387
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 388
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    goto :goto_0

    .line 392
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public static get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "index"    # I

    .line 830
    if-ltz p1, :cond_b

    .line 833
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 834
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .line 835
    .local v0, "map":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 836
    .local v1, "iterator":Ljava/util/Iterator;
    invoke-static {v1, p1}, Lorg/apache/commons/collections/CollectionUtils;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 837
    .end local v0    # "map":Ljava/util/Map;
    .end local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 838
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 839
    :cond_1
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 840
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    .line 841
    :cond_2
    instance-of v0, p0, Ljava/util/Iterator;

    const-string v1, "Entry does not exist: "

    const/4 v2, -0x1

    if-eqz v0, :cond_5

    .line 842
    move-object v0, p0

    check-cast v0, Ljava/util/Iterator;

    .line 843
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 844
    add-int/lit8 p1, p1, -0x1

    .line 845
    if-ne p1, v2, :cond_3

    .line 846
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 848
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 851
    :cond_4
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 852
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_5
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_6

    .line 853
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 854
    .local v0, "iterator":Ljava/util/Iterator;
    invoke-static {v0, p1}, Lorg/apache/commons/collections/CollectionUtils;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 855
    .end local v0    # "iterator":Ljava/util/Iterator;
    :cond_6
    instance-of v0, p0, Ljava/util/Enumeration;

    if-eqz v0, :cond_9

    .line 856
    move-object v0, p0

    check-cast v0, Ljava/util/Enumeration;

    .line 857
    .local v0, "it":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 858
    add-int/lit8 p1, p1, -0x1

    .line 859
    if-ne p1, v2, :cond_7

    .line 860
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 862
    :cond_7
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    goto :goto_1

    .line 865
    :cond_8
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 866
    .end local v0    # "it":Ljava/util/Enumeration;
    :cond_9
    if-eqz p0, :cond_a

    .line 870
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 871
    :catch_0
    move-exception v0

    .line 872
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unsupported object type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 867
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported object type: null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Index cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;
    .locals 6
    .param p0, "coll"    # Ljava/util/Collection;

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 230
    .local v0, "count":Ljava/util/Map;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 232
    .local v2, "obj":Ljava/lang/Object;
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    check-cast v3, Ljava/lang/Integer;

    .line 233
    .local v3, "c":Ljava/lang/Integer;
    if-nez v3, :cond_0

    .line 234
    sget-object v4, Lorg/apache/commons/collections/CollectionUtils;->INTEGER_ONE:Ljava/lang/Integer;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 236
    :cond_0
    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "c":Ljava/lang/Integer;
    :goto_1
    goto :goto_0

    .line 239
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method private static final getFreq(Ljava/lang/Object;Ljava/util/Map;)I
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "freqMap"    # Ljava/util/Map;

    .line 1016
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1017
    .local v0, "count":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1018
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1020
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static index(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "idx"    # I

    .line 715
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v0}, Lorg/apache/commons/collections/CollectionUtils;->index(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static index(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "index"    # Ljava/lang/Object;

    .line 742
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 743
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .line 744
    .local v0, "map":Ljava/util/Map;
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 745
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 748
    .end local v0    # "map":Ljava/util/Map;
    :cond_0
    const/4 v0, -0x1

    .line 749
    .local v0, "idx":I
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 750
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 752
    :cond_1
    if-gez v0, :cond_2

    .line 753
    return-object p0

    .line 755
    :cond_2
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 756
    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    .line 757
    .local v1, "map":Ljava/util/Map;
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 758
    .local v2, "iterator":Ljava/util/Iterator;
    invoke-static {v2, v0}, Lorg/apache/commons/collections/CollectionUtils;->index(Ljava/util/Iterator;I)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 760
    .end local v1    # "map":Ljava/util/Map;
    .end local v2    # "iterator":Ljava/util/Iterator;
    :cond_3
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 761
    move-object v1, p0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 763
    :cond_4
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 764
    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1

    .line 766
    :cond_5
    instance-of v1, p0, Ljava/util/Enumeration;

    if-eqz v1, :cond_8

    .line 767
    move-object v1, p0

    check-cast v1, Ljava/util/Enumeration;

    .line 768
    .local v1, "it":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 769
    add-int/lit8 v0, v0, -0x1

    .line 770
    const/4 v2, -0x1

    if-ne v0, v2, :cond_6

    .line 771
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 773
    :cond_6
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    goto :goto_0

    .line 776
    .end local v1    # "it":Ljava/util/Enumeration;
    :cond_7
    goto :goto_1

    .line 777
    :cond_8
    instance-of v1, p0, Ljava/util/Iterator;

    if-eqz v1, :cond_9

    .line 778
    move-object v1, p0

    check-cast v1, Ljava/util/Iterator;

    invoke-static {v1, v0}, Lorg/apache/commons/collections/CollectionUtils;->index(Ljava/util/Iterator;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 780
    :cond_9
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_a

    .line 781
    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 782
    .local v1, "iterator":Ljava/util/Iterator;
    invoke-static {v1, v0}, Lorg/apache/commons/collections/CollectionUtils;->index(Ljava/util/Iterator;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 784
    .end local v1    # "iterator":Ljava/util/Iterator;
    :cond_a
    :goto_1
    return-object p0
.end method

.method private static index(Ljava/util/Iterator;I)Ljava/lang/Object;
    .locals 1
    .param p0, "iterator"    # Ljava/util/Iterator;
    .param p1, "idx"    # I

    .line 788
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    add-int/lit8 p1, p1, -0x1

    .line 790
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 791
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 793
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 796
    :cond_1
    return-object p0
.end method

.method public static intersection(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 9
    .param p0, "a"    # Ljava/util/Collection;
    .param p1, "b"    # Ljava/util/Collection;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v0, "list":Ljava/util/ArrayList;
    invoke-static {p0}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    .line 123
    .local v1, "mapa":Ljava/util/Map;
    invoke-static {p1}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    .line 124
    .local v2, "mapb":Ljava/util/Map;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 125
    .local v3, "elts":Ljava/util/Set;
    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 126
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 127
    .local v4, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 128
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 129
    .local v5, "obj":Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-static {v5, v1}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v7

    invoke-static {v5, v2}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .local v7, "m":I
    :goto_1
    if-ge v6, v7, :cond_0

    .line 130
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 132
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "i":I
    .end local v7    # "m":I
    :cond_0
    goto :goto_0

    .line 133
    :cond_1
    return-object v0
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .locals 1
    .param p0, "coll"    # Ljava/util/Collection;

    .line 979
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEqualCollection(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 7
    .param p0, "a"    # Ljava/util/Collection;
    .param p1, "b"    # Ljava/util/Collection;

    .line 305
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 306
    return v2

    .line 308
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    .line 309
    .local v0, "mapa":Ljava/util/Map;
    invoke-static {p1}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    .line 310
    .local v1, "mapb":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 311
    return v2

    .line 313
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 314
    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 315
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 316
    .local v4, "obj":Ljava/lang/Object;
    invoke-static {v4, v0}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v5

    invoke-static {v4, v1}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 317
    return v2

    .line 319
    .end local v4    # "obj":Ljava/lang/Object;
    :cond_2
    goto :goto_0

    .line 320
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method public static isFull(Ljava/util/Collection;)Z
    .locals 2
    .param p0, "coll"    # Ljava/util/Collection;

    .line 1039
    if-eqz p0, :cond_1

    .line 1042
    instance-of v0, p0, Lorg/apache/commons/collections/BoundedCollection;

    if-eqz v0, :cond_0

    .line 1043
    move-object v0, p0

    check-cast v0, Lorg/apache/commons/collections/BoundedCollection;

    invoke-interface {v0}, Lorg/apache/commons/collections/BoundedCollection;->isFull()Z

    move-result v0

    return v0

    .line 1046
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;->decorateUsing(Ljava/util/Collection;)Lorg/apache/commons/collections/BoundedCollection;

    move-result-object v0

    .line 1047
    .local v0, "bcoll":Lorg/apache/commons/collections/BoundedCollection;
    invoke-interface {v0}, Lorg/apache/commons/collections/BoundedCollection;->isFull()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1049
    .end local v0    # "bcoll":Lorg/apache/commons/collections/BoundedCollection;
    :catch_0
    move-exception v0

    .line 1050
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1

    .line 1040
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The collection must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isNotEmpty(Ljava/util/Collection;)Z
    .locals 1
    .param p0, "coll"    # Ljava/util/Collection;

    .line 992
    invoke-static {p0}, Lorg/apache/commons/collections/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isProperSubCollection(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 2
    .param p0, "a"    # Ljava/util/Collection;
    .param p1, "b"    # Ljava/util/Collection;

    .line 289
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/collections/CollectionUtils;->isSubCollection(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSubCollection(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 6
    .param p0, "a"    # Ljava/util/Collection;
    .param p1, "b"    # Ljava/util/Collection;

    .line 255
    invoke-static {p0}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    .line 256
    .local v0, "mapa":Ljava/util/Map;
    invoke-static {p1}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    .line 257
    .local v1, "mapb":Ljava/util/Map;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 258
    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 260
    .local v3, "obj":Ljava/lang/Object;
    invoke-static {v3, v0}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v4

    invoke-static {v3, v1}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v5

    if-le v4, v5, :cond_0

    .line 261
    const/4 v4, 0x0

    return v4

    .line 263
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 264
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public static maxSize(Ljava/util/Collection;)I
    .locals 2
    .param p0, "coll"    # Ljava/util/Collection;

    .line 1070
    if-eqz p0, :cond_1

    .line 1073
    instance-of v0, p0, Lorg/apache/commons/collections/BoundedCollection;

    if-eqz v0, :cond_0

    .line 1074
    move-object v0, p0

    check-cast v0, Lorg/apache/commons/collections/BoundedCollection;

    invoke-interface {v0}, Lorg/apache/commons/collections/BoundedCollection;->maxSize()I

    move-result v0

    return v0

    .line 1077
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;->decorateUsing(Ljava/util/Collection;)Lorg/apache/commons/collections/BoundedCollection;

    move-result-object v0

    .line 1078
    .local v0, "bcoll":Lorg/apache/commons/collections/BoundedCollection;
    invoke-interface {v0}, Lorg/apache/commons/collections/BoundedCollection;->maxSize()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1080
    .end local v0    # "bcoll":Lorg/apache/commons/collections/BoundedCollection;
    :catch_0
    move-exception v0

    .line 1081
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v1, -0x1

    return v1

    .line 1071
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The collection must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static predicatedCollection(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)Ljava/util/Collection;
    .locals 1
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "predicate"    # Lorg/apache/commons/collections/Predicate;

    .line 1179
    invoke-static {p0, p1}, Lorg/apache/commons/collections/collection/PredicatedCollection;->decorate(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static removeAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "remove"    # Ljava/util/Collection;

    .line 1122
    invoke-static {p0, p1}, Lorg/apache/commons/collections/ListUtils;->removeAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static retainAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "retain"    # Ljava/util/Collection;

    .line 1102
    invoke-static {p0, p1}, Lorg/apache/commons/collections/ListUtils;->retainAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static reverseArray([Ljava/lang/Object;)V
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;

    .line 1002
    const/4 v0, 0x0

    .line 1003
    .local v0, "i":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1006
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 1007
    aget-object v2, p0, v1

    .line 1008
    .local v2, "tmp":Ljava/lang/Object;
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    .line 1009
    aput-object v2, p0, v0

    .line 1010
    add-int/lit8 v1, v1, -0x1

    .line 1011
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1013
    .end local v2    # "tmp":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static select(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)Ljava/util/Collection;
    .locals 2
    .param p0, "inputCollection"    # Ljava/util/Collection;
    .param p1, "predicate"    # Lorg/apache/commons/collections/Predicate;

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 498
    .local v0, "answer":Ljava/util/ArrayList;
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections/CollectionUtils;->select(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;Ljava/util/Collection;)V

    .line 499
    return-object v0
.end method

.method public static select(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;Ljava/util/Collection;)V
    .locals 3
    .param p0, "inputCollection"    # Ljava/util/Collection;
    .param p1, "predicate"    # Lorg/apache/commons/collections/Predicate;
    .param p2, "outputCollection"    # Ljava/util/Collection;

    .line 514
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 515
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 516
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 517
    .local v1, "item":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 520
    .end local v1    # "item":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 522
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public static selectRejected(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)Ljava/util/Collection;
    .locals 2
    .param p0, "inputCollection"    # Ljava/util/Collection;
    .param p1, "predicate"    # Lorg/apache/commons/collections/Predicate;

    .line 536
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 537
    .local v0, "answer":Ljava/util/ArrayList;
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections/CollectionUtils;->selectRejected(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;Ljava/util/Collection;)V

    .line 538
    return-object v0
.end method

.method public static selectRejected(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;Ljava/util/Collection;)V
    .locals 3
    .param p0, "inputCollection"    # Ljava/util/Collection;
    .param p1, "predicate"    # Lorg/apache/commons/collections/Predicate;
    .param p2, "outputCollection"    # Ljava/util/Collection;

    .line 552
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 553
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 554
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 555
    .local v1, "item":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 556
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 558
    .end local v1    # "item":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 560
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public static size(Ljava/lang/Object;)I
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;

    .line 895
    const/4 v0, 0x0

    .line 896
    .local v0, "total":I
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 897
    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_2

    .line 898
    :cond_0
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 899
    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_2

    .line 900
    :cond_1
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 901
    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    array-length v0, v1

    goto :goto_2

    .line 902
    :cond_2
    instance-of v1, p0, Ljava/util/Iterator;

    if-eqz v1, :cond_4

    .line 903
    move-object v1, p0

    check-cast v1, Ljava/util/Iterator;

    .line 904
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 905
    add-int/lit8 v0, v0, 0x1

    .line 906
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 908
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_3
    goto :goto_2

    :cond_4
    instance-of v1, p0, Ljava/util/Enumeration;

    if-eqz v1, :cond_6

    .line 909
    move-object v1, p0

    check-cast v1, Ljava/util/Enumeration;

    .line 910
    .local v1, "it":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 911
    add-int/lit8 v0, v0, 0x1

    .line 912
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    goto :goto_1

    .line 914
    .end local v1    # "it":Ljava/util/Enumeration;
    :cond_5
    goto :goto_2

    :cond_6
    if-eqz p0, :cond_7

    .line 918
    :try_start_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 921
    nop

    .line 923
    :goto_2
    return v0

    .line 919
    :catch_0
    move-exception v1

    .line 920
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unsupported object type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 915
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported object type: null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static sizeIsEmpty(Ljava/lang/Object;)Z
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;

    .line 947
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 948
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0

    .line 949
    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 950
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0

    .line 951
    :cond_1
    instance-of v0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 952
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 953
    :cond_3
    instance-of v0, p0, Ljava/util/Iterator;

    if-eqz v0, :cond_4

    .line 954
    move-object v0, p0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    .line 955
    :cond_4
    instance-of v0, p0, Ljava/util/Enumeration;

    if-eqz v0, :cond_5

    .line 956
    move-object v0, p0

    check-cast v0, Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    .line 957
    :cond_5
    if-eqz p0, :cond_7

    .line 961
    :try_start_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_6

    move v1, v2

    :cond_6
    return v1

    .line 962
    :catch_0
    move-exception v0

    .line 963
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unsupported object type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 958
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported object type: null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static subtract(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .param p0, "a"    # Ljava/util/Collection;
    .param p1, "b"    # Ljava/util/Collection;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 182
    .local v0, "list":Ljava/util/ArrayList;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method public static synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .param p0, "collection"    # Ljava/util/Collection;

    .line 1149
    invoke-static {p0}, Lorg/apache/commons/collections/collection/SynchronizedCollection;->decorate(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static transform(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)V
    .locals 3
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "transformer"    # Lorg/apache/commons/collections/Transformer;

    .line 430
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 431
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 432
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 433
    .local v0, "list":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .local v1, "it":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 436
    .end local v0    # "list":Ljava/util/List;
    .end local v1    # "it":Ljava/util/ListIterator;
    :cond_0
    goto :goto_1

    .line 437
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/collections/CollectionUtils;->collect(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)Ljava/util/Collection;

    move-result-object v0

    .line 438
    .local v0, "resultCollection":Ljava/util/Collection;
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    .line 439
    invoke-interface {p0, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 442
    .end local v0    # "resultCollection":Ljava/util/Collection;
    :cond_2
    :goto_1
    return-void
.end method

.method public static transformedCollection(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)Ljava/util/Collection;
    .locals 1
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "transformer"    # Lorg/apache/commons/collections/Transformer;

    .line 1208
    invoke-static {p0, p1}, Lorg/apache/commons/collections/collection/TransformedCollection;->decorate(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static typedCollection(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 1
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "type"    # Ljava/lang/Class;

    .line 1192
    invoke-static {p0, p1}, Lorg/apache/commons/collections/collection/TypedCollection;->decorate(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static union(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 9
    .param p0, "a"    # Ljava/util/Collection;
    .param p1, "b"    # Ljava/util/Collection;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v0, "list":Ljava/util/ArrayList;
    invoke-static {p0}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    .line 93
    .local v1, "mapa":Ljava/util/Map;
    invoke-static {p1}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    .line 94
    .local v2, "mapb":Ljava/util/Map;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 95
    .local v3, "elts":Ljava/util/Set;
    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 96
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 97
    .local v4, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 99
    .local v5, "obj":Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-static {v5, v1}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v7

    invoke-static {v5, v2}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .local v7, "m":I
    :goto_1
    if-ge v6, v7, :cond_0

    .line 100
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 102
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "i":I
    .end local v7    # "m":I
    :cond_0
    goto :goto_0

    .line 103
    :cond_1
    return-object v0
.end method

.method public static unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .param p0, "collection"    # Ljava/util/Collection;

    .line 1162
    invoke-static {p0}, Lorg/apache/commons/collections/collection/UnmodifiableCollection;->decorate(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
