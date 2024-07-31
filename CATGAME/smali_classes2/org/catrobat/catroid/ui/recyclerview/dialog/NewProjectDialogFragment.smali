.class public Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "NewProjectDialogFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private castProject:Z

.field private exampleProject:Z

.field private landscape:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method createProject(Ljava/lang/String;ZZZ)V
    .locals 4
    .param p1, "projectName"    # Ljava/lang/String;
    .param p2, "landscape"    # Z
    .param p3, "exampleProject"    # Z
    .param p4, "castProject"    # Z

    .line 105
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 106
    if-eqz p4, :cond_0

    .line 107
    :try_start_0
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    .line 108
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;->PROJECT_CREATOR_CAST:Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;

    invoke-virtual {v1, p1, v2, v3, v0}, Lorg/catrobat/catroid/ProjectManager;->createNewExampleProject(Ljava/lang/String;Landroid/content/Context;Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;Z)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;->PROJECT_CREATOR_DEFAULT:Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;

    invoke-virtual {v0, p1, v1, v2, p2}, Lorg/catrobat/catroid/ProjectManager;->createNewExampleProject(Ljava/lang/String;Landroid/content/Context;Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;Z)V

    goto :goto_0

    .line 114
    :cond_1
    if-eqz p4, :cond_2

    .line 115
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    .line 116
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v0, v3}, Lorg/catrobat/catroid/ProjectManager;->createNewEmptyProject(Ljava/lang/String;Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    .line 119
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2, v0}, Lorg/catrobat/catroid/ProjectManager;->createNewEmptyProject(Ljava/lang/String;Landroid/content/Context;ZZ)V

    .line 122
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lorg/catrobat/catroid/ui/ProjectActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1202eb

    invoke-static {v1, v2}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 126
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method public synthetic lambda$onCreateDialog$0$NewProjectDialogFragment(Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/widget/RadioGroup;Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 3
    .param p1, "exampleProjectSwitch"    # Lcom/google/android/material/switchmaterial/SwitchMaterial;
    .param p2, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "textInput"    # Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->exampleProject:Z

    .line 79
    invoke-virtual {p2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0a02e5

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a03fa

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0547

    if-ne v0, v1, :cond_0

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->landscape:Z

    .line 82
    goto :goto_0

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": No radio button id match, check layout?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    iput-boolean v2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->landscape:Z

    .line 85
    goto :goto_0

    .line 87
    :cond_2
    iput-boolean v2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->castProject:Z

    .line 88
    nop

    .line 93
    :goto_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->landscape:Z

    iget-boolean v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->exampleProject:Z

    iget-boolean v2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->castProject:Z

    invoke-virtual {p0, p4, v0, v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->createProject(Ljava/lang/String;ZZZ)V

    .line 94
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 58
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0134

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a0568

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 61
    .local v1, "radioGroup":Landroid/widget/RadioGroup;
    const v3, 0x7f0a037a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 63
    .local v3, "exampleProjectSwitch":Lcom/google/android/material/switchmaterial/SwitchMaterial;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->isCastSharedPreferenceEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    const v4, 0x7f0a02e5

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 66
    :cond_0
    new-instance v4, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment$1;

    invoke-direct {v4, p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;)V

    .line 72
    .local v4, "uniqueNameProvider":Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;
    new-instance v5, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f1206e7

    .line 73
    invoke-virtual {p0, v6}, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setHint(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v5

    const v6, 0x7f120247

    .line 74
    invoke-virtual {p0, v6}, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v2}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setText(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v5

    new-instance v6, Lorg/catrobat/catroid/merge/NewProjectNameTextWatcher;

    invoke-direct {v6}, Lorg/catrobat/catroid/merge/NewProjectNameTextWatcher;-><init>()V

    .line 75
    invoke-virtual {v5, v6}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTextWatcher(Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v5

    const v6, 0x7f1205ff

    .line 76
    invoke-virtual {p0, v6}, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$NewProjectDialogFragment$daMSN0XLU5aecQcTWFILSd4n0iA;

    invoke-direct {v7, p0, v3, v1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$NewProjectDialogFragment$daMSN0XLU5aecQcTWFILSd4n0iA;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/NewProjectDialogFragment;Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/widget/RadioGroup;)V

    invoke-virtual {v5, v6, v7}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setPositiveButton(Ljava/lang/String;Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v5

    .line 96
    .local v5, "builder":Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    nop

    .line 97
    invoke-virtual {v5, v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f1201b8

    .line 98
    invoke-virtual {v6, v7, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    .line 96
    return-object v2
.end method
