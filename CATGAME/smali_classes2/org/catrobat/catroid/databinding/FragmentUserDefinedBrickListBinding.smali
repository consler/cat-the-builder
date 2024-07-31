.class public final Lorg/catrobat/catroid/databinding/FragmentUserDefinedBrickListBinding;
.super Ljava/lang/Object;
.source "FragmentUserDefinedBrickListBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonAddUserBrick:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final empty:Landroid/widget/LinearLayout;

.field public final fragmentUserDefinedBrickList:Landroid/widget/RelativeLayout;

.field public final list:Landroid/widget/ListView;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/ListView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "buttonAddUserBrick"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .param p3, "empty"    # Landroid/widget/LinearLayout;
    .param p4, "fragmentUserDefinedBrickList"    # Landroid/widget/RelativeLayout;
    .param p5, "list"    # Landroid/widget/ListView;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/FragmentUserDefinedBrickListBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 39
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/FragmentUserDefinedBrickListBinding;->buttonAddUserBrick:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 40
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/FragmentUserDefinedBrickListBinding;->empty:Landroid/widget/LinearLayout;

    .line 41
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/FragmentUserDefinedBrickListBinding;->fragmentUserDefinedBrickList:Landroid/widget/RelativeLayout;

    .line 42
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/FragmentUserDefinedBrickListBinding;->list:Landroid/widget/ListView;

    .line 43
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/FragmentUserDefinedBrickListBinding;
    .locals 12
    .param p0, "rootView"    # Landroid/view/View;

    .line 72
    const v0, 0x7f0a02d9

    .line 73
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 74
    .local v1, "buttonAddUserBrick":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    if-eqz v1, :cond_2

    .line 78
    const v0, 0x1020004

    .line 79
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    .line 80
    .local v8, "empty":Landroid/widget/LinearLayout;
    if-eqz v8, :cond_1

    .line 84
    move-object v9, p0

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 86
    .local v9, "fragmentUserDefinedBrickList":Landroid/widget/RelativeLayout;
    const v0, 0x102000a

    .line 87
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ListView;

    .line 88
    .local v10, "list":Landroid/widget/ListView;
    if-eqz v10, :cond_0

    .line 92
    new-instance v11, Lorg/catrobat/catroid/databinding/FragmentUserDefinedBrickListBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v11

    move-object v4, v1

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/catrobat/catroid/databinding/FragmentUserDefinedBrickListBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/ListView;)V

    return-object v11

    .line 89
    :cond_0
    goto :goto_0

    .line 81
    .end local v9    # "fragmentUserDefinedBrickList":Landroid/widget/RelativeLayout;
    .end local v10    # "list":Landroid/widget/ListView;
    :cond_1
    goto :goto_0

    .line 75
    .end local v8    # "empty":Landroid/widget/LinearLayout;
    :cond_2
    nop

    .line 95
    .end local v1    # "buttonAddUserBrick":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/FragmentUserDefinedBrickListBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/FragmentUserDefinedBrickListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/FragmentUserDefinedBrickListBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/FragmentUserDefinedBrickListBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 59
    const v0, 0x7f0d0169

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/FragmentUserDefinedBrickListBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/FragmentUserDefinedBrickListBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/FragmentUserDefinedBrickListBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/FragmentUserDefinedBrickListBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
