.class Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment$1;
.super Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;
.source "ReplaceExistingProjectDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;

    .line 84
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;

    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method protected isNameUnique(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 88
    invoke-static {p1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;->projectExistsInDirectory(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue;->INSTANCE:Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue;

    invoke-virtual {v0}, Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue;->getQueue()Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue$ProjectDownloadQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue$ProjectDownloadQueue;->alreadyInQueue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
