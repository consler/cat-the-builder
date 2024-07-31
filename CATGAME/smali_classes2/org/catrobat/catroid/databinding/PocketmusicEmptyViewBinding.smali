.class public final Lorg/catrobat/catroid/databinding/PocketmusicEmptyViewBinding;
.super Ljava/lang/Object;
.source "PocketmusicEmptyViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/PocketmusicEmptyViewBinding;->rootView:Landroid/view/View;

    .line 20
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/PocketmusicEmptyViewBinding;
    .locals 2
    .param p0, "rootView"    # Landroid/view/View;

    .line 45
    if-eqz p0, :cond_0

    .line 49
    new-instance v0, Lorg/catrobat/catroid/databinding/PocketmusicEmptyViewBinding;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/databinding/PocketmusicEmptyViewBinding;-><init>(Landroid/view/View;)V

    return-object v0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "rootView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/PocketmusicEmptyViewBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 30
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/PocketmusicEmptyViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/PocketmusicEmptyViewBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/PocketmusicEmptyViewBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 36
    const v0, 0x7f0d01b9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 40
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/PocketmusicEmptyViewBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/PocketmusicEmptyViewBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/PocketmusicEmptyViewBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
