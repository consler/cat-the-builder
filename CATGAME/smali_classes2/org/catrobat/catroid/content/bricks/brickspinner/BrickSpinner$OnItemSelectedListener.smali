.class public interface abstract Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;
.super Ljava/lang/Object;
.source "BrickSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemSelectedListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onEditOptionSelected(Ljava/lang/Integer;)V
.end method

.method public abstract onItemSelected(Ljava/lang/Integer;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract onNewOptionSelected(Ljava/lang/Integer;)V
.end method

.method public abstract onStringOptionSelected(Ljava/lang/Integer;Ljava/lang/String;)V
.end method
