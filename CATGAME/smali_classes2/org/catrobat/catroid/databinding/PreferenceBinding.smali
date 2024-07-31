.class public final Lorg/catrobat/catroid/databinding/PreferenceBinding;
.super Ljava/lang/Object;
.source "PreferenceBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final contentFrame:Landroid/widget/FrameLayout;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "contentFrame"    # Landroid/widget/FrameLayout;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/PreferenceBinding;->rootView:Landroid/widget/LinearLayout;

    .line 26
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/PreferenceBinding;->contentFrame:Landroid/widget/FrameLayout;

    .line 27
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/PreferenceBinding;
    .locals 4
    .param p0, "rootView"    # Landroid/view/View;

    .line 56
    const v0, 0x7f0a0321

    .line 57
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 58
    .local v1, "contentFrame":Landroid/widget/FrameLayout;
    if-eqz v1, :cond_0

    .line 62
    new-instance v2, Lorg/catrobat/catroid/databinding/PreferenceBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct {v2, v3, v1}, Lorg/catrobat/catroid/databinding/PreferenceBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;)V

    return-object v2

    .line 59
    :cond_0
    nop

    .line 64
    .end local v1    # "contentFrame":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/PreferenceBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 37
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/PreferenceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/PreferenceBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/PreferenceBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 43
    const v0, 0x7f0d01ca

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/PreferenceBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/PreferenceBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/PreferenceBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/PreferenceBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
