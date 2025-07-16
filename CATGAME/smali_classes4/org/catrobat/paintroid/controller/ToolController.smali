.class public interface abstract Lorg/catrobat/paintroid/controller/ToolController;
.super Ljava/lang/Object;
.source "ToolController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/controller/ToolController$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0007H&J\u0008\u0010\u0018\u001a\u00020\u0016H&J\u0008\u0010\u0019\u001a\u00020\u0016H&J\u0008\u0010\u001a\u001a\u00020\u0016H&J\u0008\u0010\u001b\u001a\u00020\u0016H&J\u0008\u0010\u001c\u001a\u00020\u0016H&J\u0008\u0010\u001d\u001a\u00020\u0007H&J\u0008\u0010\u001e\u001a\u00020\u0016H&J\u0008\u0010\u001f\u001a\u00020\u0016H&J\u0008\u0010 \u001a\u00020\u0016H&J\u0012\u0010!\u001a\u00020\u00162\u0008\u0010\"\u001a\u0004\u0018\u00010#H&J\u0010\u0010$\u001a\u00020\u00162\u0006\u0010%\u001a\u00020&H&J\u0008\u0010\'\u001a\u00020\u0016H&J\u0010\u0010(\u001a\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u000fH&J\u0008\u0010)\u001a\u00020\u0016H&J\u0008\u0010*\u001a\u00020\u0007H&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0008R\u0014\u0010\t\u001a\u0004\u0018\u00010\nX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006+"
    }
    d2 = {
        "Lorg/catrobat/paintroid/controller/ToolController;",
        "",
        "currentTool",
        "Lorg/catrobat/paintroid/tools/Tool;",
        "getCurrentTool",
        "()Lorg/catrobat/paintroid/tools/Tool;",
        "isDefaultTool",
        "",
        "()Z",
        "toolColor",
        "",
        "getToolColor",
        "()Ljava/lang/Integer;",
        "toolList",
        "Ljava/util/HashSet;",
        "Lorg/catrobat/paintroid/tools/ToolType;",
        "getToolList",
        "()Ljava/util/HashSet;",
        "toolType",
        "getToolType",
        "()Lorg/catrobat/paintroid/tools/ToolType;",
        "adjustClippingToolOnBackPressed",
        "",
        "backPressed",
        "createTool",
        "disableHideOption",
        "disableToolOptionsView",
        "enableHideOption",
        "enableToolOptionsView",
        "hasToolOptionsView",
        "hideToolOptionsView",
        "resetToolInternalState",
        "resetToolInternalStateOnImageLoaded",
        "setBitmapFromSource",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "setOnColorPickedListener",
        "onColorPickedListener",
        "Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;",
        "showToolOptionsView",
        "switchTool",
        "toggleToolOptionsView",
        "toolOptionsViewVisible",
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract adjustClippingToolOnBackPressed(Z)V
.end method

.method public abstract createTool()V
.end method

.method public abstract disableHideOption()V
.end method

.method public abstract disableToolOptionsView()V
.end method

.method public abstract enableHideOption()V
.end method

.method public abstract enableToolOptionsView()V
.end method

.method public abstract getCurrentTool()Lorg/catrobat/paintroid/tools/Tool;
.end method

.method public abstract getToolColor()Ljava/lang/Integer;
.end method

.method public abstract getToolList()Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lorg/catrobat/paintroid/tools/ToolType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getToolType()Lorg/catrobat/paintroid/tools/ToolType;
.end method

.method public abstract hasToolOptionsView()Z
.end method

.method public abstract hideToolOptionsView()V
.end method

.method public abstract isDefaultTool()Z
.end method

.method public abstract resetToolInternalState()V
.end method

.method public abstract resetToolInternalStateOnImageLoaded()V
.end method

.method public abstract setBitmapFromSource(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setOnColorPickedListener(Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;)V
.end method

.method public abstract showToolOptionsView()V
.end method

.method public abstract switchTool(Lorg/catrobat/paintroid/tools/ToolType;)V
.end method

.method public abstract toggleToolOptionsView()V
.end method

.method public abstract toolOptionsViewVisible()Z
.end method
