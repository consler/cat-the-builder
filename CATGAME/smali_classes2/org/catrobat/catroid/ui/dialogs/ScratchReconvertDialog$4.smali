.class Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$4;
.super Ljava/lang/Object;
.source "ScratchReconvertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    .line 130
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$4;->this$0:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 133
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 134
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$4;->this$0:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->access$100(Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;)Z

    move-result v0

    .line 135
    .local v0, "okButtonResult":Z
    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$4;->this$0:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->dismiss()V

    .line 138
    :cond_0
    return v0

    .line 139
    .end local v0    # "okButtonResult":Z
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 140
    invoke-static {}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User canceled dialog by pressing Back-button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$4;->this$0:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->context:Landroid/content/Context;

    const v1, 0x7f1205cd

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 142
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$4;->this$0:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->callback:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$ReconvertDialogCallback;

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$4;->this$0:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->callback:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$ReconvertDialogCallback;

    invoke-interface {v0}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$ReconvertDialogCallback;->onUserCanceledConversion()V

    .line 145
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$4;->this$0:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->dismiss()V

    .line 146
    const/4 v0, 0x1

    return v0

    .line 149
    :cond_3
    const/4 v0, 0x0

    return v0
.end method
