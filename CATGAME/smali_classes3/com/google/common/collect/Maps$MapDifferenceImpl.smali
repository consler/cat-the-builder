.class Lcom/google/common/collect/Maps$MapDifferenceImpl;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/collect/MapDifference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MapDifferenceImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapDifference<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final differences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lcom/google/common/collect/MapDifference$ValueDifference<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final onBoth:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final onlyOnLeft:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final onlyOnRight:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;",
            "Lcom/google/common/collect/MapDifference$ValueDifference<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 519
    .local p0, "this":Lcom/google/common/collect/Maps$MapDifferenceImpl;, "Lcom/google/common/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    .local p1, "onlyOnLeft":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "onlyOnRight":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p3, "onBoth":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p4, "differences":Ljava/util/Map;, "Ljava/util/Map<TK;Lcom/google/common/collect/MapDifference$ValueDifference<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    invoke-static {p1}, Lcom/google/common/collect/Maps;->access$100(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnLeft:Ljava/util/Map;

    .line 521
    invoke-static {p2}, Lcom/google/common/collect/Maps;->access$100(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnRight:Ljava/util/Map;

    .line 522
    invoke-static {p3}, Lcom/google/common/collect/Maps;->access$100(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onBoth:Ljava/util/Map;

    .line 523
    invoke-static {p4}, Lcom/google/common/collect/Maps;->access$100(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->differences:Ljava/util/Map;

    .line 524
    return-void
.end method


# virtual methods
.method public areEqual()Z
    .locals 1

    .line 528
    .local p0, "this":Lcom/google/common/collect/Maps$MapDifferenceImpl;, "Lcom/google/common/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnLeft:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnRight:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->differences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public entriesDiffering()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Lcom/google/common/collect/MapDifference$ValueDifference<",
            "TV;>;>;"
        }
    .end annotation

    .line 548
    .local p0, "this":Lcom/google/common/collect/Maps$MapDifferenceImpl;, "Lcom/google/common/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->differences:Ljava/util/Map;

    return-object v0
.end method

.method public entriesInCommon()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 543
    .local p0, "this":Lcom/google/common/collect/Maps$MapDifferenceImpl;, "Lcom/google/common/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onBoth:Ljava/util/Map;

    return-object v0
.end method

.method public entriesOnlyOnLeft()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 533
    .local p0, "this":Lcom/google/common/collect/Maps$MapDifferenceImpl;, "Lcom/google/common/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnLeft:Ljava/util/Map;

    return-object v0
.end method

.method public entriesOnlyOnRight()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 538
    .local p0, "this":Lcom/google/common/collect/Maps$MapDifferenceImpl;, "Lcom/google/common/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnRight:Ljava/util/Map;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 553
    .local p0, "this":Lcom/google/common/collect/Maps$MapDifferenceImpl;, "Lcom/google/common/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 554
    return v0

    .line 556
    :cond_0
    instance-of v1, p1, Lcom/google/common/collect/MapDifference;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 557
    move-object v1, p1

    check-cast v1, Lcom/google/common/collect/MapDifference;

    .line 558
    .local v1, "other":Lcom/google/common/collect/MapDifference;, "Lcom/google/common/collect/MapDifference<**>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesOnlyOnLeft()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1}, Lcom/google/common/collect/MapDifference;->entriesOnlyOnLeft()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 559
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesOnlyOnRight()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1}, Lcom/google/common/collect/MapDifference;->entriesOnlyOnRight()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 560
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesInCommon()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1}, Lcom/google/common/collect/MapDifference;->entriesInCommon()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 561
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesDiffering()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1}, Lcom/google/common/collect/MapDifference;->entriesDiffering()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 558
    :goto_0
    return v0

    .line 563
    .end local v1    # "other":Lcom/google/common/collect/MapDifference;, "Lcom/google/common/collect/MapDifference<**>;"
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 568
    .local p0, "this":Lcom/google/common/collect/Maps$MapDifferenceImpl;, "Lcom/google/common/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 569
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesOnlyOnLeft()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesOnlyOnRight()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesInCommon()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesDiffering()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 568
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 574
    .local p0, "this":Lcom/google/common/collect/Maps$MapDifferenceImpl;, "Lcom/google/common/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->areEqual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    const-string v0, "equal"

    return-object v0

    .line 578
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not equal"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnLeft:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 580
    const-string v1, ": only on left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnLeft:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 582
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnRight:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 583
    const-string v1, ": only on right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnRight:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 585
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->differences:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 586
    const-string v1, ": value differences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->differences:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 588
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
