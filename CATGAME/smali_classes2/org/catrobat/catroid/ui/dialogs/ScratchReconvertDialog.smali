.class public Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "ScratchReconvertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$ReconvertDialogCallback;
    }
.end annotation


# static fields
.field public static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "scratch_reconvert_dialog"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected cachedDate:Ljava/util/Date;

.field protected callback:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$ReconvertDialogCallback;

.field protected context:Landroid/content/Context;

.field protected downloadExistingProgramRadioButton:Landroid/widget/RadioButton;

.field protected reconvertProgramRadioButton:Landroid/widget/RadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 63
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;)Z
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;

    .line 45
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->handleOkButton()Z

    move-result v0

    return v0
.end method

.method private handleOkButton()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->downloadExistingProgramRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->callback:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$ReconvertDialogCallback;

    invoke-interface {v0}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$ReconvertDialogCallback;->onDownloadExistingProgram()V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->reconvertProgramRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->callback:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$ReconvertDialogCallback;

    invoke-interface {v0}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$ReconvertDialogCallback;->onReconvertProgram()V

    .line 172
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->dismiss()V

    .line 173
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 158
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 159
    sget-object v0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->TAG:Ljava/lang/String;

    const-string v1, "User canceled dialog by clicking outside of the Dialog fragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->context:Landroid/content/Context;

    const v1, 0x7f1205cd

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 161
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->callback:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$ReconvertDialogCallback;

    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$ReconvertDialogCallback;->onUserCanceledConversion()V

    .line 164
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 79
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d014d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "dialogView":Landroid/view/View;
    const v1, 0x7f0a035b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->downloadExistingProgramRadioButton:Landroid/widget/RadioButton;

    .line 82
    const v1, 0x7f0a035d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->reconvertProgramRadioButton:Landroid/widget/RadioButton;

    .line 84
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 85
    .local v1, "now":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->cachedDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 86
    .local v2, "timeDifferenceInMS":J
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    long-to-int v4, v4

    .line 87
    .local v4, "minutes":I
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v2, v3}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v5

    long-to-int v5, v5

    .line 88
    .local v5, "hours":I
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v6

    long-to-int v6, v6

    .line 91
    .local v6, "days":I
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lez v6, :cond_0

    .line 92
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100009

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-virtual {v9, v10, v6, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "quantityString":Ljava/lang/String;
    goto :goto_0

    .line 93
    .end local v9    # "quantityString":Ljava/lang/String;
    :cond_0
    if-lez v5, :cond_1

    .line 94
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f10001a

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-virtual {v9, v10, v5, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "quantityString":Ljava/lang/String;
    goto :goto_0

    .line 96
    .end local v9    # "quantityString":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f10001d

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-virtual {v9, v10, v4, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 98
    .restart local v9    # "quantityString":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f1206fa

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v7

    invoke-virtual {v10, v11, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 100
    .local v7, "titleText":Ljava/lang/String;
    new-instance v8, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v8, v10}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v8

    const v10, 0x7f1205ff

    new-instance v11, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$2;

    invoke-direct {v11, p0}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$2;-><init>(Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;)V

    .line 101
    invoke-virtual {v8, v10, v11}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v8

    const v10, 0x7f1201b8

    new-instance v11, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$1;

    invoke-direct {v11, p0}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$1;-><init>(Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;)V

    .line 106
    invoke-virtual {v8, v10, v11}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v8

    .line 115
    invoke-virtual {v8}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v8

    .line 117
    .local v8, "dialog":Landroid/app/Dialog;
    new-instance v10, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$3;

    invoke-direct {v10, p0}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$3;-><init>(Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;)V

    invoke-virtual {v8, v10}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 130
    new-instance v10, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$4;

    invoke-direct {v10, p0}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$4;-><init>(Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;)V

    invoke-virtual {v8, v10}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 153
    return-object v8
.end method

.method public setCachedDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "cachedDate"    # Ljava/util/Date;

    .line 66
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->cachedDate:Ljava/util/Date;

    .line 67
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->context:Landroid/content/Context;

    .line 71
    return-void
.end method

.method public setReconvertDialogCallback(Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$ReconvertDialogCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$ReconvertDialogCallback;

    .line 74
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->callback:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$ReconvertDialogCallback;

    .line 75
    return-void
.end method
