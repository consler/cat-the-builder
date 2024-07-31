.class public final Lorg/catrobat/catroid/databinding/FormulaEditorPopUpMenuBinding;
.super Ljava/lang/Object;
.source "FormulaEditorPopUpMenuBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final card:Landroidx/cardview/widget/CardView;

.field public final copy:Landroid/widget/TextView;

.field public final cut:Landroid/widget/TextView;

.field public final paste:Landroid/widget/TextView;

.field private final rootView:Landroidx/cardview/widget/CardView;


# direct methods
.method private constructor <init>(Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/cardview/widget/CardView;
    .param p2, "card"    # Landroidx/cardview/widget/CardView;
    .param p3, "copy"    # Landroid/widget/TextView;
    .param p4, "cut"    # Landroid/widget/TextView;
    .param p5, "paste"    # Landroid/widget/TextView;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/FormulaEditorPopUpMenuBinding;->rootView:Landroidx/cardview/widget/CardView;

    .line 36
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/FormulaEditorPopUpMenuBinding;->card:Landroidx/cardview/widget/CardView;

    .line 37
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/FormulaEditorPopUpMenuBinding;->copy:Landroid/widget/TextView;

    .line 38
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/FormulaEditorPopUpMenuBinding;->cut:Landroid/widget/TextView;

    .line 39
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/FormulaEditorPopUpMenuBinding;->paste:Landroid/widget/TextView;

    .line 40
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/FormulaEditorPopUpMenuBinding;
    .locals 12
    .param p0, "rootView"    # Landroid/view/View;

    .line 69
    move-object v6, p0

    check-cast v6, Landroidx/cardview/widget/CardView;

    .line 71
    .local v6, "card":Landroidx/cardview/widget/CardView;
    const v0, 0x7f0a0327

    .line 72
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    .line 73
    .local v7, "copy":Landroid/widget/TextView;
    if-eqz v7, :cond_2

    .line 77
    const v0, 0x7f0a032e

    .line 78
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    .line 79
    .local v8, "cut":Landroid/widget/TextView;
    if-eqz v8, :cond_1

    .line 83
    const v9, 0x7f0a04a3

    .line 84
    .end local v0    # "id":I
    .local v9, "id":I
    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    .line 85
    .local v10, "paste":Landroid/widget/TextView;
    if-eqz v10, :cond_0

    .line 89
    new-instance v11, Lorg/catrobat/catroid/databinding/FormulaEditorPopUpMenuBinding;

    move-object v1, p0

    check-cast v1, Landroidx/cardview/widget/CardView;

    move-object v0, v11

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/catroid/databinding/FormulaEditorPopUpMenuBinding;-><init>(Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v11

    .line 86
    :cond_0
    move v0, v9

    goto :goto_0

    .line 80
    .end local v9    # "id":I
    .end local v10    # "paste":Landroid/widget/TextView;
    .restart local v0    # "id":I
    :cond_1
    goto :goto_0

    .line 74
    .end local v8    # "cut":Landroid/widget/TextView;
    :cond_2
    nop

    .line 91
    .end local v6    # "card":Landroidx/cardview/widget/CardView;
    .end local v7    # "copy":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/FormulaEditorPopUpMenuBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/FormulaEditorPopUpMenuBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/FormulaEditorPopUpMenuBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/FormulaEditorPopUpMenuBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 56
    const v0, 0x7f0d0158

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/FormulaEditorPopUpMenuBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/FormulaEditorPopUpMenuBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/FormulaEditorPopUpMenuBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/cardview/widget/CardView;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/FormulaEditorPopUpMenuBinding;->rootView:Landroidx/cardview/widget/CardView;

    return-object v0
.end method
