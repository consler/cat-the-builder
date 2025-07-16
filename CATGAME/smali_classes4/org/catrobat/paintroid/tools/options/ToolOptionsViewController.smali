.class public interface abstract Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;
.super Ljava/lang/Object;
.source "ToolOptionsViewController.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/options/ToolOptionsVisibilityController;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\u0007H&J\u0008\u0010\u000b\u001a\u00020\u0007H&J\u0008\u0010\u000c\u001a\u00020\u0007H&J\u0008\u0010\r\u001a\u00020\u0007H&J\u0008\u0010\u000e\u001a\u00020\u0007H&J\u0008\u0010\u000f\u001a\u00020\u0007H&J\u0008\u0010\u0010\u001a\u00020\u0007H&J\u0008\u0010\u0011\u001a\u00020\u0007H&J \u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\tH&J \u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\tH&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;",
        "Lorg/catrobat/paintroid/tools/options/ToolOptionsVisibilityController;",
        "toolSpecificOptionsLayout",
        "Landroid/view/ViewGroup;",
        "getToolSpecificOptionsLayout",
        "()Landroid/view/ViewGroup;",
        "animateBottomAndTopNavigation",
        "",
        "hide",
        "",
        "disable",
        "disableHide",
        "enable",
        "enableHide",
        "hideCheckmark",
        "removeToolViews",
        "resetToOrigin",
        "showCheckmark",
        "slideDown",
        "view",
        "Landroid/view/View;",
        "willHide",
        "showOptionsView",
        "slideUp",
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
.method public abstract animateBottomAndTopNavigation(Z)V
.end method

.method public abstract disable()V
.end method

.method public abstract disableHide()V
.end method

.method public abstract enable()V
.end method

.method public abstract enableHide()V
.end method

.method public abstract getToolSpecificOptionsLayout()Landroid/view/ViewGroup;
.end method

.method public abstract hideCheckmark()V
.end method

.method public abstract removeToolViews()V
.end method

.method public abstract resetToOrigin()V
.end method

.method public abstract showCheckmark()V
.end method

.method public abstract slideDown(Landroid/view/View;ZZ)V
.end method

.method public abstract slideUp(Landroid/view/View;ZZ)V
.end method
