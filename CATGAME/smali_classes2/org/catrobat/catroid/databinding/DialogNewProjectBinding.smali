.class public final Lorg/catrobat/catroid/databinding/DialogNewProjectBinding;
.super Ljava/lang/Object;
.source "DialogNewProjectBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final castRadioButton:Landroid/widget/RadioButton;

.field public final exampleProjectSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

.field public final input:Lcom/google/android/material/textfield/TextInputLayout;

.field public final inputEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field public final landscapeModeRadioButton:Landroid/widget/RadioButton;

.field public final portraitRadioButton:Landroid/widget/RadioButton;

.field public final radioGroup:Landroid/widget/RadioGroup;

.field private final rootView:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/RadioButton;Lcom/google/android/material/switchmaterial/SwitchMaterial;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "castRadioButton"    # Landroid/widget/RadioButton;
    .param p3, "exampleProjectSwitch"    # Lcom/google/android/material/switchmaterial/SwitchMaterial;
    .param p4, "input"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p5, "inputEditText"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p6, "landscapeModeRadioButton"    # Landroid/widget/RadioButton;
    .param p7, "portraitRadioButton"    # Landroid/widget/RadioButton;
    .param p8, "radioGroup"    # Landroid/widget/RadioGroup;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/DialogNewProjectBinding;->rootView:Landroid/widget/ScrollView;

    .line 52
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/DialogNewProjectBinding;->castRadioButton:Landroid/widget/RadioButton;

    .line 53
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/DialogNewProjectBinding;->exampleProjectSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 54
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/DialogNewProjectBinding;->input:Lcom/google/android/material/textfield/TextInputLayout;

    .line 55
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/DialogNewProjectBinding;->inputEditText:Lcom/google/android/material/textfield/TextInputEditText;

    .line 56
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/DialogNewProjectBinding;->landscapeModeRadioButton:Landroid/widget/RadioButton;

    .line 57
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/DialogNewProjectBinding;->portraitRadioButton:Landroid/widget/RadioButton;

    .line 58
    iput-object p8, p0, Lorg/catrobat/catroid/databinding/DialogNewProjectBinding;->radioGroup:Landroid/widget/RadioGroup;

    .line 59
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/DialogNewProjectBinding;
    .locals 19
    .param p0, "rootView"    # Landroid/view/View;

    .line 88
    move-object/from16 v0, p0

    const v1, 0x7f0a02e5

    .line 89
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 90
    .local v2, "castRadioButton":Landroid/widget/RadioButton;
    if-eqz v2, :cond_6

    .line 94
    const v1, 0x7f0a037a

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 96
    .local v12, "exampleProjectSwitch":Lcom/google/android/material/switchmaterial/SwitchMaterial;
    if-eqz v12, :cond_5

    .line 100
    const v1, 0x7f0a03ea

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/google/android/material/textfield/TextInputLayout;

    .line 102
    .local v13, "input":Lcom/google/android/material/textfield/TextInputLayout;
    if-eqz v13, :cond_4

    .line 106
    const v1, 0x7f0a03ec

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/google/android/material/textfield/TextInputEditText;

    .line 108
    .local v14, "inputEditText":Lcom/google/android/material/textfield/TextInputEditText;
    if-eqz v14, :cond_3

    .line 112
    const v1, 0x7f0a03fa

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/RadioButton;

    .line 114
    .local v15, "landscapeModeRadioButton":Landroid/widget/RadioButton;
    if-eqz v15, :cond_2

    .line 118
    const v1, 0x7f0a0547

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/RadioButton;

    .line 120
    .local v16, "portraitRadioButton":Landroid/widget/RadioButton;
    if-eqz v16, :cond_1

    .line 124
    const v1, 0x7f0a0568

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/RadioGroup;

    .line 126
    .local v17, "radioGroup":Landroid/widget/RadioGroup;
    if-eqz v17, :cond_0

    .line 130
    new-instance v18, Lorg/catrobat/catroid/databinding/DialogNewProjectBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    move-object/from16 v3, v18

    move-object v5, v2

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    invoke-direct/range {v3 .. v11}, Lorg/catrobat/catroid/databinding/DialogNewProjectBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/RadioButton;Lcom/google/android/material/switchmaterial/SwitchMaterial;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;)V

    return-object v18

    .line 127
    :cond_0
    goto :goto_0

    .line 121
    .end local v17    # "radioGroup":Landroid/widget/RadioGroup;
    :cond_1
    goto :goto_0

    .line 115
    .end local v16    # "portraitRadioButton":Landroid/widget/RadioButton;
    :cond_2
    goto :goto_0

    .line 109
    .end local v15    # "landscapeModeRadioButton":Landroid/widget/RadioButton;
    :cond_3
    goto :goto_0

    .line 103
    .end local v14    # "inputEditText":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_4
    goto :goto_0

    .line 97
    .end local v13    # "input":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_5
    goto :goto_0

    .line 91
    .end local v12    # "exampleProjectSwitch":Lcom/google/android/material/switchmaterial/SwitchMaterial;
    :cond_6
    nop

    .line 134
    .end local v2    # "castRadioButton":Landroid/widget/RadioButton;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/DialogNewProjectBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/DialogNewProjectBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/DialogNewProjectBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/DialogNewProjectBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 75
    const v0, 0x7f0d0134

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/DialogNewProjectBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/DialogNewProjectBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/DialogNewProjectBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/DialogNewProjectBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
