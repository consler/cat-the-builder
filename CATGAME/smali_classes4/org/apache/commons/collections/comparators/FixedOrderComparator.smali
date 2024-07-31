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

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->counter:I

    .line 77
    iput-boolean v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->isLocked:Z

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .param p1, "items"    # Ljava/util/List;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->counter:I

    .line 77
    iput-boolean v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->isLocked:Z

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    .line 120
    if-eqz p1, :cond_1

    .line 123
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    return-void

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The list of items must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .param p1, "items"    # [Ljava/lang/Object;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->counter:I

    .line 77
    iput-boolean v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->isLocked:Z

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    .line 101
    if-eqz p1, :cond_1

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 105
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The list of items must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

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

    move-result-object v0

    .line 195
    .local v0, "position":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public addAsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "existingObj"    # Ljava/lang/Object;
    .param p2, "newObj"    # Ljava/lang/Object;

    .line 212
    invoke-virtual {p0}, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->checkLocked()V

    .line 213
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 214
    .local v0, "position":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 217
    iget-object v1, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 218
    .local v1, "result":Ljava/lang/Object;
    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 215
    .end local v1    # "result":Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, " not known to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected checkLocked()V
    .locals 2

    .line 147
    invoke-virtual {p0}, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
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
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->isLocked:Z

    .line 239
    iget-object v1, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 240
    .local v1, "position1":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 241
    .local v2, "position2":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0

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

    .line 256
    if-nez v1, :cond_2

    move-object v0, p1

    goto :goto_1

    :cond_2
    move-object v0, p2

    .line 257
    .local v0, "unknownObj":Ljava/lang/Object;
    :goto_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Attempting to compare unknown object "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 242
    .end local v0    # "unknownObj":Ljava/lang/Object;
    :cond_3
    const/4 v0, 0x0

    .line 259
    .restart local v0    # "unknownObj":Ljava/lang/Object;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unknown unknownObjectBehavior: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v5, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 250
    .end local v0    # "unknownObj":Ljava/lang/Object;
    :cond_4
    if-nez v1, :cond_6

    .line 251
    if-nez v2, :cond_5

    move v0, v4

    :cond_5
    return v0

    .line 253
    :cond_6
    return v5

    .line 244
    :cond_7
    if-nez v1, :cond_9

    .line 245
    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    move v4, v5

    :goto_2
    return v4

    .line 247
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
    .locals 2
    .param p1, "unknownObjectBehavior"    # I

    .line 171
    invoke-virtual {p0}, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->checkLocked()V

    .line 172
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unrecognised value for unknown behaviour flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_1
    :goto_0
    iput p1, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    .line 178
    return-void
.end method
