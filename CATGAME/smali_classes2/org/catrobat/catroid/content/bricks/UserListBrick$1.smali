.class Lorg/catrobat/catroid/content/bricks/UserListBrick$1;
.super Ljava/lang/Object;
.source "UserListBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/content/bricks/UserListBrick;->onNewOptionSelected(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/content/bricks/UserListBrick;

.field final synthetic val$activity:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic val$projectUserList:Ljava/util/List;

.field final synthetic val$spriteUserList:Ljava/util/List;

.field final synthetic val$userListDialog:Lorg/catrobat/catroid/utils/AddUserListDialog;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/content/bricks/UserListBrick;Lorg/catrobat/catroid/utils/AddUserListDialog;Ljava/util/List;Ljava/util/List;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/content/bricks/UserListBrick;

    .line 106
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/UserListBrick$1;->this$0:Lorg/catrobat/catroid/content/bricks/UserListBrick;

    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/UserListBrick$1;->val$userListDialog:Lorg/catrobat/catroid/utils/AddUserListDialog;

    iput-object p3, p0, Lorg/catrobat/catroid/content/bricks/UserListBrick$1;->val$projectUserList:Ljava/util/List;

    iput-object p4, p0, Lorg/catrobat/catroid/content/bricks/UserListBrick$1;->val$spriteUserList:Ljava/util/List;

    iput-object p5, p0, Lorg/catrobat/catroid/content/bricks/UserListBrick$1;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeButton()V
    .locals 2

    .line 124
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserListBrick$1;->this$0:Lorg/catrobat/catroid/content/bricks/UserListBrick;

    invoke-static {v0}, Lorg/catrobat/catroid/content/bricks/UserListBrick;->access$000(Lorg/catrobat/catroid/content/bricks/UserListBrick;)Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/UserListBrick$1;->this$0:Lorg/catrobat/catroid/content/bricks/UserListBrick;

    iget-object v1, v1, Lorg/catrobat/catroid/content/bricks/UserListBrick;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Lorg/catrobat/catroid/common/Nameable;)V

    .line 125
    return-void
.end method

.method public onPositiveButton(Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "textInput"    # Ljava/lang/String;

    .line 109
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-direct {v0, p2}, Lorg/catrobat/catroid/formulaeditor/UserList;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/UserListBrick$1;->val$userListDialog:Lorg/catrobat/catroid/utils/AddUserListDialog;

    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/UserListBrick$1;->val$projectUserList:Ljava/util/List;

    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/UserListBrick$1;->val$spriteUserList:Ljava/util/List;

    invoke-virtual {v1, p1, v0, v2, v3}, Lorg/catrobat/catroid/utils/AddUserListDialog;->addUserList(Landroid/content/DialogInterface;Lorg/catrobat/catroid/formulaeditor/UserList;Ljava/util/List;Ljava/util/List;)V

    .line 112
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/UserListBrick$1;->this$0:Lorg/catrobat/catroid/content/bricks/UserListBrick;

    invoke-static {v1}, Lorg/catrobat/catroid/content/bricks/UserListBrick;->access$000(Lorg/catrobat/catroid/content/bricks/UserListBrick;)Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->add(Lorg/catrobat/catroid/common/Nameable;)V

    .line 113
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/UserListBrick$1;->this$0:Lorg/catrobat/catroid/content/bricks/UserListBrick;

    invoke-static {v1}, Lorg/catrobat/catroid/content/bricks/UserListBrick;->access$000(Lorg/catrobat/catroid/content/bricks/UserListBrick;)Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Lorg/catrobat/catroid/common/Nameable;)V

    .line 115
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/UserListBrick$1;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 116
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    .line 117
    .local v1, "parentFragment":Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;
    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->notifyDataSetChanged()V

    .line 120
    :cond_0
    return-void
.end method
