.class final Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;
.super Lcom/google/common/collect/ImmutableList;
.source "ImmutableRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComplementRanges"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "Lcom/google/common/collect/Range<",
        "TC;>;>;"
    }
.end annotation


# instance fields
.field private final positiveBoundedAbove:Z

.field private final positiveBoundedBelow:Z

.field private final size:I

.field final synthetic this$0:Lcom/google/common/collect/ImmutableRangeSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableRangeSet;)V
    .locals 2

    .line 300
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.ComplementRanges;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 301
    invoke-static {p1}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->positiveBoundedBelow:Z

    .line 302
    invoke-static {p1}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->positiveBoundedAbove:Z

    .line 304
    invoke-static {p1}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 305
    .local p1, "size":I
    iget-boolean v0, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->positiveBoundedBelow:Z

    if-eqz v0, :cond_0

    .line 306
    add-int/lit8 p1, p1, 0x1

    .line 308
    :cond_0
    iget-boolean v0, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->positiveBoundedAbove:Z

    if-eqz v0, :cond_1

    .line 309
    add-int/lit8 p1, p1, 0x1

    .line 311
    :cond_1
    iput p1, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->size:I

    .line 312
    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/common/collect/Range;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 321
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.ComplementRanges;"
    iget v0, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->size:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 324
    iget-boolean v0, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->positiveBoundedBelow:Z

    if-eqz v0, :cond_1

    .line 325
    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .local v0, "lowerBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :goto_0
    goto :goto_1

    .line 327
    .end local v0    # "lowerBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .line 331
    .restart local v0    # "lowerBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :goto_1
    iget-boolean v1, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->positiveBoundedAbove:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->size:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_2

    .line 332
    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    .local v1, "upperBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    goto :goto_2

    .line 334
    .end local v1    # "upperBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->positiveBoundedBelow:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    iget-object v1, v1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .line 337
    .restart local v1    # "upperBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :goto_2
    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 291
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.ComplementRanges;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->get(I)Lcom/google/common/collect/Range;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    .line 342
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.ComplementRanges;"
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 316
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>.ComplementRanges;"
    iget v0, p0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;->size:I

    return v0
.end method
