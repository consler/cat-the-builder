.class public final Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;
.super Ljava/lang/Object;
.source "ListActionButtonsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bottomBar:Landroid/widget/RelativeLayout;

.field public final buttonAdd:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final buttonPlay:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "bottomBar"    # Landroid/widget/RelativeLayout;
    .param p3, "buttonAdd"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .param p4, "buttonPlay"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 34
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;->bottomBar:Landroid/widget/RelativeLayout;

    .line 35
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;->buttonAdd:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 36
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;->buttonPlay:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 37
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 66
    move-object v0, p0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 68
    .local v0, "bottomBar":Landroid/widget/RelativeLayout;
    const v1, 0x7f0a02d6

    .line 69
    .local v1, "id":I
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 70
    .local v2, "buttonAdd":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    if-eqz v2, :cond_1

    .line 74
    const v1, 0x7f0a02da

    .line 75
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 76
    .local v3, "buttonPlay":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    if-eqz v3, :cond_0

    .line 80
    new-instance v4, Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v5, v0, v2, v3}, Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    return-object v4

    .line 77
    :cond_0
    goto :goto_0

    .line 71
    .end local v3    # "buttonPlay":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    :cond_1
    nop

    .line 83
    .end local v0    # "bottomBar":Landroid/widget/RelativeLayout;
    .end local v2    # "buttonAdd":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 53
    const v0, 0x7f0d017d

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
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/ListActionButtonsBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
