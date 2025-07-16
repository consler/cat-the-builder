.class Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;
.super Ljava/lang/Object;
.source "PresortedMap.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/core/util/PresortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArraySetComparator"
.end annotation


# instance fields
.field private array:[Ljava/util/Map$Entry;

.field private final list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 148
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    array-length v2, v2

    if-eq v0, v2, :cond_4

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Map$Entry;

    .line 150
    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    if-eqz v2, :cond_1

    .line 151
    array-length v3, v2

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    array-length v2, v2

    :goto_0
    iget-object v3, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 154
    iget-object v3, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    :cond_3
    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    :cond_4
    const v0, 0x7fffffff

    move v2, v0

    move v3, v2

    .line 159
    :goto_1
    iget-object v4, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    array-length v5, v4

    if-ge v1, v5, :cond_8

    if-ge v2, v0, :cond_5

    if-lt v3, v0, :cond_8

    :cond_5
    if-ne v2, v0, :cond_6

    .line 160
    aget-object v4, v4, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-ne p1, v4, :cond_6

    move v2, v1

    :cond_6
    if-ne v3, v0, :cond_7

    .line 163
    iget-object v4, p0, Lcom/thoughtworks/xstream/core/util/PresortedMap$ArraySetComparator;->array:[Ljava/util/Map$Entry;

    aget-object v4, v4, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-ne p2, v4, :cond_7

    move v3, v1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    sub-int/2addr v2, v3

    return v2
.end method
