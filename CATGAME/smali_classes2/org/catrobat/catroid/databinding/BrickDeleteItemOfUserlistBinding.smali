.class public final Lorg/catrobat/catroid/databinding/BrickDeleteItemOfUserlistBinding;
.super Ljava/lang/Object;
.source "BrickDeleteItemOfUserlistBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final brickCheckbox:Landroid/widget/CheckBox;

.field public final brickDeleteItemOfUserlistEditText:Landroid/widget/TextView;

.field public final brickDeleteItemOfUserlistLabel:Landroid/widget/TextView;

.field public final brickDeleteItemOfUserlistLayout:Lorg/catrobat/catroid/ui/BrickLayout;

.field public final brickDeleteItemOfUserlistTextview:Landroid/widget/TextView;

.field public final deleteItemOfUserlistSpinner:Landroid/widget/Spinner;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "brickCheckbox"    # Landroid/widget/CheckBox;
    .param p3, "brickDeleteItemOfUserlistEditText"    # Landroid/widget/TextView;
    .param p4, "brickDeleteItemOfUserlistLabel"    # Landroid/widget/TextView;
    .param p5, "brickDeleteItemOfUserlistLayout"    # Lorg/catrobat/catroid/ui/BrickLayout;
    .param p6, "brickDeleteItemOfUserlistTextview"    # Landroid/widget/TextView;
    .param p7, "deleteItemOfUserlistSpinner"    # Landroid/widget/Spinner;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/BrickDeleteItemOfUserlistBinding;->rootView:Landroid/widget/LinearLayout;

    .line 49
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/BrickDeleteItemOfUserlistBinding;->brickCheckbox:Landroid/widget/CheckBox;

    .line 50
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/BrickDeleteItemOfUserlistBinding;->brickDeleteItemOfUserlistEditText:Landroid/widget/TextView;

    .line 51
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/BrickDeleteItemOfUserlistBinding;->brickDeleteItemOfUserlistLabel:Landroid/widget/TextView;

    .line 52
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/BrickDeleteItemOfUserlistBinding;->brickDeleteItemOfUserlistLayout:Lorg/catrobat/catroid/ui/BrickLayout;

    .line 53
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/BrickDeleteItemOfUserlistBinding;->brickDeleteItemOfUserlistTextview:Landroid/widget/TextView;

    .line 54
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/BrickDeleteItemOfUserlistBinding;->deleteItemOfUserlistSpinner:Landroid/widget/Spinner;

    .line 55
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickDeleteItemOfUserlistBinding;
    .locals 17
    .param p0, "rootView"    # Landroid/view/View;

    .line 84
    move-object/from16 v0, p0

    const v1, 0x7f0a00a9

    .line 85
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 86
    .local v2, "brickCheckbox":Landroid/widget/CheckBox;
    if-eqz v2, :cond_5

    .line 90
    const v1, 0x7f0a00ba

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/TextView;

    .line 92
    .local v11, "brickDeleteItemOfUserlistEditText":Landroid/widget/TextView;
    if-eqz v11, :cond_4

    .line 96
    const v1, 0x7f0a00bb

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/TextView;

    .line 98
    .local v12, "brickDeleteItemOfUserlistLabel":Landroid/widget/TextView;
    if-eqz v12, :cond_3

    .line 102
    const v1, 0x7f0a00bc

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lorg/catrobat/catroid/ui/BrickLayout;

    .line 104
    .local v13, "brickDeleteItemOfUserlistLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    if-eqz v13, :cond_2

    .line 108
    const v1, 0x7f0a00bd

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    .line 110
    .local v14, "brickDeleteItemOfUserlistTextview":Landroid/widget/TextView;
    if-eqz v14, :cond_1

    .line 114
    const v1, 0x7f0a0338

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/Spinner;

    .line 116
    .local v15, "deleteItemOfUserlistSpinner":Landroid/widget/Spinner;
    if-eqz v15, :cond_0

    .line 120
    new-instance v16, Lorg/catrobat/catroid/databinding/BrickDeleteItemOfUserlistBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v16

    move-object v5, v2

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    invoke-direct/range {v3 .. v10}, Lorg/catrobat/catroid/databinding/BrickDeleteItemOfUserlistBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;Landroid/widget/Spinner;)V

    return-object v16

    .line 117
    :cond_0
    goto :goto_0

    .line 111
    .end local v15    # "deleteItemOfUserlistSpinner":Landroid/widget/Spinner;
    :cond_1
    goto :goto_0

    .line 105
    .end local v14    # "brickDeleteItemOfUserlistTextview":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 99
    .end local v13    # "brickDeleteItemOfUserlistLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    :cond_3
    goto :goto_0

    .line 93
    .end local v12    # "brickDeleteItemOfUserlistLabel":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 87
    .end local v11    # "brickDeleteItemOfUserlistEditText":Landroid/widget/TextView;
    :cond_5
    nop

    .line 125
    .end local v2    # "brickCheckbox":Landroid/widget/CheckBox;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/BrickDeleteItemOfUserlistBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/BrickDeleteItemOfUserlistBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickDeleteItemOfUserlistBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickDeleteItemOfUserlistBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 71
    const v0, 0x7f0d0062

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
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/BrickDeleteItemOfUserlistBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickDeleteItemOfUserlistBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/BrickDeleteItemOfUserlistBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/BrickDeleteItemOfUserlistBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
