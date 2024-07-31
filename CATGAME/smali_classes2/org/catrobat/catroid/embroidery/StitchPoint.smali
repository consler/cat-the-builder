.class public interface abstract Lorg/catrobat/catroid/embroidery/StitchPoint;
.super Ljava/lang/Object;
.source "StitchPoint.java"


# virtual methods
.method public abstract appendToStream(Ljava/io/FileOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getColor()Lcom/badlogic/gdx/graphics/Color;
.end method

.method public abstract getX()F
.end method

.method public abstract getY()F
.end method

.method public abstract hashCode()I
.end method

.method public abstract isColorChangePoint()Z
.end method

.method public abstract isConnectingPoint()Z
.end method

.method public abstract isJumpPoint()Z
.end method

.method public abstract setColor(Lcom/badlogic/gdx/graphics/Color;)V
.end method

.method public abstract setColorChange(Z)V
.end method

.method public abstract setJump(Z)V
.end method

.method public abstract setRelativeCoordinatesToPreviousPoint(FF)V
.end method
