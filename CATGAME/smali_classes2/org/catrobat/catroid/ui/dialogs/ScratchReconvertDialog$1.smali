.class Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$1;
.super Ljava/lang/Object;
.source "ScratchReconvertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;

    .line 106
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$1;->this$0:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 109
    invoke-static {}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User canceled dialog by pressing Cancel-button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$1;->this$0:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->context:Landroid/content/Context;

    const v1, 0x7f1205cd

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 111
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$1;->this$0:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->callback:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$ReconvertDialogCallback;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$1;->this$0:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->callback:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$ReconvertDialogCallback;

    invoke-interface {v0}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$ReconvertDialogCallback;->onUserCanceledConversion()V

    .line 114
    :cond_0
    return-void
.end method
