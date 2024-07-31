.class public final Lorg/catrobat/catroid/databinding/BrickNxtPlayToneBinding;
.super Ljava/lang/Object;
.source "BrickNxtPlayToneBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final brickCheckbox:Landroid/widget/CheckBox;

.field public final brickNxtPlayToneLayout:Lorg/catrobat/catroid/ui/BrickLayout;

.field public final brickSecondsLabel:Landroid/widget/TextView;

.field public final nxtToneDurationEditText:Landroid/widget/TextView;

.field public final nxtToneFreqEditText:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "brickCheckbox"    # Landroid/widget/CheckBox;
    .param p3, "brickNxtPlayToneLayout"    # Lorg/catrobat/catroid/ui/BrickLayout;
    .param p4, "brickSecondsLabel"    # Landroid/widget/TextView;
    .param p5, "nxtToneDurationEditText"    # Landroid/widget/TextView;
    .param p6, "nxtToneFreqEditText"    # Landroid/widget/TextView;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/BrickNxtPlayToneBinding;->rootView:Landroid/widget/LinearLayout;

    .line 42
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/BrickNxtPlayToneBinding;->brickCheckbox:Landroid/widget/CheckBox;

    .line 43
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/BrickNxtPlayToneBinding;->brickNxtPlayToneLayout:Lorg/catrobat/catroid/ui/BrickLayout;

    .line 44
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/BrickNxtPlayToneBinding;->brickSecondsLabel:Landroid/widget/TextView;

    .line 45
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/BrickNxtPlayToneBinding;->nxtToneDurationEditText:Landroid/widget/TextView;

    .line 46
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/BrickNxtPlayToneBinding;->nxtToneFreqEditText:Landroid/widget/TextView;

    .line 47
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickNxtPlayToneBinding;
    .locals 14
    .param p0, "rootView"    # Landroid/view/View;

    .line 76
    const v0, 0x7f0a00a9

    .line 77
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 78
    .local v1, "brickCheckbox":Landroid/widget/CheckBox;
    if-eqz v1, :cond_4

    .line 82
    const v0, 0x7f0a017c

    .line 83
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lorg/catrobat/catroid/ui/BrickLayout;

    .line 84
    .local v9, "brickNxtPlayToneLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    if-eqz v9, :cond_3

    .line 88
    const v0, 0x7f0a01e9

    .line 89
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    .line 90
    .local v10, "brickSecondsLabel":Landroid/widget/TextView;
    if-eqz v10, :cond_2

    .line 94
    const v0, 0x7f0a0496

    .line 95
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    .line 96
    .local v11, "nxtToneDurationEditText":Landroid/widget/TextView;
    if-eqz v11, :cond_1

    .line 100
    const v0, 0x7f0a0497

    .line 101
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    .line 102
    .local v12, "nxtToneFreqEditText":Landroid/widget/TextView;
    if-eqz v12, :cond_0

    .line 106
    new-instance v13, Lorg/catrobat/catroid/databinding/BrickNxtPlayToneBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v13

    move-object v4, v1

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lorg/catrobat/catroid/databinding/BrickNxtPlayToneBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v13

    .line 103
    :cond_0
    goto :goto_0

    .line 97
    .end local v12    # "nxtToneFreqEditText":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 91
    .end local v11    # "nxtToneDurationEditText":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 85
    .end local v10    # "brickSecondsLabel":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 79
    .end local v9    # "brickNxtPlayToneLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    :cond_4
    nop

    .line 109
    .end local v1    # "brickCheckbox":Landroid/widget/CheckBox;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/BrickNxtPlayToneBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 57
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/BrickNxtPlayToneBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickNxtPlayToneBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickNxtPlayToneBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 63
    const v0, 0x7f0d009f

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
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/BrickNxtPlayToneBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickNxtPlayToneBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/BrickNxtPlayToneBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/BrickNxtPlayToneBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
