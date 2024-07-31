.class public Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;
.super Ljava/lang/Object;
.source "ViewStateManager.java"


# instance fields
.field private disabledPositions:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private invisiblePositions:Ljava/util/SortedSet;
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

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;->invisiblePositions:Ljava/util/SortedSet;

    .line 32
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;->disabledPositions:Ljava/util/SortedSet;

    return-void
.end method


# virtual methods
.method public clearDisabledPositions()V
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;->disabledPositions:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 64
    return-void
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 51
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;->disabledPositions:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isVisible(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 35
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;->invisiblePositions:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setAllPositionsVisible()V
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;->invisiblePositions:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 48
    return-void
.end method

.method public setEnabled(ZI)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "position"    # I

    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;->disabledPositions:Ljava/util/SortedSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;->disabledPositions:Ljava/util/SortedSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 60
    :goto_0
    return-void
.end method

.method public setVisible(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "visible"    # Z

    .line 39
    if-eqz p2, :cond_0

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;->invisiblePositions:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;->invisiblePositions:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 44
    :goto_0
    return-void
.end method
