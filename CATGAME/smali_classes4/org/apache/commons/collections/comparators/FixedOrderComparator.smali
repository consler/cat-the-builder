.class public Lorg/apache/commons/collections/comparators/FixedOrderComparator;
.super Ljava/lang/Object;
.source "FixedOrderComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final UNKNOWN_AFTER:I = 0x1

.field public static final UNKNOWN_BEFORE:I = 0x0

.field public static final UNKNOWN_THROW_EXCEPTION:I = 0x2


# instance fields
.field private counter:I

.field private isLocked:Z

.field private final map:Ljava/util/Map;

.field private unknownObjectBehavior:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->counter:I

    .line 77
    iput-boolean v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->isLocked:Z

    const/4 v0, 0x2

    .line 79
    iput v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->counter:I

    .line 77
    iput-boolean v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->isLocked:Z

    const/4 v0, 0x2

    .line 79
    iput v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    if-eqz p1, :cond_1

    .line 123
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    .line 121
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The list of items must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->counter:I

    .line 77
    iput-boolean v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->isLocked:Z

    const/4 v1, 0x2

    .line 79
    iput v1, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    if-eqz p1, :cond_1

    .line 104
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 105
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 102
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The list of items must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 4

    .line 193
    invoke-virtual {p0}, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->checkLocked()V

    .line 194
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->counter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->counter:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public addAsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 212
    invoke-virtual {p0}, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->checkLocked()V

    .line 213
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 217
    iget-object p1, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 215
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, " not known to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected checkLocked()V
    .locals 2

    .line 147
    invoke-virtual {p0}, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot modify a FixedOrderComparator after a comparison"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->isLocked:Z

    .line 239
    iget-object v1, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 240
    iget-object v2, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1

    .line 242
    :cond_1
    :goto_0
    iget v3, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v3, :cond_7

    if-eq v3, v0, :cond_4

    const/4 v0, 0x2

    if-ne v3, v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, p2

    .line 257
    :goto_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Attempting to compare unknown object "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 259
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "Unknown unknownObjectBehavior: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-nez v1, :cond_6

    if-nez v2, :cond_5

    move v0, v4

    :cond_5
    return v0

    :cond_6
    return v5

    :cond_7
    if-nez v1, :cond_9

    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    move v4, v5

    :goto_2
    return v4

    :cond_9
    return v0
.end method

.method public getUnknownObjectBehavior()I
    .locals 1

    .line 159
    iget v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->isLocked:Z

    return v0
.end method

.method public setUnknownObjectBehavior(I)V
    .locals 1

    .line 171
    invoke-virtual {p0}, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->checkLocked()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognised value for unknown behaviour flag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :cond_1
    :goto_0
    iput p1, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    return-void
.end method
