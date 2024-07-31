.class Lorg/catrobat/catroid/content/bricks/UserDataBrick$1;
.super Ljava/lang/Object;
.source "UserDataBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/content/bricks/UserDataBrick;->onNewOptionSelected(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/content/bricks/UserDataBrick;

.field final synthetic val$activity:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic val$brickData:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

.field final synthetic val$currentProject:Lorg/catrobat/catroid/content/Project;

.field final synthetic val$currentSprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/content/bricks/UserDataBrick;Lorg/catrobat/catroid/content/bricks/Brick$BrickData;Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/content/bricks/UserDataBrick;

    .line 176
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick$1;->this$0:Lorg/catrobat/catroid/content/bricks/UserDataBrick;

    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick$1;->val$brickData:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    iput-object p3, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick$1;->val$currentProject:Lorg/catrobat/catroid/content/Project;

    iput-object p4, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick$1;->val$currentSprite:Lorg/catrobat/catroid/content/Sprite;

    iput-object p5, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick$1;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveButtonClick(Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "textInput"    # Ljava/lang/String;

    .line 180
    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    const v1, 0x7f0a03ca

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 181
    .local v0, "addToProjectListsRadioButton":Landroid/widget/RadioButton;
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    .line 182
    .local v1, "addToProjectData":Z
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick$1;->val$brickData:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    invoke-static {v2}, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->isUserList(Lorg/catrobat/catroid/content/bricks/Brick$BrickData;)Z

    move-result v2

    .line 184
    .local v2, "isUserList":Z
    if-eqz v2, :cond_1

    .line 185
    new-instance v3, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-direct {v3, p2}, Lorg/catrobat/catroid/formulaeditor/UserList;-><init>(Ljava/lang/String;)V

    .line 186
    .local v3, "userData":Lorg/catrobat/catroid/formulaeditor/UserData;
    if-eqz v1, :cond_0

    .line 187
    iget-object v4, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick$1;->val$currentProject:Lorg/catrobat/catroid/content/Project;

    move-object v5, v3

    check-cast v5, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/content/Project;->addUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)Z

    goto :goto_0

    .line 189
    :cond_0
    iget-object v4, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick$1;->val$currentSprite:Lorg/catrobat/catroid/content/Sprite;

    move-object v5, v3

    check-cast v5, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/content/Sprite;->addUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)Z

    goto :goto_0

    .line 192
    .end local v3    # "userData":Lorg/catrobat/catroid/formulaeditor/UserData;
    :cond_1
    new-instance v3, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-direct {v3, p2}, Lorg/catrobat/catroid/formulaeditor/UserVariable;-><init>(Ljava/lang/String;)V

    .line 193
    .restart local v3    # "userData":Lorg/catrobat/catroid/formulaeditor/UserData;
    if-eqz v1, :cond_2

    .line 194
    iget-object v4, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick$1;->val$currentProject:Lorg/catrobat/catroid/content/Project;

    move-object v5, v3

    check-cast v5, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/content/Project;->addUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)Z

    goto :goto_0

    .line 196
    :cond_2
    iget-object v4, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick$1;->val$currentSprite:Lorg/catrobat/catroid/content/Sprite;

    move-object v5, v3

    check-cast v5, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/content/Sprite;->addUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)Z

    .line 201
    :goto_0
    iget-object v4, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick$1;->this$0:Lorg/catrobat/catroid/content/bricks/UserDataBrick;

    invoke-static {v4}, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->access$000(Lorg/catrobat/catroid/content/bricks/UserDataBrick;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 202
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/catrobat/catroid/content/bricks/Brick$BrickData;Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<Lorg/catrobat/catroid/formulaeditor/UserData;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    invoke-static {v6}, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->isUserList(Lorg/catrobat/catroid/content/bricks/Brick$BrickData;)Z

    move-result v6

    if-ne v6, v2, :cond_3

    .line 203
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    invoke-virtual {v6, v3}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->add(Lorg/catrobat/catroid/common/Nameable;)V

    .line 205
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/catrobat/catroid/content/bricks/Brick$BrickData;Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<Lorg/catrobat/catroid/formulaeditor/UserData;>;>;"
    :cond_3
    goto :goto_1

    .line 207
    :cond_4
    iget-object v4, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick$1;->this$0:Lorg/catrobat/catroid/content/bricks/UserDataBrick;

    invoke-static {v4}, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->access$000(Lorg/catrobat/catroid/content/bricks/UserDataBrick;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick$1;->val$brickData:Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    invoke-virtual {v4, v3}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Lorg/catrobat/catroid/common/Nameable;)V

    .line 209
    iget-object v4, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick$1;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 210
    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    sget-object v5, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    .line 211
    .local v4, "parentFragment":Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;
    if-eqz v4, :cond_5

    .line 212
    invoke-virtual {v4}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->notifyDataSetChanged()V

    .line 214
    :cond_5
    return-void
.end method
