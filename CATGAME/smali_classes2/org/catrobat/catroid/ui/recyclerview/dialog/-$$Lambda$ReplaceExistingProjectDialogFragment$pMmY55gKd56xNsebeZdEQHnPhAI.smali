.class public final synthetic Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$ReplaceExistingProjectDialogFragment$pMmY55gKd56xNsebeZdEQHnPhAI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;

.field public final synthetic f$1:Lcom/google/android/material/textfield/TextInputLayout;

.field public final synthetic f$2:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic f$3:Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;Lcom/google/android/material/textfield/TextInputLayout;Landroidx/appcompat/app/AlertDialog;Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$ReplaceExistingProjectDialogFragment$pMmY55gKd56xNsebeZdEQHnPhAI;->f$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$ReplaceExistingProjectDialogFragment$pMmY55gKd56xNsebeZdEQHnPhAI;->f$1:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p3, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$ReplaceExistingProjectDialogFragment$pMmY55gKd56xNsebeZdEQHnPhAI;->f$2:Landroidx/appcompat/app/AlertDialog;

    iput-object p4, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$ReplaceExistingProjectDialogFragment$pMmY55gKd56xNsebeZdEQHnPhAI;->f$3:Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 6

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$ReplaceExistingProjectDialogFragment$pMmY55gKd56xNsebeZdEQHnPhAI;->f$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$ReplaceExistingProjectDialogFragment$pMmY55gKd56xNsebeZdEQHnPhAI;->f$1:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$ReplaceExistingProjectDialogFragment$pMmY55gKd56xNsebeZdEQHnPhAI;->f$2:Landroidx/appcompat/app/AlertDialog;

    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$ReplaceExistingProjectDialogFragment$pMmY55gKd56xNsebeZdEQHnPhAI;->f$3:Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;->lambda$onCreateDialog$1$ReplaceExistingProjectDialogFragment(Lcom/google/android/material/textfield/TextInputLayout;Landroidx/appcompat/app/AlertDialog;Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;Landroid/widget/RadioGroup;I)V

    return-void
.end method
