.class public Lorg/catrobat/catroid/utils/AddUserListDialog;
.super Ljava/lang/Object;
.source "AddUserListDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;
    }
.end annotation


# instance fields
.field private builder:Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

.field private existingUserLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;"
        }
    .end annotation
.end field

.field private spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;)V
    .locals 1
    .param p1, "builder"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/catrobat/catroid/utils/AddUserListDialog;->builder:Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/utils/AddUserListDialog;->existingUserLists:Ljava/util/List;

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;)V
    .locals 1
    .param p1, "builder"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;",
            "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p2, "spinner":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<Lorg/catrobat/catroid/formulaeditor/UserList;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/catrobat/catroid/utils/AddUserListDialog;->builder:Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    .line 47
    iput-object p2, p0, Lorg/catrobat/catroid/utils/AddUserListDialog;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    .line 48
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->getItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/utils/AddUserListDialog;->existingUserLists:Ljava/util/List;

    .line 49
    return-void
.end method

.method static synthetic lambda$show$0(Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "callback"    # Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "index"    # I

    .line 67
    invoke-interface {p0}, Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;->onNegativeButton()V

    return-void
.end method

.method static synthetic lambda$show$1(Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;Landroid/content/DialogInterface;)V
    .locals 0
    .param p0, "callback"    # Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 69
    invoke-interface {p0}, Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;->onNegativeButton()V

    return-void
.end method


# virtual methods
.method public addUserList(Landroid/content/DialogInterface;Lorg/catrobat/catroid/formulaeditor/UserList;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "userList"    # Lorg/catrobat/catroid/formulaeditor/UserList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p3, "projectUserList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserList;>;"
    .local p4, "spriteUserList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserList;>;"
    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    const v1, 0x7f0a03ca

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 77
    .local v0, "addToProjectListsRadioButton":Landroid/widget/RadioButton;
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    .line 78
    .local v1, "addToProjectLists":Z
    if-eqz v1, :cond_0

    .line 79
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_0
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :goto_0
    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;)V
    .locals 5
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "ok"    # Ljava/lang/String;
    .param p3, "callback"    # Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;

    .line 57
    iget-object v0, p0, Lorg/catrobat/catroid/utils/AddUserListDialog;->builder:Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    const v1, 0x7f120241

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->createUniqueNameProvider(I)Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    move-result-object v0

    .line 58
    .local v0, "uniqueNameProvider":Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;
    iget-object v2, p0, Lorg/catrobat/catroid/utils/AddUserListDialog;->builder:Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lorg/catrobat/catroid/utils/AddUserListDialog;->builder:Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    invoke-virtual {v2, p1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setHint(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v2

    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;

    iget-object v4, p0, Lorg/catrobat/catroid/utils/AddUserListDialog;->existingUserLists:Ljava/util/List;

    invoke-direct {v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;-><init>(Ljava/util/List;)V

    .line 60
    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTextWatcher(Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v2

    .line 61
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setText(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/catrobat/catroid/utils/-$$Lambda$NMIuU-JEx3kSNaEQtnhcgqm6HAo;

    invoke-direct {v3, p3}, Lorg/catrobat/catroid/utils/-$$Lambda$NMIuU-JEx3kSNaEQtnhcgqm6HAo;-><init>(Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;)V

    .line 62
    invoke-virtual {v2, p2, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setPositiveButton(Ljava/lang/String;Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v2

    .line 64
    const v3, 0x7f1203e8

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 65
    const v3, 0x7f0d0137

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lorg/catrobat/catroid/utils/-$$Lambda$AddUserListDialog$T-rhAAdd1IwEublC7c53fsHowS4;

    invoke-direct {v3, p3}, Lorg/catrobat/catroid/utils/-$$Lambda$AddUserListDialog$T-rhAAdd1IwEublC7c53fsHowS4;-><init>(Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;)V

    .line 66
    const v4, 0x7f1201b8

    invoke-virtual {v2, v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 68
    iget-object v2, p0, Lorg/catrobat/catroid/utils/AddUserListDialog;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lorg/catrobat/catroid/utils/AddUserListDialog;->builder:Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    new-instance v3, Lorg/catrobat/catroid/utils/-$$Lambda$AddUserListDialog$dVRU12ZkfKI4ZOy8VWtuyVod61M;

    invoke-direct {v3, p3}, Lorg/catrobat/catroid/utils/-$$Lambda$AddUserListDialog$dVRU12ZkfKI4ZOy8VWtuyVod61M;-><init>(Lorg/catrobat/catroid/utils/AddUserListDialog$Callback;)V

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 71
    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/utils/AddUserListDialog;->builder:Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 72
    return-void
.end method
