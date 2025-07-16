.class public Lorg/apache/commons/collections/SetUtils;
.super Ljava/lang/Object;
.source "SetUtils.java"


# static fields
.field public static final EMPTY_SET:Ljava/util/Set;

.field public static final EMPTY_SORTED_SET:Ljava/util/SortedSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sput-object v0, Lorg/apache/commons/collections/SetUtils;->EMPTY_SET:Ljava/util/Set;

    .line 62
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;->decorate(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/SetUtils;->EMPTY_SORTED_SET:Ljava/util/SortedSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hashCodeForSet(Ljava/util/Collection;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 127
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 130
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 133
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isEqualSet(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 103
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 107
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static orderedSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .line 237
    invoke-static {p0}, Lorg/apache/commons/collections/set/ListOrderedSet;->decorate(Ljava/util/Set;)Lorg/apache/commons/collections/set/ListOrderedSet;

    move-result-object p0

    return-object p0
.end method

.method public static predicatedSet(Ljava/util/Set;Lorg/apache/commons/collections/Predicate;)Ljava/util/Set;
    .locals 0

    .line 193
    invoke-static {p0, p1}, Lorg/apache/commons/collections/set/PredicatedSet;->decorate(Ljava/util/Set;Lorg/apache/commons/collections/Predicate;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static predicatedSortedSet(Ljava/util/SortedSet;Lorg/apache/commons/collections/Predicate;)Ljava/util/SortedSet;
    .locals 0

    .line 294
    invoke-static {p0, p1}, Lorg/apache/commons/collections/set/PredicatedSortedSet;->decorate(Ljava/util/SortedSet;Lorg/apache/commons/collections/Predicate;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static synchronizedSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .line 163
    invoke-static {p0}, Lorg/apache/commons/collections/set/SynchronizedSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synchronizedSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 0

    .line 264
    invoke-static {p0}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->decorate(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static transformedSet(Ljava/util/Set;Lorg/apache/commons/collections/Transformer;)Ljava/util/Set;
    .locals 0

    .line 222
    invoke-static {p0, p1}, Lorg/apache/commons/collections/set/TransformedSet;->decorate(Ljava/util/Set;Lorg/apache/commons/collections/Transformer;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static transformedSortedSet(Ljava/util/SortedSet;Lorg/apache/commons/collections/Transformer;)Ljava/util/SortedSet;
    .locals 0

    .line 323
    invoke-static {p0, p1}, Lorg/apache/commons/collections/set/TransformedSortedSet;->decorate(Ljava/util/SortedSet;Lorg/apache/commons/collections/Transformer;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static typedSet(Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;
    .locals 0

    .line 206
    invoke-static {p0, p1}, Lorg/apache/commons/collections/set/TypedSet;->decorate(Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static typedSortedSet(Ljava/util/SortedSet;Ljava/lang/Class;)Ljava/util/SortedSet;
    .locals 0

    .line 307
    invoke-static {p0, p1}, Lorg/apache/commons/collections/set/TypedSortedSet;->decorate(Ljava/util/SortedSet;Ljava/lang/Class;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .line 176
    invoke-static {p0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 0

    .line 277
    invoke-static {p0}, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;->decorate(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method
