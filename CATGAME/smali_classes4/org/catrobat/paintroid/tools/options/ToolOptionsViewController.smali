.class public interface abstract Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;
.super Ljava/lang/Object;
.source "ToolOptionsViewController.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/options/ToolOptionsVisibilityController;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\u0007H&J\u0008\u0010\t\u001a\u00020\u0007H&J\u0008\u0010\n\u001a\u00020\u0007H&J\u0008\u0010\u000b\u001a\u00020\u0007H&J\u0008\u0010\u000c\u001a\u00020\u0007H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;",
        "Lorg/catrobat/paintroid/tools/options/ToolOptionsVisibilityController;",
        "toolSpecificOptionsLayout",
        "Landroid/view/ViewGroup;",
        "getToolSpecificOptionsLayout",
        "()Landroid/view/ViewGroup;",
        "disable",
        "",
        "enable",
        "hideCheckmark",
        "removeToolViews",
        "resetToOrigin",
        "showCheckmark",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# virtual methods
.method public abstract disable()V
.end method

.method public abstract enable()V
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
