.class public interface abstract Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;
.super Ljava/lang/Object;
.source "MainActivityContracts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/contract/MainActivityContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TopBarViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\u0007H&J\u0008\u0010\t\u001a\u00020\u0007H&J\u0008\u0010\n\u001a\u00020\u0007H&J\u0008\u0010\u000b\u001a\u00020\u0007H&J\u0008\u0010\u000c\u001a\u00020\u0007H&J\u0012\u0010\r\u001a\u00020\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH&J\u0012\u0010\u0010\u001a\u00020\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH&J\u0008\u0010\u0011\u001a\u00020\u0007H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$TopBarViewHolder;",
        "",
        "height",
        "",
        "getHeight",
        "()I",
        "disableRedoButton",
        "",
        "disableUndoButton",
        "enableRedoButton",
        "enableUndoButton",
        "hide",
        "hideTitleIfNotStandalone",
        "removeCatroidMenuItems",
        "menu",
        "Landroid/view/Menu;",
        "removeStandaloneMenuItems",
        "show",
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
.method public abstract disableRedoButton()V
.end method

.method public abstract disableUndoButton()V
.end method

.method public abstract enableRedoButton()V
.end method

.method public abstract enableUndoButton()V
.end method

.method public abstract getHeight()I
.end method

.method public abstract hide()V
.end method

.method public abstract hideTitleIfNotStandalone()V
.end method

.method public abstract removeCatroidMenuItems(Landroid/view/Menu;)V
.end method

.method public abstract removeStandaloneMenuItems(Landroid/view/Menu;)V
.end method

.method public abstract show()V
.end method
