.class public final Lorg/catrobat/catroid/databinding/ActivitySpriteBinding;
.super Ljava/lang/Object;
.source "ActivitySpriteBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final activitySprite:Landroid/widget/LinearLayout;

.field public final bottomBar:Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;

.field public final fragmentContainer:Landroid/widget/FrameLayout;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "activitySprite"    # Landroid/widget/LinearLayout;
    .param p3, "bottomBar"    # Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;
    .param p4, "fragmentContainer"    # Landroid/widget/FrameLayout;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/ActivitySpriteBinding;->rootView:Landroid/widget/LinearLayout;

    .line 34
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/ActivitySpriteBinding;->activitySprite:Landroid/widget/LinearLayout;

    .line 35
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/ActivitySpriteBinding;->bottomBar:Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;

    .line 36
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/ActivitySpriteBinding;->fragmentContainer:Landroid/widget/FrameLayout;

    .line 37
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ActivitySpriteBinding;
    .locals 7
    .param p0, "rootView"    # Landroid/view/View;

    .line 66
    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 68
    .local v0, "activitySprite":Landroid/widget/LinearLayout;
    const v1, 0x7f0a0061

    .line 69
    .local v1, "id":I
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 70
    .local v2, "bottomBar":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 73
    invoke-static {v2}, Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;

    move-result-object v3

    .line 75
    .local v3, "binding_bottomBar":Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;
    const v1, 0x7f0a03b7

    .line 76
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 77
    .local v4, "fragmentContainer":Landroid/widget/FrameLayout;
    if-eqz v4, :cond_0

    .line 81
    new-instance v5, Lorg/catrobat/catroid/databinding/ActivitySpriteBinding;

    move-object v6, p0

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-direct {v5, v6, v0, v3, v4}, Lorg/catrobat/catroid/databinding/ActivitySpriteBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;Landroid/widget/FrameLayout;)V

    return-object v5

    .line 78
    :cond_0
    goto :goto_0

    .line 71
    .end local v3    # "binding_bottomBar":Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;
    .end local v4    # "fragmentContainer":Landroid/widget/FrameLayout;
    :cond_1
    nop

    .line 84
    .end local v0    # "activitySprite":Landroid/widget/LinearLayout;
    .end local v2    # "bottomBar":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/ActivitySpriteBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/ActivitySpriteBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/ActivitySpriteBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/ActivitySpriteBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 53
    const v0, 0x7f0d002d

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
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/ActivitySpriteBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ActivitySpriteBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/ActivitySpriteBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/ActivitySpriteBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
