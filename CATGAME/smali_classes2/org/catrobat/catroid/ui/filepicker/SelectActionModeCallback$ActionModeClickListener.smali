.class public interface abstract Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback$ActionModeClickListener;
.super Ljava/lang/Object;
.source "SelectActionModeCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionModeClickListener"
.end annotation


# virtual methods
.method public abstract endMultiSelectionMode()V
.end method

.method public abstract getMenuInflater()Landroid/view/MenuInflater;
.end method

.method public abstract hasUnselectedItems()Z
.end method

.method public abstract onConfirm()V
.end method

.method public abstract onToggleSelection()V
.end method
