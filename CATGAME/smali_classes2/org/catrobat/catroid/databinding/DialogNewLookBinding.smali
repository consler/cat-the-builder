.class public final Lorg/catrobat/catroid/databinding/DialogNewLookBinding;
.super Ljava/lang/Object;
.source "DialogNewLookBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dialogNewLookCamera:Landroid/widget/TextView;

.field public final dialogNewLookGallery:Landroid/widget/TextView;

.field public final dialogNewLookMediaLibrary:Landroid/widget/TextView;

.field public final dialogNewLookPaintroid:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "dialogNewLookCamera"    # Landroid/widget/TextView;
    .param p3, "dialogNewLookGallery"    # Landroid/widget/TextView;
    .param p4, "dialogNewLookMediaLibrary"    # Landroid/widget/TextView;
    .param p5, "dialogNewLookPaintroid"    # Landroid/widget/TextView;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/DialogNewLookBinding;->rootView:Landroid/widget/ScrollView;

    .line 37
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/DialogNewLookBinding;->dialogNewLookCamera:Landroid/widget/TextView;

    .line 38
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/DialogNewLookBinding;->dialogNewLookGallery:Landroid/widget/TextView;

    .line 39
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/DialogNewLookBinding;->dialogNewLookMediaLibrary:Landroid/widget/TextView;

    .line 40
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/DialogNewLookBinding;->dialogNewLookPaintroid:Landroid/widget/TextView;

    .line 41
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/DialogNewLookBinding;
    .locals 12
    .param p0, "rootView"    # Landroid/view/View;

    .line 70
    const v0, 0x7f0a034b

    .line 71
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 72
    .local v1, "dialogNewLookCamera":Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 76
    const v0, 0x7f0a034d

    .line 77
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    .line 78
    .local v8, "dialogNewLookGallery":Landroid/widget/TextView;
    if-eqz v8, :cond_2

    .line 82
    const v0, 0x7f0a034e

    .line 83
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    .line 84
    .local v9, "dialogNewLookMediaLibrary":Landroid/widget/TextView;
    if-eqz v9, :cond_1

    .line 88
    const v0, 0x7f0a0350

    .line 89
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    .line 90
    .local v10, "dialogNewLookPaintroid":Landroid/widget/TextView;
    if-eqz v10, :cond_0

    .line 94
    new-instance v11, Lorg/catrobat/catroid/databinding/DialogNewLookBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/ScrollView;

    move-object v2, v11

    move-object v4, v1

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/catrobat/catroid/databinding/DialogNewLookBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v11

    .line 91
    :cond_0
    goto :goto_0

    .line 85
    .end local v10    # "dialogNewLookPaintroid":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 79
    .end local v9    # "dialogNewLookMediaLibrary":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 73
    .end local v8    # "dialogNewLookGallery":Landroid/widget/TextView;
    :cond_3
    nop

    .line 97
    .end local v1    # "dialogNewLookCamera":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/DialogNewLookBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/DialogNewLookBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/DialogNewLookBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/DialogNewLookBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 57
    const v0, 0x7f0d0133

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 61
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/DialogNewLookBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/DialogNewLookBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/DialogNewLookBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/DialogNewLookBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
