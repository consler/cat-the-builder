.class public final synthetic Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$NewProjectDialogFragment$daMSN0XLU5aecQcTWFILSd4n0iA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;

.field public final synthetic f$1:Lcom/google/android/material/switchmaterial/SwitchMaterial;

.field public final synthetic f$2:Landroid/widget/RadioGroup;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/widget/RadioGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$NewProjectDialogFragment$daMSN0XLU5aecQcTWFILSd4n0iA;->f$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$NewProjectDialogFragment$daMSN0XLU5aecQcTWFILSd4n0iA;->f$1:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    iput-object p3, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$NewProjectDialogFragment$daMSN0XLU5aecQcTWFILSd4n0iA;->f$2:Landroid/widget/RadioGroup;

    return-void
.end method


# virtual methods
.method public final onPositiveButtonClick(Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$NewProjectDialogFragment$daMSN0XLU5aecQcTWFILSd4n0iA;->f$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$NewProjectDialogFragment$daMSN0XLU5aecQcTWFILSd4n0iA;->f$1:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$NewProjectDialogFragment$daMSN0XLU5aecQcTWFILSd4n0iA;->f$2:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->lambda$onCreateDialog$0$NewProjectDialogFragment(Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/widget/RadioGroup;Landroid/content/DialogInterface;Ljava/lang/String;)V

    return-void
.end method
