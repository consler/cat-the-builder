.class Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/CollectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CardinalityHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final cardinalityA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TO;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final cardinalityB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TO;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;, "Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper<TO;>;"
    .local p1, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p2, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Lorg/apache/commons/collections4/CollectionUtils;->getCardinalityMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->cardinalityA:Ljava/util/Map;

    .line 77
    invoke-static {p2}, Lorg/apache/commons/collections4/CollectionUtils;->getCardinalityMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->cardinalityB:Ljava/util/Map;

    .line 78
    return-void
.end method

.method private getFreq(Ljava/lang/Object;Ljava/util/Map;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "*",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 117
    .local p0, "this":Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;, "Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper<TO;>;"
    .local p2, "freqMap":Ljava/util/Map;, "Ljava/util/Map<*Ljava/lang/Integer;>;"
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 118
    .local v0, "count":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 121
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public freqA(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 104
    .local p0, "this":Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;, "Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper<TO;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->cardinalityA:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public freqB(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 113
    .local p0, "this":Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;, "Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper<TO;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->cardinalityB:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public final max(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 86
    .local p0, "this":Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;, "Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper<TO;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->freqA(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->freqB(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final min(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 95
    .local p0, "this":Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;, "Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper<TO;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->freqA(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->freqB(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
