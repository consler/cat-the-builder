.class public Lcom/huawei/hms/common/ErrorDialogFragment;
.super Landroid/app/DialogFragment;
.source "ErrorDialogFragment.java"


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/common/ErrorDialogFragment;->a:Landroid/app/Dialog;

    .line 25
    iput-object v0, p0, Lcom/huawei/hms/common/ErrorDialogFragment;->b:Landroid/content/DialogInterface$OnCancelListener;

    .line 28
    return-void
.end method

.method public static newInstance(Landroid/app/Dialog;)Lcom/huawei/hms/common/ErrorDialogFragment;
    .locals 1

    .line 31
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/huawei/hms/common/ErrorDialogFragment;->newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/huawei/hms/common/ErrorDialogFragment;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/huawei/hms/common/ErrorDialogFragment;
    .locals 2

    .line 35
    const-string v0, "Dialog cannot be null!"

    invoke-static {p0, v0}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/huawei/hms/common/ErrorDialogFragment;

    invoke-direct {v0}, Lcom/huawei/hms/common/ErrorDialogFragment;-><init>()V

    .line 38
    iput-object p0, v0, Lcom/huawei/hms/common/ErrorDialogFragment;->a:Landroid/app/Dialog;

    .line 39
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 40
    iget-object p0, v0, Lcom/huawei/hms/common/ErrorDialogFragment;->a:Landroid/app/Dialog;

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 41
    if-eqz p1, :cond_0

    .line 42
    iput-object p1, v0, Lcom/huawei/hms/common/ErrorDialogFragment;->b:Landroid/content/DialogInterface$OnCancelListener;

    .line 44
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/huawei/hms/common/ErrorDialogFragment;->b:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 51
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/huawei/hms/common/ErrorDialogFragment;->a:Landroid/app/Dialog;

    if-nez p1, :cond_0

    .line 55
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/huawei/hms/common/ErrorDialogFragment;->setShowsDialog(Z)V

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/common/ErrorDialogFragment;->a:Landroid/app/Dialog;

    return-object p1
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 61
    const-string v0, "FragmentManager cannot be null!"

    invoke-static {p1, v0}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 63
    return-void
.end method
