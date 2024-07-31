.class Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    .line 86
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 6
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 88
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getNodeAt(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v0

    .line 89
    .local v0, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->getTouchDownY()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getNodeAt(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v1

    if-eq v0, v1, :cond_1

    return-void

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->getMultiple()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->notEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->shift()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 93
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rangeStart:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iput-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rangeStart:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rangeStart:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 95
    .local v1, "rangeStart":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->clear()V

    .line 96
    :cond_3
    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v2

    .local v2, "start":F
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v3

    .line 97
    .local v3, "end":F
    cmpl-float v4, v2, v3

    if-lez v4, :cond_4

    .line 98
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v5, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selectNodes(Lcom/badlogic/gdx/utils/Array;FF)V

    goto :goto_0

    .line 100
    :cond_4
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v5, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selectNodes(Lcom/badlogic/gdx/utils/Array;FF)V

    .line 101
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->items()Lcom/badlogic/gdx/utils/OrderedSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/OrderedSet;->orderedItems()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->reverse()V

    .line 104
    :goto_0
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->fireChangeEvent()Z

    .line 105
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iput-object v1, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rangeStart:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 106
    return-void

    .line 108
    .end local v1    # "rangeStart":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;, "TN;"
    .end local v2    # "start":F
    .end local v3    # "end":F
    :cond_5
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->getMultiple()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v1

    if-nez v1, :cond_8

    .line 110
    :cond_6
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v1

    .line 111
    .local v1, "rowX":F
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingRight:F

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v3

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 112
    :cond_7
    cmpg-float v2, p2, v1

    if-gez v2, :cond_8

    .line 113
    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 114
    return-void

    .line 117
    .end local v1    # "rowX":F
    :cond_8
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->isSelectable()Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    .line 118
    :cond_9
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->choose(Ljava/lang/Object;)V

    .line 119
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    iput-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rangeStart:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 120
    :cond_a
    return-void
.end method

.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "fromActor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 128
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;"
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getNodeAt(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->setOverNode(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 130
    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "toActor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 133
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;"
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 134
    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    invoke-virtual {p5, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->setOverNode(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 135
    :cond_1
    return-void
.end method

.method public mouseMoved(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 123
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getNodeAt(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->setOverNode(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 124
    const/4 v0, 0x0

    return v0
.end method
