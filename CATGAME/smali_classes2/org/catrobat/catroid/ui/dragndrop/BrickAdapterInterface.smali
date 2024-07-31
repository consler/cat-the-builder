.class public interface abstract Lorg/catrobat/catroid/ui/dragndrop/BrickAdapterInterface;
.super Ljava/lang/Object;
.source "BrickAdapterInterface.java"


# virtual methods
.method public abstract getItem(I)Lorg/catrobat/catroid/content/bricks/Brick;
.end method

.method public abstract getPosition(Lorg/catrobat/catroid/content/bricks/Brick;)I
.end method

.method public abstract moveItemTo(ILorg/catrobat/catroid/content/bricks/Brick;)V
.end method

.method public abstract onItemMove(II)Z
.end method

.method public abstract removeItems(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setAllPositionsVisible()V
.end method

.method public abstract setItemVisible(IZ)V
.end method
