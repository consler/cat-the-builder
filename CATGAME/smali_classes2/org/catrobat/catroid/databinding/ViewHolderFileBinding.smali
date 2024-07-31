.class public final Lorg/catrobat/catroid/databinding/ViewHolderFileBinding;
.super Ljava/lang/Object;
.source "ViewHolderFileBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final checkbox:Landroid/widget/CheckBox;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final subtitleView:Landroid/widget/TextView;

.field public final titleView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "checkbox"    # Landroid/widget/CheckBox;
    .param p3, "subtitleView"    # Landroid/widget/TextView;
    .param p4, "titleView"    # Landroid/widget/TextView;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/ViewHolderFileBinding;->rootView:Landroid/widget/LinearLayout;

    .line 34
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/ViewHolderFileBinding;->checkbox:Landroid/widget/CheckBox;

    .line 35
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/ViewHolderFileBinding;->subtitleView:Landroid/widget/TextView;

    .line 36
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/ViewHolderFileBinding;->titleView:Landroid/widget/TextView;

    .line 37
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ViewHolderFileBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 66
    const v0, 0x7f0a02f1

    .line 67
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 68
    .local v1, "checkbox":Landroid/widget/CheckBox;
    if-eqz v1, :cond_2

    .line 72
    const v0, 0x7f0a05e7

    .line 73
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 74
    .local v2, "subtitleView":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 78
    const v0, 0x7f0a0615

    .line 79
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 80
    .local v3, "titleView":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 84
    new-instance v4, Lorg/catrobat/catroid/databinding/ViewHolderFileBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-direct {v4, v5, v1, v2, v3}, Lorg/catrobat/catroid/databinding/ViewHolderFileBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v4

    .line 81
    :cond_0
    goto :goto_0

    .line 75
    .end local v3    # "titleView":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 69
    .end local v2    # "subtitleView":Landroid/widget/TextView;
    :cond_2
    nop

    .line 86
    .end local v1    # "checkbox":Landroid/widget/CheckBox;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/ViewHolderFileBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/ViewHolderFileBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/ViewHolderFileBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/ViewHolderFileBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 53
    const v0, 0x7f0d01eb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/ViewHolderFileBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ViewHolderFileBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/ViewHolderFileBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/ViewHolderFileBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
