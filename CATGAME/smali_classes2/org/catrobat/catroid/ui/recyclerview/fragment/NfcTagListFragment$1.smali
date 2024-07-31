.class Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment$1;
.super Ljava/lang/Object;
.source "NfcTagListFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->onSettingsClick(Lorg/catrobat/catroid/common/NfcTagData;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;

.field final synthetic val$item:Lorg/catrobat/catroid/common/NfcTagData;

.field final synthetic val$itemList:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;Ljava/util/List;Lorg/catrobat/catroid/common/NfcTagData;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;

    .line 209
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment$1;->val$itemList:Ljava/util/List;

    iput-object p3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment$1;->val$item:Lorg/catrobat/catroid/common/NfcTagData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 213
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0327

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a0337

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0577

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment$1;->val$item:Lorg/catrobat/catroid/common/NfcTagData;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->showRenameDialog(Lorg/catrobat/catroid/common/Nameable;)V

    .line 219
    goto :goto_0

    .line 221
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment$1;->val$itemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->deleteItems(Ljava/util/List;)V

    .line 222
    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment$1;->val$itemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->copyItems(Ljava/util/List;)V

    .line 216
    nop

    .line 226
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
