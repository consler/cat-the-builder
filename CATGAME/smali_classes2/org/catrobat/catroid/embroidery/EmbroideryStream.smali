.class public interface abstract Lorg/catrobat/catroid/embroidery/EmbroideryStream;
.super Ljava/lang/Object;
.source "EmbroideryStream.java"


# virtual methods
.method public abstract addAllStitchPoints(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/catrobat/catroid/embroidery/StitchPoint;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addColorChange()V
.end method

.method public abstract addJump()V
.end method

.method public abstract addStitchPoint(FFLcom/badlogic/gdx/graphics/Color;)V
.end method

.method public abstract getHeader()Lorg/catrobat/catroid/embroidery/EmbroideryHeader;
.end method

.method public abstract getPointList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/catrobat/catroid/embroidery/StitchPoint;",
            ">;"
        }
    .end annotation
.end method

.method public abstract reset()V
.end method
