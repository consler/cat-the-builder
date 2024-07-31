.class Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog$3;
.super Ljava/lang/Object;
.source "SelectCastDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$alertDialog:Landroidx/appcompat/app/AlertDialog;

.field final synthetic val$deviceAdapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;Landroidx/appcompat/app/AlertDialog;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;

    .line 103
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog$3;->this$0:Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog$3;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog$3;->val$deviceAdapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog$3;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog$3;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog$3;->val$deviceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog$3;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    const v1, 0x7f0a02e6

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    .local v0, "textview":Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog$3;->this$0:Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;

    const v3, 0x7f1201ce

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog$3;->this$0:Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;

    const v3, 0x7f1201cf

    .line 110
    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/ui/dialogs/SelectCastDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .end local v0    # "textview":Landroid/widget/TextView;
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    monitor-exit p0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
