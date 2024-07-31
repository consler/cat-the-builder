.class public final Lorg/catrobat/catroid/databinding/FragmentScriptBinding;
.super Ljava/lang/Object;
.source "FragmentScriptBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final empty:Landroid/widget/RelativeLayout;

.field public final findview:Lorg/catrobat/catroid/ui/ScriptFinder;

.field public final fragmentScript:Landroid/widget/LinearLayout;

.field public final fragmentScriptTextDescription:Landroid/widget/TextView;

.field public final list:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Lorg/catrobat/catroid/ui/ScriptFinder;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/dragndrop/BrickListView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "empty"    # Landroid/widget/RelativeLayout;
    .param p3, "findview"    # Lorg/catrobat/catroid/ui/ScriptFinder;
    .param p4, "fragmentScript"    # Landroid/widget/LinearLayout;
    .param p5, "fragmentScriptTextDescription"    # Landroid/widget/TextView;
    .param p6, "list"    # Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/FragmentScriptBinding;->rootView:Landroid/widget/LinearLayout;

    .line 43
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/FragmentScriptBinding;->empty:Landroid/widget/RelativeLayout;

    .line 44
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/FragmentScriptBinding;->findview:Lorg/catrobat/catroid/ui/ScriptFinder;

    .line 45
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/FragmentScriptBinding;->fragmentScript:Landroid/widget/LinearLayout;

    .line 46
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/FragmentScriptBinding;->fragmentScriptTextDescription:Landroid/widget/TextView;

    .line 47
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/FragmentScriptBinding;->list:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    .line 48
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/FragmentScriptBinding;
    .locals 14
    .param p0, "rootView"    # Landroid/view/View;

    .line 77
    const v0, 0x1020004

    .line 78
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 79
    .local v1, "empty":Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_3

    .line 83
    const v0, 0x7f0a038b

    .line 84
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lorg/catrobat/catroid/ui/ScriptFinder;

    .line 85
    .local v9, "findview":Lorg/catrobat/catroid/ui/ScriptFinder;
    if-eqz v9, :cond_2

    .line 89
    move-object v10, p0

    check-cast v10, Landroid/widget/LinearLayout;

    .line 91
    .local v10, "fragmentScript":Landroid/widget/LinearLayout;
    const v0, 0x7f0a03ba

    .line 92
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    .line 93
    .local v11, "fragmentScriptTextDescription":Landroid/widget/TextView;
    if-eqz v11, :cond_1

    .line 97
    const v0, 0x102000a

    .line 98
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    .line 99
    .local v12, "list":Lorg/catrobat/catroid/ui/dragndrop/BrickListView;
    if-eqz v12, :cond_0

    .line 103
    new-instance v13, Lorg/catrobat/catroid/databinding/FragmentScriptBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v13

    move-object v4, v1

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lorg/catrobat/catroid/databinding/FragmentScriptBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Lorg/catrobat/catroid/ui/ScriptFinder;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/dragndrop/BrickListView;)V

    return-object v13

    .line 100
    :cond_0
    goto :goto_0

    .line 94
    .end local v12    # "list":Lorg/catrobat/catroid/ui/dragndrop/BrickListView;
    :cond_1
    goto :goto_0

    .line 86
    .end local v10    # "fragmentScript":Landroid/widget/LinearLayout;
    .end local v11    # "fragmentScriptTextDescription":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 80
    .end local v9    # "findview":Lorg/catrobat/catroid/ui/ScriptFinder;
    :cond_3
    nop

    .line 106
    .end local v1    # "empty":Landroid/widget/RelativeLayout;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/FragmentScriptBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/FragmentScriptBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/FragmentScriptBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/FragmentScriptBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 64
    const v0, 0x7f0d0168

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/FragmentScriptBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/FragmentScriptBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/FragmentScriptBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/FragmentScriptBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
