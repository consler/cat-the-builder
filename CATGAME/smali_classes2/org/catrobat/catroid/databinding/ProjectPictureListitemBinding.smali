.class public final Lorg/catrobat/catroid/databinding/ProjectPictureListitemBinding;
.super Ljava/lang/Object;
.source "ProjectPictureListitemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final projectImageView:Landroid/widget/ImageView;

.field private final rootView:Lcom/google/android/material/card/MaterialCardView;


# direct methods
.method private constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "rootView"    # Lcom/google/android/material/card/MaterialCardView;
    .param p2, "projectImageView"    # Landroid/widget/ImageView;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/ProjectPictureListitemBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    .line 27
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/ProjectPictureListitemBinding;->projectImageView:Landroid/widget/ImageView;

    .line 28
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ProjectPictureListitemBinding;
    .locals 4
    .param p0, "rootView"    # Landroid/view/View;

    .line 57
    const v0, 0x7f0a0552

    .line 58
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 59
    .local v1, "projectImageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 63
    new-instance v2, Lorg/catrobat/catroid/databinding/ProjectPictureListitemBinding;

    move-object v3, p0

    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    invoke-direct {v2, v3, v1}, Lorg/catrobat/catroid/databinding/ProjectPictureListitemBinding;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ImageView;)V

    return-object v2

    .line 60
    :cond_0
    nop

    .line 65
    .end local v1    # "projectImageView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/ProjectPictureListitemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/ProjectPictureListitemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/ProjectPictureListitemBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/ProjectPictureListitemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 44
    const v0, 0x7f0d01ce

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/ProjectPictureListitemBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ProjectPictureListitemBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/ProjectPictureListitemBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/google/android/material/card/MaterialCardView;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/ProjectPictureListitemBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    return-object v0
.end method
