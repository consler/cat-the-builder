.class public interface abstract Lorg/catrobat/catroid/formulaeditor/UserData;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Lorg/catrobat/catroid/common/Nameable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/catrobat/catroid/common/Nameable;"
    }
.end annotation


# virtual methods
.method public abstract getDeviceKey()Ljava/util/UUID;
.end method

.method public abstract getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public abstract setValue(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
