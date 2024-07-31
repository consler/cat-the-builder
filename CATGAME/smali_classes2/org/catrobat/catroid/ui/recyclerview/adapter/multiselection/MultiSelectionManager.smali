.class public Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;
.super Ljava/lang/Object;
.source "MultiSelectionManager.java"


# instance fields
.field private selectedPositions:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->selectedPositions:Ljava/util/SortedSet;

    return-void
.end method

.method private removeSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .line 58
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->selectedPositions:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method private setSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .line 54
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->selectedPositions:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method


# virtual methods
.method public clearSelection()V
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->selectedPositions:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 85
    return-void
.end method

.method public getSelectedPositions()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->selectedPositions:Ljava/util/SortedSet;

    return-object v0
.end method

.method public isPositionSelected(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 50
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->selectedPositions:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSelectionActive()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->selectedPositions:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setSelectionTo(ZI)V
    .locals 0
    .param p1, "selection"    # Z
    .param p2, "position"    # I

    .line 42
    if-eqz p1, :cond_0

    .line 43
    invoke-direct {p0, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->setSelection(I)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-direct {p0, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->removeSelection(I)V

    .line 47
    :goto_0
    return-void
.end method

.method public toggleSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .line 34
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->isPositionSelected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->removeSelection(I)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->setSelection(I)V

    .line 39
    :goto_0
    return-void
.end method

.method public updateSelection(II)V
    .locals 2
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .line 67
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->selectedPositions:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->selectedPositions:Ljava/util/SortedSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->selectedPositions:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->selectedPositions:Ljava/util/SortedSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 70
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->selectedPositions:Ljava/util/SortedSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->selectedPositions:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->selectedPositions:Ljava/util/SortedSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->selectedPositions:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_1
    return-void
.end method
