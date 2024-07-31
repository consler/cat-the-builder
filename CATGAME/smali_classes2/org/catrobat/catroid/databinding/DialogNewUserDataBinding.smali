.class public final Lorg/catrobat/catroid/databinding/DialogNewUserDataBinding;
.super Ljava/lang/Object;
.source "DialogNewUserDataBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final global:Landroid/widget/RadioButton;

.field public final input:Lcom/google/android/material/textfield/TextInputLayout;

.field public final inputEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field public final local:Landroid/widget/RadioButton;

.field public final makeList:Landroid/widget/CheckBox;

.field public final multiplayer:Landroid/widget/RadioButton;

.field public final radioGroup:Landroid/widget/RadioGroup;

.field private final rootView:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/RadioButton;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/RadioButton;Landroid/widget/CheckBox;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "global"    # Landroid/widget/RadioButton;
    .param p3, "input"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p4, "inputEditText"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p5, "local"    # Landroid/widget/RadioButton;
    .param p6, "makeList"    # Landroid/widget/CheckBox;
    .param p7, "multiplayer"    # Landroid/widget/RadioButton;
    .param p8, "radioGroup"    # Landroid/widget/RadioGroup;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/DialogNewUserDataBinding;->rootView:Landroid/widget/ScrollView;

    .line 51
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/DialogNewUserDataBinding;->global:Landroid/widget/RadioButton;

    .line 52
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/DialogNewUserDataBinding;->input:Lcom/google/android/material/textfield/TextInputLayout;

    .line 53
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/DialogNewUserDataBinding;->inputEditText:Lcom/google/android/material/textfield/TextInputEditText;

    .line 54
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/DialogNewUserDataBinding;->local:Landroid/widget/RadioButton;

    .line 55
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/DialogNewUserDataBinding;->makeList:Landroid/widget/CheckBox;

    .line 56
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/DialogNewUserDataBinding;->multiplayer:Landroid/widget/RadioButton;

    .line 57
    iput-object p8, p0, Lorg/catrobat/catroid/databinding/DialogNewUserDataBinding;->radioGroup:Landroid/widget/RadioGroup;

    .line 58
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/DialogNewUserDataBinding;
    .locals 19
    .param p0, "rootView"    # Landroid/view/View;

    .line 87
    move-object/from16 v0, p0

    const v1, 0x7f0a03ca

    .line 88
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 89
    .local v2, "global":Landroid/widget/RadioButton;
    if-eqz v2, :cond_6

    .line 93
    const v1, 0x7f0a03ea

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/google/android/material/textfield/TextInputLayout;

    .line 95
    .local v12, "input":Lcom/google/android/material/textfield/TextInputLayout;
    if-eqz v12, :cond_5

    .line 99
    const v1, 0x7f0a03ec

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/google/android/material/textfield/TextInputEditText;

    .line 101
    .local v13, "inputEditText":Lcom/google/android/material/textfield/TextInputEditText;
    if-eqz v13, :cond_4

    .line 105
    const v1, 0x7f0a0411

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/RadioButton;

    .line 107
    .local v14, "local":Landroid/widget/RadioButton;
    if-eqz v14, :cond_3

    .line 111
    const v1, 0x7f0a0412

    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/CheckBox;

    .line 113
    .local v15, "makeList":Landroid/widget/CheckBox;
    if-eqz v15, :cond_2

    .line 117
    const v1, 0x7f0a0478

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/RadioButton;

    .line 119
    .local v16, "multiplayer":Landroid/widget/RadioButton;
    if-eqz v16, :cond_1

    .line 123
    const v1, 0x7f0a0568

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/RadioGroup;

    .line 125
    .local v17, "radioGroup":Landroid/widget/RadioGroup;
    if-eqz v17, :cond_0

    .line 129
    new-instance v18, Lorg/catrobat/catroid/databinding/DialogNewUserDataBinding;

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

    invoke-direct/range {v3 .. v11}, Lorg/catrobat/catroid/databinding/DialogNewUserDataBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/RadioButton;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/RadioButton;Landroid/widget/CheckBox;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;)V

    return-object v18

    .line 126
    :cond_0
    goto :goto_0

    .line 120
    .end local v17    # "radioGroup":Landroid/widget/RadioGroup;
    :cond_1
    goto :goto_0

    .line 114
    .end local v16    # "multiplayer":Landroid/widget/RadioButton;
    :cond_2
    goto :goto_0

    .line 108
    .end local v15    # "makeList":Landroid/widget/CheckBox;
    :cond_3
    goto :goto_0

    .line 102
    .end local v14    # "local":Landroid/widget/RadioButton;
    :cond_4
    goto :goto_0

    .line 96
    .end local v13    # "inputEditText":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_5
    goto :goto_0

    .line 90
    .end local v12    # "input":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_6
    nop

    .line 132
    .end local v2    # "global":Landroid/widget/RadioButton;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/DialogNewUserDataBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/DialogNewUserDataBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/DialogNewUserDataBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/DialogNewUserDataBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 74
    const v0, 0x7f0d0137

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/DialogNewUserDataBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/DialogNewUserDataBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/DialogNewUserDataBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/DialogNewUserDataBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
