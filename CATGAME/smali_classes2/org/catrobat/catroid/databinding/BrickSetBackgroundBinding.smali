.class public final Lorg/catrobat/catroid/databinding/BrickSetBackgroundBinding;
.super Ljava/lang/Object;
.source "BrickSetBackgroundBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final brickCheckbox:Landroid/widget/CheckBox;

.field public final brickSetBackgroundLayout:Lorg/catrobat/catroid/ui/BrickLayout;

.field public final brickSetBackgroundSpinner:Landroid/widget/Spinner;

.field public final brickSetBackgroundTextView:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/Spinner;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "brickCheckbox"    # Landroid/widget/CheckBox;
    .param p3, "brickSetBackgroundLayout"    # Lorg/catrobat/catroid/ui/BrickLayout;
    .param p4, "brickSetBackgroundSpinner"    # Landroid/widget/Spinner;
    .param p5, "brickSetBackgroundTextView"    # Landroid/widget/TextView;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/BrickSetBackgroundBinding;->rootView:Landroid/widget/LinearLayout;

    .line 40
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/BrickSetBackgroundBinding;->brickCheckbox:Landroid/widget/CheckBox;

    .line 41
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/BrickSetBackgroundBinding;->brickSetBackgroundLayout:Lorg/catrobat/catroid/ui/BrickLayout;

    .line 42
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/BrickSetBackgroundBinding;->brickSetBackgroundSpinner:Landroid/widget/Spinner;

    .line 43
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/BrickSetBackgroundBinding;->brickSetBackgroundTextView:Landroid/widget/TextView;

    .line 44
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickSetBackgroundBinding;
    .locals 12
    .param p0, "rootView"    # Landroid/view/View;

    .line 73
    const v0, 0x7f0a00a9

    .line 74
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 75
    .local v1, "brickCheckbox":Landroid/widget/CheckBox;
    if-eqz v1, :cond_3

    .line 79
    const v0, 0x7f0a01ef

    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lorg/catrobat/catroid/ui/BrickLayout;

    .line 81
    .local v8, "brickSetBackgroundLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    if-eqz v8, :cond_2

    .line 85
    const v0, 0x7f0a01f0

    .line 86
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/Spinner;

    .line 87
    .local v9, "brickSetBackgroundSpinner":Landroid/widget/Spinner;
    if-eqz v9, :cond_1

    .line 91
    const v0, 0x7f0a01f1

    .line 92
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    .line 93
    .local v10, "brickSetBackgroundTextView":Landroid/widget/TextView;
    if-eqz v10, :cond_0

    .line 97
    new-instance v11, Lorg/catrobat/catroid/databinding/BrickSetBackgroundBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v11

    move-object v4, v1

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/catrobat/catroid/databinding/BrickSetBackgroundBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/Spinner;Landroid/widget/TextView;)V

    return-object v11

    .line 94
    :cond_0
    goto :goto_0

    .line 88
    .end local v10    # "brickSetBackgroundTextView":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 82
    .end local v9    # "brickSetBackgroundSpinner":Landroid/widget/Spinner;
    :cond_2
    goto :goto_0

    .line 76
    .end local v8    # "brickSetBackgroundLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    :cond_3
    nop

    .line 100
    .end local v1    # "brickCheckbox":Landroid/widget/CheckBox;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/BrickSetBackgroundBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/BrickSetBackgroundBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickSetBackgroundBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickSetBackgroundBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 60
    const v0, 0x7f0d00ce

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/BrickSetBackgroundBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickSetBackgroundBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/BrickSetBackgroundBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/BrickSetBackgroundBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
