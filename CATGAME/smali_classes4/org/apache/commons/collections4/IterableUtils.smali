.class public Lorg/apache/commons/collections4/IterableUtils;
.super Ljava/lang/Object;
.source "IterableUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/IterableUtils$UnmodifiableIterable;
    }
.end annotation


# static fields
.field static final EMPTY_ITERABLE:Lorg/apache/commons/collections4/FluentIterable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lorg/apache/commons/collections4/IterableUtils$1;

    invoke-direct {v0}, Lorg/apache/commons/collections4/IterableUtils$1;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/IterableUtils;->EMPTY_ITERABLE:Lorg/apache/commons/collections4/FluentIterable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 0

    .line 50
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->emptyIteratorIfNull(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static boundedIterable(Ljava/lang/Iterable;J)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;J)",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    .line 290
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->checkNotNull(Ljava/lang/Iterable;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 295
    new-instance v0, Lorg/apache/commons/collections4/IterableUtils$6;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/IterableUtils$6;-><init>(Ljava/lang/Iterable;J)V

    return-object v0

    .line 292
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MaxSize parameter must not be negative."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static chainedIterable(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 101
    invoke-static {v0}, Lorg/apache/commons/collections4/IterableUtils;->chainedIterable([Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static chainedIterable(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 125
    invoke-static {v0}, Lorg/apache/commons/collections4/IterableUtils;->chainedIterable([Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static chainedIterable(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 151
    invoke-static {v0}, Lorg/apache/commons/collections4/IterableUtils;->chainedIterable([Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static varargs chainedIterable([Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    .line 170
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->checkNotNull([Ljava/lang/Iterable;)V

    .line 171
    new-instance v0, Lorg/apache/commons/collections4/IterableUtils$2;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/IterableUtils$2;-><init>([Ljava/lang/Iterable;)V

    return-object v0
.end method

.method static checkNotNull(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    .line 1071
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Iterable must not be null."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static varargs checkNotNull([Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1085
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 1086
    invoke-static {v2}, Lorg/apache/commons/collections4/IterableUtils;->checkNotNull(Ljava/lang/Iterable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 1083
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Iterables must not be null."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static collatedIterable(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 205
    invoke-static {v0}, Lorg/apache/commons/collections4/IterableUtils;->checkNotNull([Ljava/lang/Iterable;)V

    .line 206
    new-instance v0, Lorg/apache/commons/collections4/IterableUtils$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/IterableUtils$3;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static collatedIterable(Ljava/util/Comparator;Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 233
    invoke-static {v0}, Lorg/apache/commons/collections4/IterableUtils;->checkNotNull([Ljava/lang/Iterable;)V

    .line 234
    new-instance v0, Lorg/apache/commons/collections4/IterableUtils$4;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/IterableUtils$4;-><init>(Ljava/util/Comparator;Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 708
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 709
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 711
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->emptyIteratorIfNull(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IteratorUtils;->contains(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static contains(Ljava/lang/Iterable;Ljava/lang/Object;Lorg/apache/commons/collections4/Equator;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;TE;",
            "Lorg/apache/commons/collections4/Equator<",
            "-TE;>;)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 736
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/functors/EqualPredicate;->equalPredicate(Ljava/lang/Object;Lorg/apache/commons/collections4/Equator;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IterableUtils;->matchesAny(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z

    move-result p0

    return p0

    .line 734
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Equator must not be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static countMatches(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)J"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 679
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->emptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IterableUtils;->filteredIterable(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->size(Ljava/lang/Iterable;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    .line 677
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Predicate must not be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static emptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 573
    invoke-static {}, Lorg/apache/commons/collections4/IterableUtils;->emptyIterable()Ljava/lang/Iterable;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static emptyIterable()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    .line 76
    sget-object v0, Lorg/apache/commons/collections4/IterableUtils;->EMPTY_ITERABLE:Lorg/apache/commons/collections4/FluentIterable;

    return-object v0
.end method

.method private static emptyIteratorIfNull(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1099
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/commons/collections4/IteratorUtils;->emptyIterator()Lorg/apache/commons/collections4/ResettableIterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static filteredIterable(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    .line 260
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->checkNotNull(Ljava/lang/Iterable;)V

    if-eqz p1, :cond_0

    .line 264
    new-instance v0, Lorg/apache/commons/collections4/IterableUtils$5;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/IterableUtils$5;-><init>(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)V

    return-object v0

    .line 262
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Predicate must not be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static find(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)TE;"
        }
    .end annotation

    .line 614
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->emptyIteratorIfNull(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IteratorUtils;->find(Ljava/util/Iterator;Lorg/apache/commons/collections4/Predicate;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static first(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 795
    invoke-static {p0, v0}, Lorg/apache/commons/collections4/IterableUtils;->get(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static forEach(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Closure;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)V"
        }
    .end annotation

    .line 585
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->emptyIteratorIfNull(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IteratorUtils;->forEach(Ljava/util/Iterator;Lorg/apache/commons/collections4/Closure;)V

    return-void
.end method

.method public static forEachButLast(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Closure;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)TE;"
        }
    .end annotation

    .line 599
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->emptyIteratorIfNull(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IteratorUtils;->forEachButLast(Ljava/util/Iterator;Lorg/apache/commons/collections4/Closure;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static frequency(Ljava/lang/Iterable;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "T:TE;>(",
            "Ljava/lang/Iterable<",
            "TE;>;TT;)I"
        }
    .end annotation

    .line 749
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 750
    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 752
    :cond_0
    instance-of v0, p0, Lorg/apache/commons/collections4/Bag;

    if-eqz v0, :cond_1

    .line 753
    check-cast p0, Lorg/apache/commons/collections4/Bag;

    invoke-interface {p0, p1}, Lorg/apache/commons/collections4/Bag;->getCount(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 755
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->emptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/commons/collections4/functors/EqualPredicate;->equalPredicate(Ljava/lang/Object;)Lorg/apache/commons/collections4/Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IterableUtils;->filteredIterable(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->size(Ljava/lang/Iterable;)I

    move-result p0

    return p0
.end method

.method public static get(Ljava/lang/Iterable;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 771
    invoke-static {p1}, Lorg/apache/commons/collections4/CollectionUtils;->checkIndexBounds(I)V

    .line 772
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 773
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 775
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->emptyIteratorIfNull(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IteratorUtils;->get(Ljava/util/Iterator;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static indexOf(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)I"
        }
    .end annotation

    .line 630
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->emptyIteratorIfNull(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IteratorUtils;->indexOf(Ljava/util/Iterator;Lorg/apache/commons/collections4/Predicate;)I

    move-result p0

    return p0
.end method

.method public static isEmpty(Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)Z"
        }
    .end annotation

    .line 691
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 692
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    return p0

    .line 694
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->emptyIteratorIfNull(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/collections4/IteratorUtils;->isEmpty(Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method public static loopingIterable(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    .line 322
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->checkNotNull(Ljava/lang/Iterable;)V

    .line 323
    new-instance v0, Lorg/apache/commons/collections4/IterableUtils$7;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/IterableUtils$7;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static matchesAll(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 646
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->emptyIteratorIfNull(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IteratorUtils;->matchesAll(Ljava/util/Iterator;Lorg/apache/commons/collections4/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static matchesAny(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 661
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->emptyIteratorIfNull(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IteratorUtils;->matchesAny(Ljava/util/Iterator;Lorg/apache/commons/collections4/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static varargs partition(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Factory;[Lorg/apache/commons/collections4/Predicate;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/util/Collection<",
            "TO;>;>(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Lorg/apache/commons/collections4/Factory<",
            "TR;>;[",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TO;>;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 932
    invoke-static {}, Lorg/apache/commons/collections4/IterableUtils;->emptyIterable()Ljava/lang/Iterable;

    move-result-object p0

    .line 933
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections4/IterableUtils;->partition(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Factory;[Lorg/apache/commons/collections4/Predicate;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_9

    .line 940
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 942
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Predicate must not be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 946
    :cond_2
    array-length v0, p2

    const/4 v2, 0x1

    if-ge v0, v2, :cond_3

    .line 948
    invoke-interface {p1}, Lorg/apache/commons/collections4/Factory;->create()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 949
    invoke-static {p1, p0}, Lorg/apache/commons/collections4/CollectionUtils;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 950
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 954
    :cond_3
    array-length v0, p2

    add-int/lit8 v3, v0, 0x1

    .line 956
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_4

    .line 958
    invoke-interface {p1}, Lorg/apache/commons/collections4/Factory;->create()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 965
    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move v3, v1

    :goto_3
    if-ge v3, v0, :cond_7

    .line 968
    aget-object v5, p2, v3

    invoke-interface {v5, p1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 969
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v3, v2

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    move v3, v1

    :goto_4
    if-nez v3, :cond_5

    .line 978
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    return-object v4

    .line 937
    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Predicates must not be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static partition(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TO;>;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TO;>;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 846
    const-class v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/apache/commons/collections4/FactoryUtils;->instantiateFactory(Ljava/lang/Class;)Lorg/apache/commons/collections4/Factory;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/commons/collections4/Predicate;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 849
    invoke-static {p0, v0, v1}, Lorg/apache/commons/collections4/IterableUtils;->partition(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Factory;[Lorg/apache/commons/collections4/Predicate;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 843
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Predicate must not be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs partition(Ljava/lang/Iterable;[Lorg/apache/commons/collections4/Predicate;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;[",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TO;>;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TO;>;>;"
        }
    .end annotation

    .line 888
    const-class v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/apache/commons/collections4/FactoryUtils;->instantiateFactory(Ljava/lang/Class;)Lorg/apache/commons/collections4/Factory;

    move-result-object v0

    .line 889
    invoke-static {p0, v0, p1}, Lorg/apache/commons/collections4/IterableUtils;->partition(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Factory;[Lorg/apache/commons/collections4/Predicate;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static reversedIterable(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    .line 359
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->checkNotNull(Ljava/lang/Iterable;)V

    .line 360
    new-instance v0, Lorg/apache/commons/collections4/IterableUtils$8;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/IterableUtils$8;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static size(Ljava/lang/Iterable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)I"
        }
    .end annotation

    .line 807
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 808
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0

    .line 810
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->emptyIteratorIfNull(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/collections4/IteratorUtils;->size(Ljava/util/Iterator;)I

    move-result p0

    return p0
.end method

.method public static skippingIterable(Ljava/lang/Iterable;J)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;J)",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    .line 388
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->checkNotNull(Ljava/lang/Iterable;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 393
    new-instance v0, Lorg/apache/commons/collections4/IterableUtils$9;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/IterableUtils$9;-><init>(Ljava/lang/Iterable;J)V

    return-object v0

    .line 390
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ElementsToSkip parameter must not be negative."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toList(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 993
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->emptyIteratorIfNull(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/collections4/IteratorUtils;->toList(Ljava/util/Iterator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1009
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->emptyIteratorIfNull(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/collections4/IteratorUtils;->toString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1031
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->emptyIteratorIfNull(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IteratorUtils;->toString(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1029
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Transformer must not be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toString(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1056
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->emptyIteratorIfNull(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/IteratorUtils;->toString(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static transformedIterable(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TI;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)",
            "Ljava/lang/Iterable<",
            "TO;>;"
        }
    .end annotation

    .line 420
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->checkNotNull(Ljava/lang/Iterable;)V

    if-eqz p1, :cond_0

    .line 424
    new-instance v0, Lorg/apache/commons/collections4/IterableUtils$10;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/IterableUtils$10;-><init>(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0

    .line 422
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Transformer must not be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static uniqueIterable(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    .line 448
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->checkNotNull(Ljava/lang/Iterable;)V

    .line 449
    new-instance v0, Lorg/apache/commons/collections4/IterableUtils$11;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/IterableUtils$11;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static unmodifiableIterable(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    .line 471
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->checkNotNull(Ljava/lang/Iterable;)V

    .line 472
    instance-of v0, p0, Lorg/apache/commons/collections4/IterableUtils$UnmodifiableIterable;

    if-eqz v0, :cond_0

    return-object p0

    .line 475
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/IterableUtils$UnmodifiableIterable;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/IterableUtils$UnmodifiableIterable;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static zippingIterable(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    .line 516
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->checkNotNull(Ljava/lang/Iterable;)V

    .line 517
    invoke-static {p1}, Lorg/apache/commons/collections4/IterableUtils;->checkNotNull(Ljava/lang/Iterable;)V

    .line 518
    new-instance v0, Lorg/apache/commons/collections4/IterableUtils$12;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/IterableUtils$12;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs zippingIterable(Ljava/lang/Iterable;[Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;[",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    .line 544
    invoke-static {p0}, Lorg/apache/commons/collections4/IterableUtils;->checkNotNull(Ljava/lang/Iterable;)V

    .line 545
    invoke-static {p1}, Lorg/apache/commons/collections4/IterableUtils;->checkNotNull([Ljava/lang/Iterable;)V

    .line 546
    new-instance v0, Lorg/apache/commons/collections4/IterableUtils$13;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/collections4/IterableUtils$13;-><init>([Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-object v0
.end method
