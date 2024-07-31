.class public final Lorg/catrobat/catroid/databinding/FragmentAddUserDataToUserBrickBinding;
.super Ljava/lang/Object;
.source "FragmentAddUserDataToUserBrickBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bottomConstraint:Landroid/widget/LinearLayout;

.field public final brickUserDefinedAddUserDataDescription:Landroid/widget/TextView;

.field public final fragmentAddUserDataToUserBrick:Landroid/widget/ScrollView;

.field private final rootView:Landroid/widget/ScrollView;

.field public final userBrickSpace:Landroid/widget/LinearLayout;

.field public final userDataUserBrickEditField:Lcom/google/android/material/textfield/TextInputEditText;

.field public final userDataUserBrickTextLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "bottomConstraint"    # Landroid/widget/LinearLayout;
    .param p3, "brickUserDefinedAddUserDataDescription"    # Landroid/widget/TextView;
    .param p4, "fragmentAddUserDataToUserBrick"    # Landroid/widget/ScrollView;
    .param p5, "userBrickSpace"    # Landroid/widget/LinearLayout;
    .param p6, "userDataUserBrickEditField"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p7, "userDataUserBrickTextLayout"    # Lcom/google/android/material/textfield/TextInputLayout;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/FragmentAddUserDataToUserBrickBinding;->rootView:Landroid/widget/ScrollView;

    .line 49
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/FragmentAddUserDataToUserBrickBinding;->bottomConstraint:Landroid/widget/LinearLayout;

    .line 50
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/FragmentAddUserDataToUserBrickBinding;->brickUserDefinedAddUserDataDescription:Landroid/widget/TextView;

    .line 51
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/FragmentAddUserDataToUserBrickBinding;->fragmentAddUserDataToUserBrick:Landroid/widget/ScrollView;

    .line 52
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/FragmentAddUserDataToUserBrickBinding;->userBrickSpace:Landroid/widget/LinearLayout;

    .line 53
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/FragmentAddUserDataToUserBrickBinding;->userDataUserBrickEditField:Lcom/google/android/material/textfield/TextInputEditText;

    .line 54
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/FragmentAddUserDataToUserBrickBinding;->userDataUserBrickTextLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 55
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/FragmentAddUserDataToUserBrickBinding;
    .locals 17
    .param p0, "rootView"    # Landroid/view/View;

    .line 84
    move-object/from16 v0, p0

    const v1, 0x7f0a0062

    .line 85
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 86
    .local v2, "bottomConstraint":Landroid/widget/LinearLayout;
    if-eqz v2, :cond_4

    .line 90
    const v1, 0x7f0a02a5

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/TextView;

    .line 92
    .local v11, "brickUserDefinedAddUserDataDescription":Landroid/widget/TextView;
    if-eqz v11, :cond_3

    .line 96
    move-object v12, v0

    check-cast v12, Landroid/widget/ScrollView;

    .line 98
    .local v12, "fragmentAddUserDataToUserBrick":Landroid/widget/ScrollView;
    const v1, 0x7f0a062c

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/LinearLayout;

    .line 100
    .local v13, "userBrickSpace":Landroid/widget/LinearLayout;
    if-eqz v13, :cond_2

    .line 104
    const v1, 0x7f0a062d

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/google/android/material/textfield/TextInputEditText;

    .line 106
    .local v14, "userDataUserBrickEditField":Lcom/google/android/material/textfield/TextInputEditText;
    if-eqz v14, :cond_1

    .line 110
    const v1, 0x7f0a062e

    .line 111
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/google/android/material/textfield/TextInputLayout;

    .line 112
    .local v15, "userDataUserBrickTextLayout":Lcom/google/android/material/textfield/TextInputLayout;
    if-eqz v15, :cond_0

    .line 116
    new-instance v16, Lorg/catrobat/catroid/databinding/FragmentAddUserDataToUserBrickBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    move-object/from16 v3, v16

    move-object v5, v2

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    invoke-direct/range {v3 .. v10}, Lorg/catrobat/catroid/databinding/FragmentAddUserDataToUserBrickBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;)V

    return-object v16

    .line 113
    :cond_0
    goto :goto_0

    .line 107
    .end local v15    # "userDataUserBrickTextLayout":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_1
    goto :goto_0

    .line 101
    .end local v14    # "userDataUserBrickEditField":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_2
    goto :goto_0

    .line 93
    .end local v12    # "fragmentAddUserDataToUserBrick":Landroid/widget/ScrollView;
    .end local v13    # "userBrickSpace":Landroid/widget/LinearLayout;
    :cond_3
    goto :goto_0

    .line 87
    .end local v11    # "brickUserDefinedAddUserDataDescription":Landroid/widget/TextView;
    :cond_4
    nop

    .line 120
    .end local v2    # "bottomConstraint":Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/FragmentAddUserDataToUserBrickBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/FragmentAddUserDataToUserBrickBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/FragmentAddUserDataToUserBrickBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/FragmentAddUserDataToUserBrickBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 71
    const v0, 0x7f0d015a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/FragmentAddUserDataToUserBrickBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/FragmentAddUserDataToUserBrickBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/FragmentAddUserDataToUserBrickBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/FragmentAddUserDataToUserBrickBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
