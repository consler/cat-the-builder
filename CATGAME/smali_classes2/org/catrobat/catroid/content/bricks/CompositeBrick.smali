.class public interface abstract Lorg/catrobat/catroid/content/bricks/CompositeBrick;
.super Ljava/lang/Object;
.source "CompositeBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/Brick;


# virtual methods
.method public abstract getNestedBricks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSecondaryNestedBricks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasSecondaryList()Z
.end method
