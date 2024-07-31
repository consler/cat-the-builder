.class public final Lorg/catrobat/catroid/databinding/DialogRegisterBinding;
.super Ljava/lang/Object;
.source "DialogRegisterBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dialogRegisterEmail:Lcom/google/android/material/textfield/TextInputLayout;

.field public final dialogRegisterPassword:Lcom/google/android/material/textfield/TextInputLayout;

.field public final dialogRegisterPasswordConfirm:Lcom/google/android/material/textfield/TextInputLayout;

.field public final dialogRegisterUsername:Lcom/google/android/material/textfield/TextInputLayout;

.field private final rootView:Landroid/widget/ScrollView;

.field public final showPassword:Landroid/widget/CheckBox;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "dialogRegisterEmail"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p3, "dialogRegisterPassword"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p4, "dialogRegisterPasswordConfirm"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p5, "dialogRegisterUsername"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p6, "showPassword"    # Landroid/widget/CheckBox;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/DialogRegisterBinding;->rootView:Landroid/widget/ScrollView;

    .line 42
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/DialogRegisterBinding;->dialogRegisterEmail:Lcom/google/android/material/textfield/TextInputLayout;

    .line 43
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/DialogRegisterBinding;->dialogRegisterPassword:Lcom/google/android/material/textfield/TextInputLayout;

    .line 44
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/DialogRegisterBinding;->dialogRegisterPasswordConfirm:Lcom/google/android/material/textfield/TextInputLayout;

    .line 45
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/DialogRegisterBinding;->dialogRegisterUsername:Lcom/google/android/material/textfield/TextInputLayout;

    .line 46
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/DialogRegisterBinding;->showPassword:Landroid/widget/CheckBox;

    .line 47
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/DialogRegisterBinding;
    .locals 14
    .param p0, "rootView"    # Landroid/view/View;

    .line 76
    const v0, 0x7f0a0357

    .line 77
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 78
    .local v1, "dialogRegisterEmail":Lcom/google/android/material/textfield/TextInputLayout;
    if-eqz v1, :cond_4

    .line 82
    const v0, 0x7f0a0358

    .line 83
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/material/textfield/TextInputLayout;

    .line 84
    .local v9, "dialogRegisterPassword":Lcom/google/android/material/textfield/TextInputLayout;
    if-eqz v9, :cond_3

    .line 88
    const v0, 0x7f0a0359

    .line 89
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/material/textfield/TextInputLayout;

    .line 90
    .local v10, "dialogRegisterPasswordConfirm":Lcom/google/android/material/textfield/TextInputLayout;
    if-eqz v10, :cond_2

    .line 94
    const v0, 0x7f0a035a

    .line 95
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/google/android/material/textfield/TextInputLayout;

    .line 96
    .local v11, "dialogRegisterUsername":Lcom/google/android/material/textfield/TextInputLayout;
    if-eqz v11, :cond_1

    .line 100
    const v0, 0x7f0a05b1

    .line 101
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/CheckBox;

    .line 102
    .local v12, "showPassword":Landroid/widget/CheckBox;
    if-eqz v12, :cond_0

    .line 106
    new-instance v13, Lorg/catrobat/catroid/databinding/DialogRegisterBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/ScrollView;

    move-object v2, v13

    move-object v4, v1

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lorg/catrobat/catroid/databinding/DialogRegisterBinding;-><init>(Landroid/widget/ScrollView;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/CheckBox;)V

    return-object v13

    .line 103
    :cond_0
    goto :goto_0

    .line 97
    .end local v12    # "showPassword":Landroid/widget/CheckBox;
    :cond_1
    goto :goto_0

    .line 91
    .end local v11    # "dialogRegisterUsername":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_2
    goto :goto_0

    .line 85
    .end local v10    # "dialogRegisterPasswordConfirm":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_3
    goto :goto_0

    .line 79
    .end local v9    # "dialogRegisterPassword":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_4
    nop

    .line 110
    .end local v1    # "dialogRegisterEmail":Lcom/google/android/material/textfield/TextInputLayout;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/DialogRegisterBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 57
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/DialogRegisterBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/DialogRegisterBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/DialogRegisterBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 63
    const v0, 0x7f0d014b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/DialogRegisterBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/DialogRegisterBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/DialogRegisterBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/DialogRegisterBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
