.class public interface abstract Lorg/catrobat/catroid/embroidery/EmbroideryHeader;
.super Ljava/lang/Object;
.source "EmbroideryHeader.java"


# virtual methods
.method public abstract addColorChange()V
.end method

.method public abstract appendToStream(Ljava/io/FileOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract initialize(FF)V
.end method

.method public abstract reset()V
.end method

.method public abstract update(FF)V
.end method
