.class public Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;
.source "ArraySelection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private array:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field

.field private rangeSelect:Z

.field private rangeStart:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)V"
        }
    .end annotation

    .line 15
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeSelect:Z

    .line 16
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->array:Lcom/badlogic/gdx/utils/Array;

    .line 17
    return-void
.end method


# virtual methods
.method protected changed()V
    .locals 1

    .line 58
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeStart:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public choose(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 20
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_9

    .line 21
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->isDisabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 23
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeSelect:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->multiple:Z

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-lez v0, :cond_7

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->shift()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeStart:Ljava/lang/Object;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->array:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0, v2}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    .line 30
    .local v0, "rangeStartIndex":I
    :goto_0
    if-eq v0, v1, :cond_7

    .line 31
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeStart:Ljava/lang/Object;

    .line 32
    .local v1, "oldRangeStart":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->snapshot()V

    .line 34
    move v3, v0

    .local v3, "start":I
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->array:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, p1, v2}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v2

    .line 35
    .local v2, "end":I
    if-le v3, v2, :cond_3

    .line 36
    move v4, v2

    .line 37
    .local v4, "temp":I
    move v2, v3

    .line 38
    move v3, v4

    .line 40
    .end local v4    # "temp":I
    :cond_3
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/OrderedSet;->clear(I)V

    .line 41
    :cond_4
    move v4, v3

    .local v4, "i":I
    :goto_1
    if-gt v4, v2, :cond_5

    .line 42
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->array:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 43
    .end local v4    # "i":I
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->fireChangeEvent()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 44
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->revert()V

    goto :goto_2

    .line 46
    :cond_6
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->changed()V

    .line 47
    :goto_2
    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeStart:Ljava/lang/Object;

    .line 48
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->cleanup()V

    .line 49
    return-void

    .line 52
    .end local v0    # "rangeStartIndex":I
    .end local v1    # "oldRangeStart":Ljava/lang/Object;, "TT;"
    .end local v2    # "end":I
    .end local v3    # "start":I
    :cond_7
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->choose(Ljava/lang/Object;)V

    .line 53
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeStart:Ljava/lang/Object;

    .line 54
    return-void

    .line 24
    :cond_8
    :goto_3
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->choose(Ljava/lang/Object;)V

    .line 25
    return-void

    .line 20
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "item cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRangeSelect()Z
    .locals 1

    .line 62
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeSelect:Z

    return v0
.end method

.method public setRangeSelect(Z)V
    .locals 0
    .param p1, "rangeSelect"    # Z

    .line 66
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<TT;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeSelect:Z

    .line 67
    return-void
.end method

.method public validate()V
    .locals 4

    .line 72
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;, "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->array:Lcom/badlogic/gdx/utils/Array;

    .line 73
    .local v0, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->clear()V

    .line 75
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->items()Lcom/badlogic/gdx/utils/OrderedSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 79
    .local v2, "selected":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 80
    .end local v2    # "selected":Ljava/lang/Object;, "TT;"
    :cond_1
    goto :goto_0

    .line 81
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_2
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->required:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->set(Ljava/lang/Object;)V

    .line 82
    :cond_3
    return-void
.end method
