.class Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment$1;
.super Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;
.source "NewProjectDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;

    .line 66
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;

    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public isUnique(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newName"    # Ljava/lang/String;

    .line 69
    invoke-static {p1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;->projectExistsInDirectory(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
