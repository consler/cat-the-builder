.class public abstract Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
.super Ljava/lang/Object;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
        "V:",
        "Ljava/lang/Object;",
        "A:",
        "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field final children:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;"
        }
    .end annotation
.end field

.field expanded:Z

.field height:F

.field icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field selectable:Z

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 562
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->selectable:Z

    .line 563
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 556
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;, "TA;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->selectable:Z

    .line 557
    if-eqz p1, :cond_0

    .line 558
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 559
    return-void

    .line 557
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actor cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 600
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->insert(ILcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 601
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;)V"
        }
    .end annotation

    .line 604
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TN;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 605
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->insert(ILcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 604
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method protected addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<",
            "TN;TV;>;)V"
        }
    .end annotation

    .line 583
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "tree":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 584
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-nez v0, :cond_0

    return-void

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 586
    .local v0, "children":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 587
    aget-object v2, v0, v1

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 586
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 588
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public collapseAll()V
    .locals 1

    .line 730
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 731
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->collapseAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 732
    return-void
.end method

.method public expandAll()V
    .locals 1

    .line 736
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 737
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->expandAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 738
    :cond_0
    return-void
.end method

.method public expandTo()V
    .locals 2

    .line 742
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 743
    .local v0, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :goto_0
    if-eqz v0, :cond_0

    .line 744
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 745
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    goto :goto_0

    .line 747
    :cond_0
    return-void
.end method

.method public findExpandedValues(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TV;>;)V"
        }
    .end annotation

    .line 758
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "values":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TV;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findExpandedValues(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 759
    :cond_0
    return-void
.end method

.method public findNode(Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TN;"
        }
    .end annotation

    .line 723
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_1

    .line 724
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v0

    return-object v0

    .line 723
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 659
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getChildren()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;"
        }
    .end annotation

    .line 668
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .line 774
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    return v0
.end method

.method public getIcon()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1

    .line 708
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public getLevel()I
    .locals 2

    .line 712
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    const/4 v0, 0x0

    .line 713
    .local v0, "level":I
    move-object v1, p0

    .line 715
    .local v1, "current":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 716
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getParent()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v1

    .line 717
    if-nez v1, :cond_0

    .line 718
    return v0

    .line 717
    :cond_0
    goto :goto_0
.end method

.method public getParent()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 690
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return-object v0
.end method

.method public getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<",
            "TN;TV;>;"
        }
    .end annotation

    .line 642
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    .line 643
    .local v0, "parent":Lcom/badlogic/gdx/scenes/scene2d/Group;
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    return-object v1

    .line 644
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 699
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hasChildren()Z
    .locals 1

    .line 672
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public insert(ILcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITN;)V"
        }
    .end annotation

    .line 609
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p2, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    iput-object p0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 610
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    .line 611
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->updateChildren()V

    .line 612
    return-void
.end method

.method public isAscendantOf(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 779
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    if-eqz p1, :cond_2

    .line 780
    move-object v0, p1

    .line 782
    .local v0, "current":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_0
    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    return v1

    .line 783
    :cond_1
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 784
    if-nez v0, :cond_0

    .line 785
    const/4 v1, 0x0

    return v1

    .line 779
    .end local v0    # "current":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "node cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 790
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    if-eqz p1, :cond_2

    .line 791
    move-object v0, p0

    .line 793
    .local v0, "parent":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_0
    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    return v1

    .line 794
    :cond_1
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 795
    if-nez v0, :cond_0

    .line 796
    const/4 v1, 0x0

    return v1

    .line 790
    .end local v0    # "parent":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "node cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 663
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .line 750
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->selectable:Z

    return v0
.end method

.method public remove()V
    .locals 2

    .line 615
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    .line 616
    .local v0, "tree":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    goto :goto_0

    .line 618
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-eqz v1, :cond_1

    .line 619
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 620
    :cond_1
    :goto_0
    return-void
.end method

.method public remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 623
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 624
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-nez v0, :cond_0

    return-void

    .line 625
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    .line 626
    .local v0, "tree":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 627
    :cond_1
    return-void
.end method

.method public removeAll()V
    .locals 4

    .line 630
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    .line 631
    .local v0, "tree":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
    if-eqz v0, :cond_0

    .line 632
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 633
    .local v1, "children":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 634
    aget-object v3, v1, v2

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 633
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 636
    .end local v1    # "children":[Ljava/lang/Object;
    .end local v2    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 637
    return-void
.end method

.method protected removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<",
            "TN;TV;>;)V"
        }
    .end annotation

    .line 592
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "tree":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 593
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-nez v0, :cond_0

    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 595
    .local v0, "children":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 596
    aget-object v2, v0, v1

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 595
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 597
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public restoreExpandedValues(Lcom/badlogic/gdx/utils/Array;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TV;>;)V"
        }
    .end annotation

    .line 762
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "values":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 763
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->findNode(Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v2

    .line 764
    .local v2, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    if-eqz v2, :cond_0

    .line 765
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 766
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expandTo()V

    .line 762
    .end local v2    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 769
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    return-void
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 648
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "newActor":Lcom/badlogic/gdx/scenes/scene2d/Actor;, "TA;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    .line 650
    .local v0, "tree":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    if-eqz v0, :cond_0

    .line 651
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 652
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 655
    .end local v0    # "tree":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree<TN;TV;>;"
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 656
    return-void
.end method

.method public setExpanded(Z)V
    .locals 4
    .param p1, "expanded"    # Z

    .line 566
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 567
    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    .line 568
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_1

    return-void

    .line 569
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    .line 570
    .local v0, "tree":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
    if-nez v0, :cond_2

    return-void

    .line 571
    :cond_2
    if-eqz p1, :cond_4

    .line 572
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 573
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 572
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_3
    goto :goto_2

    .line 575
    :cond_4
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_5

    .line 576
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 575
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 578
    .end local v1    # "i":I
    :cond_5
    :goto_2
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->invalidateHierarchy()V

    .line 579
    return-void
.end method

.method public setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 0
    .param p1, "icon"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 695
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 696
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .param p1, "selectable"    # Z

    .line 754
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->selectable:Z

    .line 755
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 704
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->value:Ljava/lang/Object;

    .line 705
    return-void
.end method

.method public updateChildren()V
    .locals 4

    .line 679
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node<TN;TV;TA;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-nez v0, :cond_0

    return-void

    .line 680
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getTree()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    move-result-object v0

    .line 681
    .local v0, "tree":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
    if-nez v0, :cond_1

    return-void

    .line 682
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 683
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 682
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 684
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 685
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 684
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 686
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_3
    return-void
.end method
