.class public Lorg/apache/commons/collections/ListUtils;
.super Ljava/lang/Object;
.source "ListUtils.java"


# static fields
.field public static final EMPTY_LIST:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lorg/apache/commons/collections/ListUtils;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static fixedSizeList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "list"    # Ljava/util/List;

    .line 407
    invoke-static {p0}, Lorg/apache/commons/collections/list/FixedSizeList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static hashCodeForList(Ljava/util/Collection;)I
    .locals 6
    .param p0, "list"    # Ljava/util/Collection;

    .line 208
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 209
    return v0

    .line 211
    :cond_0
    const/4 v1, 0x1

    .line 212
    .local v1, "hashCode":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 213
    .local v2, "it":Ljava/util/Iterator;
    const/4 v3, 0x0

    .line 215
    .local v3, "obj":Ljava/lang/Object;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 216
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 217
    mul-int/lit8 v4, v1, 0x1f

    if-nez v3, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_1
    add-int v1, v4, v5

    goto :goto_0

    .line 219
    :cond_2
    return v1
.end method

.method public static intersection(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p0, "list1"    # Ljava/util/List;
    .param p1, "list2"    # Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, "result":Ljava/util/ArrayList;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 75
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 78
    .local v2, "o":Ljava/lang/Object;
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 83
    :cond_1
    return-object v0
.end method

.method public static isEqualList(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 7
    .param p0, "list1"    # Ljava/util/Collection;
    .param p1, "list2"    # Ljava/util/Collection;

    .line 171
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 172
    return v0

    .line 174
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 178
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 179
    .local v2, "it1":Ljava/util/Iterator;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 180
    .local v3, "it2":Ljava/util/Iterator;
    const/4 v4, 0x0

    .line 181
    .local v4, "obj1":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 183
    .local v5, "obj2":Ljava/lang/Object;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 184
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 185
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 187
    if-nez v4, :cond_3

    if-nez v5, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 188
    :cond_4
    return v1

    .line 192
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    return v0

    .line 175
    .end local v2    # "it1":Ljava/util/Iterator;
    .end local v3    # "it2":Ljava/util/Iterator;
    .end local v4    # "obj1":Ljava/lang/Object;
    .end local v5    # "obj2":Ljava/lang/Object;
    :cond_7
    :goto_2
    return v1
.end method

.method public static lazyList(Ljava/util/List;Lorg/apache/commons/collections/Factory;)Ljava/util/List;
    .locals 1
    .param p0, "list"    # Ljava/util/List;
    .param p1, "factory"    # Lorg/apache/commons/collections/Factory;

    .line 393
    invoke-static {p0, p1}, Lorg/apache/commons/collections/list/LazyList;->decorate(Ljava/util/List;Lorg/apache/commons/collections/Factory;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static predicatedList(Ljava/util/List;Lorg/apache/commons/collections/Predicate;)Ljava/util/List;
    .locals 1
    .param p0, "list"    # Ljava/util/List;
    .param p1, "predicate"    # Lorg/apache/commons/collections/Predicate;

    .line 331
    invoke-static {p0, p1}, Lorg/apache/commons/collections/list/PredicatedList;->decorate(Ljava/util/List;Lorg/apache/commons/collections/Predicate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static removeAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "remove"    # Ljava/util/Collection;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v0, "list":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 270
    .local v2, "obj":Ljava/lang/Object;
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 271
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 274
    .end local v1    # "iter":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public static retainAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "retain"    # Ljava/util/Collection;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    .local v0, "list":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 243
    .local v2, "obj":Ljava/lang/Object;
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 247
    .end local v1    # "iter":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public static subtract(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p0, "list1"    # Ljava/util/List;
    .param p1, "list2"    # Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 103
    .local v0, "result":Ljava/util/ArrayList;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 105
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_0
    return-object v0
.end method

.method public static sum(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p0, "list1"    # Ljava/util/List;
    .param p1, "list2"    # Ljava/util/List;

    .line 122
    invoke-static {p0, p1}, Lorg/apache/commons/collections/ListUtils;->union(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1}, Lorg/apache/commons/collections/ListUtils;->intersection(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections/ListUtils;->subtract(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "list"    # Ljava/util/List;

    .line 301
    invoke-static {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static transformedList(Ljava/util/List;Lorg/apache/commons/collections/Transformer;)Ljava/util/List;
    .locals 1
    .param p0, "list"    # Ljava/util/List;
    .param p1, "transformer"    # Lorg/apache/commons/collections/Transformer;

    .line 360
    invoke-static {p0, p1}, Lorg/apache/commons/collections/list/TransformedList;->decorate(Ljava/util/List;Lorg/apache/commons/collections/Transformer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static typedList(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p0, "list"    # Ljava/util/List;
    .param p1, "type"    # Ljava/lang/Class;

    .line 344
    invoke-static {p0, p1}, Lorg/apache/commons/collections/list/TypedList;->decorate(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static union(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "list1"    # Ljava/util/List;
    .param p1, "list2"    # Ljava/util/List;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 137
    .local v0, "result":Ljava/util/ArrayList;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    return-object v0
.end method

.method public static unmodifiableList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "list"    # Ljava/util/List;

    .line 314
    invoke-static {p0}, Lorg/apache/commons/collections/list/UnmodifiableList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
