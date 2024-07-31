.class public Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ReplaceExistingProjectDialogFragment.java"


# static fields
.field public static final BUNDLE_KEY_DOWNLOADER:Ljava/lang/String; = "downloader"

.field public static final BUNDLE_KEY_PROGRAM_NAME:Ljava/lang/String; = "programName"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Lorg/catrobat/catroid/web/ProjectDownloader;)Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;
    .locals 3
    .param p0, "programName"    # Ljava/lang/String;
    .param p1, "downloader"    # Lorg/catrobat/catroid/web/ProjectDownloader;

    .line 58
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;-><init>()V

    .line 60
    .local v0, "dialog":Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "programName"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v2, "downloader"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 63
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    return-object v0
.end method

.method public static projectExistsInDirectory(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "projectName"    # Ljava/lang/String;

    .line 69
    invoke-static {p0}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->encodeSpecialCharsForFileSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "projectDirectoryName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v2, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public synthetic lambda$onCreateDialog$0$ReplaceExistingProjectDialogFragment(Landroid/widget/RadioGroup;Lorg/catrobat/catroid/web/ProjectDownloader;Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 4
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "downloader"    # Lorg/catrobat/catroid/web/ProjectDownloader;
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "textInput"    # Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 97
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 98
    return-void

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 111
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Cannot find RadioButton."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :pswitch_0
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ProjectManager;->setCurrentProject(Lorg/catrobat/catroid/content/Project;)V

    .line 108
    invoke-virtual {p2, v0, p4}, Lorg/catrobat/catroid/web/ProjectDownloader;->downloadOverwriteExistingProject(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    goto :goto_0

    .line 103
    :pswitch_1
    invoke-virtual {p2, v0, p4}, Lorg/catrobat/catroid/web/ProjectDownloader;->downloadOverwriteExistingProject(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    nop

    .line 113
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a0577
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$onCreateDialog$1$ReplaceExistingProjectDialogFragment(Lcom/google/android/material/textfield/TextInputLayout;Landroidx/appcompat/app/AlertDialog;Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;Landroid/widget/RadioGroup;I)V
    .locals 5
    .param p1, "inputLayout"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p2, "alertDialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p3, "textWatcher"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;
    .param p4, "group"    # Landroid/widget/RadioGroup;
    .param p5, "checkedId"    # I

    .line 122
    const/4 v0, 0x1

    const/4 v1, -0x1

    packed-switch p5, :pswitch_data_0

    goto :goto_1

    .line 124
    :pswitch_0
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 125
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v2}, Lorg/catrobat/catroid/ui/ViewUtils;->hideKeyboard(Landroid/view/View;)V

    .line 126
    invoke-virtual {p2, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 127
    goto :goto_1

    .line 129
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 130
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v3}, Lorg/catrobat/catroid/ui/ViewUtils;->showKeyboard(Landroid/view/View;)V

    .line 131
    invoke-virtual {p2, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 132
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;->validateInput(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 135
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0577
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 76
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "programName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "programName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "downloader"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/web/ProjectDownloader;

    .line 79
    .local v1, "downloader":Lorg/catrobat/catroid/web/ProjectDownloader;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0d0139

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 81
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0a03ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    .line 82
    .local v3, "inputLayout":Lcom/google/android/material/textfield/TextInputLayout;
    const v5, 0x7f0a0568

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    .line 84
    .local v5, "radioGroup":Landroid/widget/RadioGroup;
    new-instance v6, Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment$1;

    invoke-direct {v6, p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;)V

    .line 92
    .local v6, "textWatcher":Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;
    new-instance v7, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {v7, v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setText(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v7

    .line 94
    invoke-virtual {v7, v6}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTextWatcher(Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v7

    .line 95
    const v8, 0x7f1205ff

    invoke-virtual {p0, v8}, Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$ReplaceExistingProjectDialogFragment$CRCbVPydxvBjiO32ah_ZPJYdUfQ;

    invoke-direct {v9, p0, v5, v1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$ReplaceExistingProjectDialogFragment$CRCbVPydxvBjiO32ah_ZPJYdUfQ;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;Landroid/widget/RadioGroup;Lorg/catrobat/catroid/web/ProjectDownloader;)V

    invoke-virtual {v7, v8, v9}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setPositiveButton(Ljava/lang/String;Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v7

    .line 115
    .local v7, "builder":Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    nop

    .line 116
    const v8, 0x7f120609

    invoke-virtual {v7, v8}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v8

    .line 117
    invoke-virtual {v8, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v8

    .line 118
    const v9, 0x7f1205c9

    invoke-virtual {v8, v9, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    .line 119
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v4

    .line 121
    .local v4, "alertDialog":Landroidx/appcompat/app/AlertDialog;
    new-instance v8, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$ReplaceExistingProjectDialogFragment$pMmY55gKd56xNsebeZdEQHnPhAI;

    invoke-direct {v8, p0, v3, v4, v6}, Lorg/catrobat/catroid/ui/recyclerview/dialog/-$$Lambda$ReplaceExistingProjectDialogFragment$pMmY55gKd56xNsebeZdEQHnPhAI;-><init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;Lcom/google/android/material/textfield/TextInputLayout;Landroidx/appcompat/app/AlertDialog;Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;)V

    invoke-virtual {v5, v8}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 137
    return-object v4
.end method
