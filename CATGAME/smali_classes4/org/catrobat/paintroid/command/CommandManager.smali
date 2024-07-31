.class public interface abstract Lorg/catrobat/paintroid/command/CommandManager;
.super Ljava/lang/Object;
.source "CommandManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/command/CommandManager$CommandListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008f\u0018\u00002\u00020\u0001:\u0001\u001aJ\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH&J\u0010\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0012\u0010\u0012\u001a\u00020\u000c2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0003H&J\u0008\u0010\u0014\u001a\u00020\u000cH&J\u0010\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0008\u0010\u0016\u001a\u00020\u000cH&J\u0010\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH&J\u0008\u0010\u0018\u001a\u00020\u000cH&J\u0008\u0010\u0019\u001a\u00020\u000cH&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0008R\u0012\u0010\t\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0008R\u0012\u0010\n\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0008\u00a8\u0006\u001b"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "",
        "commandManagerModel",
        "Lorg/catrobat/paintroid/model/CommandManagerModel;",
        "getCommandManagerModel",
        "()Lorg/catrobat/paintroid/model/CommandManagerModel;",
        "isBusy",
        "",
        "()Z",
        "isRedoAvailable",
        "isUndoAvailable",
        "addCommand",
        "",
        "command",
        "Lorg/catrobat/paintroid/command/Command;",
        "addCommandListener",
        "commandListener",
        "Lorg/catrobat/paintroid/command/CommandManager$CommandListener;",
        "loadCommandsCatrobatImage",
        "model",
        "redo",
        "removeCommandListener",
        "reset",
        "setInitialStateCommand",
        "shutdown",
        "undo",
        "CommandListener",
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
.method public abstract addCommand(Lorg/catrobat/paintroid/command/Command;)V
.end method

.method public abstract addCommandListener(Lorg/catrobat/paintroid/command/CommandManager$CommandListener;)V
.end method

.method public abstract getCommandManagerModel()Lorg/catrobat/paintroid/model/CommandManagerModel;
.end method

.method public abstract isBusy()Z
.end method

.method public abstract isRedoAvailable()Z
.end method

.method public abstract isUndoAvailable()Z
.end method

.method public abstract loadCommandsCatrobatImage(Lorg/catrobat/paintroid/model/CommandManagerModel;)V
.end method

.method public abstract redo()V
.end method

.method public abstract removeCommandListener(Lorg/catrobat/paintroid/command/CommandManager$CommandListener;)V
.end method

.method public abstract reset()V
.end method

.method public abstract setInitialStateCommand(Lorg/catrobat/paintroid/command/Command;)V
.end method

.method public abstract shutdown()V
.end method

.method public abstract undo()V
.end method
