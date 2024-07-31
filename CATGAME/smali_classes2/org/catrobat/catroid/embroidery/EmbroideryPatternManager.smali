.class public interface abstract Lorg/catrobat/catroid/embroidery/EmbroideryPatternManager;
.super Ljava/lang/Object;
.source "EmbroideryPatternManager.java"


# virtual methods
.method public abstract addStitchCommand(Lorg/catrobat/catroid/embroidery/StitchCommand;)V
.end method

.method public abstract clear()V
.end method

.method public abstract getEmbroideryPatternList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/embroidery/StitchPoint;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEmbroideryStream()Lorg/catrobat/catroid/embroidery/EmbroideryStream;
.end method

.method public abstract validPatternExists()Z
.end method
