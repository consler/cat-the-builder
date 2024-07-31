.class Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment$1;
.super Ljava/lang/Object;
.source "CategoryListFragment.java"

# interfaces
.implements Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment;->showNewUserListDialog(Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;Ljava/util/List;Ljava/util/List;Landroidx/fragment/app/FragmentActivity;Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment;

.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$categoryListItem:Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;

.field final synthetic val$projectUserList:Ljava/util/List;

.field final synthetic val$spriteUserList:Ljava/util/List;

.field final synthetic val$userListDialog:Lorg/catrobat/catroid/utils/AddUserListDialog;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment;Lorg/catrobat/catroid/utils/AddUserListDialog;Ljava/util/List;Ljava/util/List;Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment;

    .line 723
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment$1;->val$userListDialog:Lorg/catrobat/catroid/utils/AddUserListDialog;

    iput-object p3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment$1;->val$projectUserList:Ljava/util/List;

    iput-object p4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment$1;->val$spriteUserList:Ljava/util/List;

    iput-object p5, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment$1;->val$categoryListItem:Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;

    iput-object p6, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeButton()V
    .locals 1

    .line 733
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 734
    return-void
.end method

.method public onPositiveButton(Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "textInput"    # Ljava/lang/String;

    .line 726
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-direct {v0, p2}, Lorg/catrobat/catroid/formulaeditor/UserList;-><init>(Ljava/lang/String;)V

    .line 727
    .local v0, "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment$1;->val$userListDialog:Lorg/catrobat/catroid/utils/AddUserListDialog;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment$1;->val$projectUserList:Ljava/util/List;

    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment$1;->val$spriteUserList:Ljava/util/List;

    invoke-virtual {v1, p1, v0, v2, v3}, Lorg/catrobat/catroid/utils/AddUserListDialog;->addUserList(Landroid/content/DialogInterface;Lorg/catrobat/catroid/formulaeditor/UserList;Ljava/util/List;Ljava/util/List;)V

    .line 728
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment$1;->val$categoryListItem:Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;

    invoke-static {v1, v2, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment;->access$000(Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment;Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;Lorg/catrobat/catroid/formulaeditor/UserList;)V

    .line 729
    return-void
.end method
