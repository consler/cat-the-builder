.class Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog$1;
.super Ljava/lang/Object;
.source "SelectCastDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;

    .line 67
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog$1;->this$0:Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 70
    monitor-enter p0

    .line 71
    :try_start_0
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/cast/CastManager;->getMediaRouter()Landroidx/mediarouter/media/MediaRouter;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->unselect(I)V

    .line 72
    monitor-exit p0

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
