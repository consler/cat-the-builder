.class public abstract Lorg/catrobat/catroid/content/bricks/UserListBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "UserListBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/content/bricks/FormulaBrick;",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener<",
        "Lorg/catrobat/catroid/formulaeditor/UserList;",
        ">;"
    }
.end annotation


# instance fields
.field private transient spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;"
        }
    .end annotation
.end field

.field protected userList:Lorg/catrobat/catroid/formulaeditor/UserList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/content/bricks/UserListBrick;)Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/content/bricks/UserListBrick;

    .line 49
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserListBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/UserListBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/catrobat/catroid/content/bricks/Brick;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 65
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/UserListBrick;

    .line 66
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/UserListBrick;
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/UserListBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    .line 67
    return-object v0
.end method

.method protected abstract getSpinnerId()I
.end method

.method public getUserList()Lorg/catrobat/catroid/formulaeditor/UserList;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserListBrick;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 77
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    .line 79
    .local v0, "sprite":Lorg/catrobat/catroid/content/Sprite;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/Nameable;>;"
    new-instance v2, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;

    const v3, 0x7f1205aa

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getUserLists()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getUserLists()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    new-instance v2, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/UserListBrick;->getSpinnerId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/content/bricks/UserListBrick;->view:Landroid/view/View;

    invoke-direct {v2, v3, v4, v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;-><init>(Ljava/lang/Integer;Landroid/view/View;Ljava/util/List;)V

    iput-object v2, p0, Lorg/catrobat/catroid/content/bricks/UserListBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    .line 85
    invoke-virtual {v2, p0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setOnItemSelectedListener(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;)V

    .line 86
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/UserListBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/UserListBrick;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Lorg/catrobat/catroid/common/Nameable;)V

    .line 88
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/UserListBrick;->view:Landroid/view/View;

    return-object v2
.end method

.method public onEditOptionSelected(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 131
    return-void
.end method

.method public bridge synthetic onItemSelected(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p2, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/UserListBrick;->onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/formulaeditor/UserList;)V

    return-void
.end method

.method public onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/formulaeditor/UserList;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "item"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 139
    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/UserListBrick;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 140
    return-void
.end method

.method public onNewOptionSelected(Ljava/lang/Integer;)V
    .locals 14
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 93
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserListBrick;->view:Landroid/view/View;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromView(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    .line 94
    .local v0, "activity":Landroidx/appcompat/app/AppCompatActivity;
    if-nez v0, :cond_0

    .line 95
    return-void

    .line 99
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getUserLists()Ljava/util/List;

    move-result-object v7

    .line 101
    .local v7, "projectUserList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserList;>;"
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getUserLists()Ljava/util/List;

    move-result-object v8

    .line 103
    .local v8, "spriteUserList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserList;>;"
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v9, v1

    .line 105
    .local v9, "builder":Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    new-instance v1, Lorg/catrobat/catroid/utils/AddUserListDialog;

    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/UserListBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    invoke-direct {v1, v9, v2}, Lorg/catrobat/catroid/utils/AddUserListDialog;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;)V

    move-object v10, v1

    .line 106
    .local v10, "userListDialog":Lorg/catrobat/catroid/utils/AddUserListDialog;
    const v1, 0x7f12022d

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v1, 0x7f1205ff

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lorg/catrobat/catroid/content/bricks/UserListBrick$1;

    move-object v1, v13

    move-object v2, p0

    move-object v3, v10

    move-object v4, v7

    move-object v5, v8

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/catroid/content/bricks/UserListBrick$1;-><init>(Lorg/catrobat/catroid/content/bricks/UserListBrick;Lorg/catrobat/catroid/utils/AddUserListDialog;Ljava/util/List;Ljava/util/List;Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v10, v11, v12, v13}, Lorg/catrobat/catroid/utils/AddUserListDialog;->show(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;)V

    .line 127
    return-void
.end method

.method public onStringOptionSelected(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "string"    # Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)V
    .locals 0
    .param p1, "userList"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 60
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/UserListBrick;->userList:Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 61
    return-void
.end method
