.class public Lorg/catrobat/catroid/content/bricks/brickspinner/UserVariableBrickTextInputDialogBuilder;
.super Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
.source "UserVariableBrickTextInputDialogBuilder.java"


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/formulaeditor/UserVariable;Landroidx/appcompat/app/AppCompatActivity;Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;)V
    .locals 16
    .param p1, "project"    # Lorg/catrobat/catroid/content/Project;
    .param p2, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p3, "currentUserVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .param p4, "activity"    # Landroidx/appcompat/app/AppCompatActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/Project;",
            "Lorg/catrobat/catroid/content/Sprite;",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p5, "spinner":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<Lorg/catrobat/catroid/formulaeditor/UserVariable;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct {v0, v8}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    const v2, 0x7f0d0137

    const/4 v10, 0x0

    invoke-static {v8, v2, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 48
    .local v11, "dialogView":Landroid/view/View;
    const v2, 0x7f0a0478

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/RadioButton;

    .line 49
    .local v12, "multiplayerRadioButton":Landroid/widget/RadioButton;
    invoke-virtual/range {p4 .. p4}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->isMultiplayerVariablesPreferenceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 52
    :cond_0
    invoke-virtual {v0, v11}, Lorg/catrobat/catroid/content/bricks/brickspinner/UserVariableBrickTextInputDialogBuilder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 54
    const v2, 0x7f12022d

    invoke-virtual {v8, v2}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/UserVariableBrickTextInputDialogBuilder;->setHint(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v2

    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;

    .line 55
    invoke-virtual/range {p5 .. p5}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTextWatcher(Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v13

    const v2, 0x7f1205ff

    .line 56
    invoke-virtual {v8, v2}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lorg/catrobat/catroid/content/bricks/brickspinner/-$$Lambda$UserVariableBrickTextInputDialogBuilder$0s_WBnUfmvWn-2xSxcMQGAH8vyo;

    move-object v2, v15

    move-object v3, v12

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/catrobat/catroid/content/bricks/brickspinner/-$$Lambda$UserVariableBrickTextInputDialogBuilder$0s_WBnUfmvWn-2xSxcMQGAH8vyo;-><init>(Landroid/widget/RadioButton;Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v13, v14, v15}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setPositiveButton(Ljava/lang/String;Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    .line 80
    const v2, 0x7f1204b3

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/UserVariableBrickTextInputDialogBuilder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 81
    const v2, 0x7f120253

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/UserVariableBrickTextInputDialogBuilder;->createUniqueNameProvider(I)Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    move-result-object v3

    .line 82
    .local v3, "uniqueNameProvider":Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;
    invoke-virtual {v8, v2}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v10}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/UserVariableBrickTextInputDialogBuilder;->setText(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    .line 84
    const v2, 0x7f1201b8

    new-instance v4, Lorg/catrobat/catroid/content/bricks/brickspinner/-$$Lambda$UserVariableBrickTextInputDialogBuilder$Ge1aUAoHOhgsnOnqbiagG7MS-a0;

    invoke-direct {v4, v9, v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/-$$Lambda$UserVariableBrickTextInputDialogBuilder$Ge1aUAoHOhgsnOnqbiagG7MS-a0;-><init>(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;Lorg/catrobat/catroid/formulaeditor/UserVariable;)V

    invoke-virtual {v0, v2, v4}, Lorg/catrobat/catroid/content/bricks/brickspinner/UserVariableBrickTextInputDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 85
    new-instance v2, Lorg/catrobat/catroid/content/bricks/brickspinner/-$$Lambda$UserVariableBrickTextInputDialogBuilder$fQNwLj8CP0QqIjtW8KpSqOY97IA;

    invoke-direct {v2, v9, v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/-$$Lambda$UserVariableBrickTextInputDialogBuilder$fQNwLj8CP0QqIjtW8KpSqOY97IA;-><init>(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;Lorg/catrobat/catroid/formulaeditor/UserVariable;)V

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/UserVariableBrickTextInputDialogBuilder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 86
    return-void
.end method

.method static synthetic lambda$new$0(Landroid/widget/RadioButton;Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;Landroidx/appcompat/app/AppCompatActivity;Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 6
    .param p0, "multiplayerRadioButton"    # Landroid/widget/RadioButton;
    .param p1, "project"    # Lorg/catrobat/catroid/content/Project;
    .param p2, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p3, "spinner"    # Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;
    .param p4, "activity"    # Landroidx/appcompat/app/AppCompatActivity;
    .param p5, "dialog"    # Landroid/content/DialogInterface;
    .param p6, "textInput"    # Ljava/lang/String;

    .line 57
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-direct {v0, p6}, Lorg/catrobat/catroid/formulaeditor/UserVariable;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    move-object v1, p5

    check-cast v1, Landroid/app/Dialog;

    const v2, 0x7f0a03ca

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 60
    .local v1, "addToProjectVariablesRadioButton":Landroid/widget/RadioButton;
    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    .line 61
    .local v2, "addToProjectVariables":Z
    invoke-virtual {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    .line 63
    .local v3, "addToMultiplayerVariables":Z
    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/Project;->addUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)Z

    goto :goto_0

    .line 65
    :cond_0
    if-eqz v3, :cond_1

    .line 66
    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/Project;->addMultiplayerVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)Z

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/Sprite;->addUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)Z

    .line 70
    :goto_0
    invoke-virtual {p3, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->add(Lorg/catrobat/catroid/common/Nameable;)V

    .line 71
    invoke-virtual {p3, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Lorg/catrobat/catroid/common/Nameable;)V

    .line 73
    nop

    .line 74
    invoke-virtual {p4}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    sget-object v5, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    .line 75
    .local v4, "parentFragment":Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;
    if-eqz v4, :cond_2

    .line 76
    invoke-virtual {v4}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->notifyDataSetChanged()V

    .line 78
    :cond_2
    return-void
.end method

.method static synthetic lambda$new$1(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;Lorg/catrobat/catroid/formulaeditor/UserVariable;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "spinner"    # Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;
    .param p1, "currentUserVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 84
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Lorg/catrobat/catroid/common/Nameable;)V

    return-void
.end method

.method static synthetic lambda$new$2(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;Lorg/catrobat/catroid/formulaeditor/UserVariable;Landroid/content/DialogInterface;)V
    .locals 0
    .param p0, "spinner"    # Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;
    .param p1, "currentUserVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .line 85
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Lorg/catrobat/catroid/common/Nameable;)V

    return-void
.end method
