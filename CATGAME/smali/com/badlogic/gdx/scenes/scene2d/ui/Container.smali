.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;"
    }
.end annotation


# instance fields
.field private actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private align:I

.field private background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field private clip:Z

.field private fillX:F

.field private fillY:F

.field private maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private round:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 21
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 22
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 23
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 24
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->round:Z

    .line 33
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setTransform(Z)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    .local p1, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;, "TT;"
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 40
    return-void
.end method


# virtual methods
.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 177
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use Container#setActor."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addActorAfter(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "actorAfter"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 195
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use Container#setActor."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addActorAt(ILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 183
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use Container#setActor."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addActorBefore(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "actorBefore"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 189
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use Container#setActor."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .param p1, "align"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 558
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 559
    return-object p0
.end method

.method public background(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .param p1, "background"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 99
    return-object p0
.end method

.method public bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 584
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 585
    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 586
    return-object p0
.end method

.method public center()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 564
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 565
    return-object p0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 5
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .line 43
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->validate()V

    .line 44
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->isTransform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V

    .line 47
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clip:Z

    if-eqz v0, :cond_1

    .line 48
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .local v0, "padLeft":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    .line 50
    .local v1, "padBottom":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v2

    sub-float/2addr v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    sub-float/2addr v2, v3

    .line 51
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v3

    sub-float/2addr v3, v1

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 50
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clipBegin(FFFF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 53
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 54
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clipEnd()V

    .line 56
    .end local v0    # "padLeft":F
    .end local v1    # "padBottom":F
    :cond_0
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 58
    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getY()F

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V

    .line 61
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 63
    :goto_1
    return-void
.end method

.method protected drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V
    .locals 11
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 68
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 70
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 71
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v9

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v10

    move-object v6, p1

    move v7, p3

    move v8, p4

    invoke-interface/range {v5 .. v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 72
    return-void
.end method

.method public drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 5
    .param p1, "shapes"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 732
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->validate()V

    .line 733
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->isTransform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 734
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->applyTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 735
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clip:Z

    if-eqz v0, :cond_2

    .line 736
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->flush()V

    .line 737
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .local v0, "padLeft":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    .line 738
    .local v1, "padBottom":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clipBegin(FFFF)Z

    move-result v2

    goto :goto_0

    .line 739
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v2

    sub-float/2addr v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    sub-float/2addr v2, v3

    .line 740
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v3

    sub-float/2addr v3, v1

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 739
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clipBegin(FFFF)Z

    move-result v2

    :goto_0
    nop

    .line 741
    .local v2, "draw":Z
    if-eqz v2, :cond_1

    .line 742
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 743
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clipEnd()V

    .line 745
    .end local v0    # "padLeft":F
    .end local v1    # "padBottom":F
    .end local v2    # "draw":Z
    :cond_1
    goto :goto_1

    .line 746
    :cond_2
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 747
    :goto_1
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->resetTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    goto :goto_2

    .line 749
    :cond_3
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 750
    :goto_2
    return-void
.end method

.method public fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 518
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    .line 519
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    .line 520
    return-object p0
.end method

.method public fill(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 536
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    .line 537
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    .line 538
    return-object p0
.end method

.method public fill(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 3
    .param p1, "fill"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 550
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    .line 551
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    .line 552
    return-object p0
.end method

.method public fill(ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 3
    .param p1, "x"    # Z
    .param p2, "y"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 543
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    .line 544
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    .line 545
    return-object p0
.end method

.method public fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 525
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    .line 526
    return-object p0
.end method

.method public fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 531
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    .line 532
    return-object p0
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 171
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getAlign()I
    .locals 1

    .line 703
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    return v0
.end method

.method public getBackground()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1

    .line 103
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public getClip()Z
    .locals 1

    .line 720
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clip:Z

    return v0
.end method

.method public getFillX()F
    .locals 1

    .line 695
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    return v0
.end method

.method public getFillY()F
    .locals 1

    .line 699
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    return v0
.end method

.method public getMaxHeight()F
    .locals 3

    .line 643
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .line 644
    .local v0, "v":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 645
    :cond_0
    return v0
.end method

.method public getMaxHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 639
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMaxWidth()F
    .locals 3

    .line 633
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .line 634
    .local v0, "v":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 635
    :cond_0
    return v0
.end method

.method public getMaxWidthValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 629
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMinHeight()F
    .locals 2

    .line 605
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getMinHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 601
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMinWidth()F
    .locals 2

    .line 597
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPadBottom()F
    .locals 1

    .line 672
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadBottomValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 668
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadLeft()F
    .locals 1

    .line 663
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadLeftValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 659
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadRight()F
    .locals 1

    .line 681
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadRightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 677
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadTop()F
    .locals 1

    .line 654
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadTopValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 650
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadX()F
    .locals 2

    .line 686
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPadY()F
    .locals 2

    .line 691
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPrefHeight()F
    .locals 4

    .line 623
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .line 624
    .local v0, "v":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 625
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getMinHeight()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    add-float/2addr v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method public getPrefHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 619
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPrefWidth()F
    .locals 4

    .line 613
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .line 614
    .local v0, "v":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 615
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getMinWidth()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    add-float/2addr v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method public getPrefWidthValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 609
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 275
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->height(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 276
    return-object p0
.end method

.method public height(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "height"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 266
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_0

    .line 267
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 268
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 269
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 270
    return-object p0

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "touchable"    # Z

    .line 724
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clip:Z

    if-eqz v0, :cond_2

    .line 725
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v1, v2, :cond_0

    return-object v0

    .line 726
    :cond_0
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v2

    cmpl-float v2, p1, v2

    if-gez v2, :cond_1

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_2

    :cond_1
    return-object v0

    .line 728
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method

.method public layout()V
    .locals 18

    .line 107
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v1, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    .local v1, "padLeft":F
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    .line 110
    .local v2, "padBottom":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v3

    sub-float/2addr v3, v1

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 111
    .local v3, "containerWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v4

    sub-float/2addr v4, v2

    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v5

    sub-float/2addr v4, v5

    .line 112
    .local v4, "containerHeight":F
    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v5

    .local v5, "minWidth":F
    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v6

    .line 113
    .local v6, "minHeight":F
    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v7

    .local v7, "prefWidth":F
    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v8

    .line 114
    .local v8, "prefHeight":F
    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v9

    .local v9, "maxWidth":F
    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v10

    .line 117
    .local v10, "maxHeight":F
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    const/4 v12, 0x0

    cmpl-float v13, v11, v12

    if-lez v13, :cond_1

    .line 118
    mul-float/2addr v11, v3

    .local v11, "width":F
    goto :goto_0

    .line 120
    .end local v11    # "width":F
    :cond_1
    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 121
    .restart local v11    # "width":F
    :goto_0
    cmpg-float v13, v11, v5

    if-gez v13, :cond_2

    move v11, v5

    .line 122
    :cond_2
    cmpl-float v13, v9, v12

    if-lez v13, :cond_3

    cmpl-float v13, v11, v9

    if-lez v13, :cond_3

    move v11, v9

    .line 125
    :cond_3
    iget v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    cmpl-float v14, v13, v12

    if-lez v14, :cond_4

    .line 126
    mul-float/2addr v13, v4

    .local v13, "height":F
    goto :goto_1

    .line 128
    .end local v13    # "height":F
    :cond_4
    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 129
    .restart local v13    # "height":F
    :goto_1
    cmpg-float v14, v13, v6

    if-gez v14, :cond_5

    move v13, v6

    .line 130
    :cond_5
    cmpl-float v12, v10, v12

    if-lez v12, :cond_6

    cmpl-float v12, v13, v10

    if-lez v12, :cond_6

    move v13, v10

    .line 132
    :cond_6
    move v12, v1

    .line 133
    .local v12, "x":F
    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    and-int/lit8 v15, v14, 0x10

    const/high16 v16, 0x40000000    # 2.0f

    if-eqz v15, :cond_7

    .line 134
    sub-float v14, v3, v11

    add-float/2addr v12, v14

    goto :goto_2

    .line 135
    :cond_7
    and-int/lit8 v14, v14, 0x8

    if-nez v14, :cond_8

    .line 136
    sub-float v14, v3, v11

    div-float v14, v14, v16

    add-float/2addr v12, v14

    .line 138
    :cond_8
    :goto_2
    move v14, v2

    .line 139
    .local v14, "y":F
    iget v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    and-int/lit8 v17, v15, 0x2

    if-eqz v17, :cond_9

    .line 140
    sub-float v15, v4, v13

    add-float/2addr v14, v15

    goto :goto_3

    .line 141
    :cond_9
    and-int/lit8 v15, v15, 0x4

    if-nez v15, :cond_a

    .line 142
    sub-float v15, v4, v13

    div-float v15, v15, v16

    add-float/2addr v14, v15

    .line 144
    :cond_a
    :goto_3
    iget-boolean v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->round:Z

    if-eqz v15, :cond_b

    .line 145
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v12, v15

    .line 146
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v14, v15

    .line 147
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v11, v15

    .line 148
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v13, v15

    .line 151
    :cond_b
    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v15, v12, v14, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 152
    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v15, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v0, :cond_c

    check-cast v15, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    .line 153
    :cond_c
    return-void
.end method

.method public left()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 577
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 578
    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 579
    return-object p0
.end method

.method public maxHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "maxHeight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 428
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 429
    return-object p0
.end method

.method public maxHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "maxHeight"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 405
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_0

    .line 406
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 407
    return-object p0

    .line 405
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxHeight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public maxSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "size"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 412
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 413
    return-object p0
.end method

.method public maxSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 418
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 419
    return-object p0
.end method

.method public maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "size"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 383
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_0

    .line 384
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 385
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 386
    return-object p0

    .line 383
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "width"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "height"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 391
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_1

    .line 392
    if-eqz p2, :cond_0

    .line 393
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 394
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 395
    return-object p0

    .line 392
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public maxWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "maxWidth"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 423
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 424
    return-object p0
.end method

.method public maxWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "maxWidth"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 399
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_0

    .line 400
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 401
    return-object p0

    .line 399
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxWidth cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public minHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "minHeight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 327
    return-object p0
.end method

.method public minHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "minHeight"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 303
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_0

    .line 304
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 305
    return-object p0

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minHeight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public minSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "size"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 310
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 311
    return-object p0
.end method

.method public minSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 316
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 317
    return-object p0
.end method

.method public minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "size"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 281
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_0

    .line 282
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 283
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 284
    return-object p0

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "width"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "height"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 289
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_1

    .line 290
    if-eqz p2, :cond_0

    .line 291
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 292
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 293
    return-object p0

    .line 290
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public minWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "minWidth"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 321
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 322
    return-object p0
.end method

.method public minWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "minWidth"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 297
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_0

    .line 298
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 299
    return-object p0

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minWidth cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "pad"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 480
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    .line 481
    .local v0, "value":Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 482
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 483
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 484
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 485
    return-object p0
.end method

.method public pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "top"    # F
    .param p2, "left"    # F
    .param p3, "bottom"    # F
    .param p4, "right"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 489
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 490
    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 491
    invoke-static {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 492
    invoke-static {p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 493
    return-object p0
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "pad"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 434
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_0

    .line 435
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 436
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 437
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 438
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 439
    return-object p0

    .line 434
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pad cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "top"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "left"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p3, "bottom"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p4, "right"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 443
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_3

    .line 444
    if-eqz p2, :cond_2

    .line 445
    if-eqz p3, :cond_1

    .line 446
    if-eqz p4, :cond_0

    .line 447
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 448
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 449
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 450
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 451
    return-object p0

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "right cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bottom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "left cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "top cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "padBottom"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 507
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 508
    return-object p0
.end method

.method public padBottom(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "padBottom"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 467
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_0

    .line 468
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 469
    return-object p0

    .line 467
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padBottom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "padLeft"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 502
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 503
    return-object p0
.end method

.method public padLeft(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "padLeft"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 461
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_0

    .line 462
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 463
    return-object p0

    .line 461
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padLeft cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "padRight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 512
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 513
    return-object p0
.end method

.method public padRight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "padRight"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 473
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_0

    .line 474
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 475
    return-object p0

    .line 473
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padRight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "padTop"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 497
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 498
    return-object p0
.end method

.method public padTop(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "padTop"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 455
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_0

    .line 456
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 457
    return-object p0

    .line 455
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padTop cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prefHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "prefHeight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 377
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 378
    return-object p0
.end method

.method public prefHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "prefHeight"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 354
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_0

    .line 355
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 356
    return-object p0

    .line 354
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "prefHeight cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prefSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "size"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 367
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 368
    return-object p0
.end method

.method public prefSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 361
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 362
    return-object p0
.end method

.method public prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "size"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 332
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_0

    .line 333
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 334
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 335
    return-object p0

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "width"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "height"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 340
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_1

    .line 341
    if-eqz p2, :cond_0

    .line 342
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 343
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 344
    return-object p0

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prefWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "prefWidth"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 372
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 373
    return-object p0
.end method

.method public prefWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "prefWidth"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 348
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_0

    .line 349
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 350
    return-object p0

    .line 348
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "prefWidth cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 2
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 199
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_1

    .line 200
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 201
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 202
    const/4 v0, 0x1

    return v0

    .line 199
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actor cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z
    .locals 2
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "unfocus"    # Z

    .line 206
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_1

    .line 207
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 208
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 209
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    move-result v0

    return v0

    .line 206
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actor cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public right()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 591
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 592
    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 593
    return-object p0
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 162
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    .local p1, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;, "TT;"
    if-eq p1, p0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne p1, v0, :cond_0

    return-void

    .line 164
    :cond_0
    if-eqz v0, :cond_1

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 165
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 166
    if-eqz p1, :cond_2

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 167
    :cond_2
    return-void

    .line 162
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actor cannot be the Container."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 1
    .param p1, "background"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 77
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Z)V

    .line 78
    return-void
.end method

.method public setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Z)V
    .locals 4
    .param p1, "background"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "adjustPadding"    # Z

    .line 85
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-ne v0, p1, :cond_0

    return-void

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 87
    if-eqz p2, :cond_2

    .line 88
    if-nez p1, :cond_1

    .line 89
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    goto :goto_0

    .line 91
    :cond_1
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v0

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v1

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v2

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->invalidate()V

    .line 94
    :cond_2
    return-void
.end method

.method public setClip(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 714
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clip:Z

    .line 715
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setTransform(Z)V

    .line 716
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->invalidate()V

    .line 717
    return-void
.end method

.method public setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 2
    .param p1, "cullingArea"    # Lcom/badlogic/gdx/math/Rectangle;

    .line 156
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V

    .line 157
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;->setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V

    .line 158
    :cond_0
    return-void
.end method

.method public setRound(Z)V
    .locals 0
    .param p1, "round"    # Z

    .line 708
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->round:Z

    .line 709
    return-void
.end method

.method public size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "size"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 239
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 240
    return-object p0
.end method

.method public size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 245
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 246
    return-object p0
.end method

.method public size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "size"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 214
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_0

    .line 215
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 216
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 217
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 218
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 219
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 220
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 221
    return-object p0

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "width"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .param p2, "height"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 226
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_1

    .line 227
    if-eqz p2, :cond_0

    .line 228
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 229
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 230
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 231
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 232
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 233
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 234
    return-object p0

    .line 227
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public top()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 570
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 571
    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    .line 572
    return-object p0
.end method

.method public width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .param p1, "width"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 260
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->width(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 261
    return-object p0
.end method

.method public width(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .param p1, "width"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 251
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Container;, "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<TT;>;"
    if-eqz p1, :cond_0

    .line 252
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 253
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 254
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 255
    return-object p0

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
