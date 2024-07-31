.class public final Lorg/catrobat/catroid/databinding/SingleSeekBarViewBinding;
.super Ljava/lang/Object;
.source "SingleSeekBarViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final motorBaseLayout:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final singleSeekbarSeekbar:Landroid/widget/SeekBar;

.field public final singleSeekbarTitle:Landroid/widget/TextView;

.field public final singleSeekbarValue:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "motorBaseLayout"    # Landroid/widget/LinearLayout;
    .param p3, "singleSeekbarSeekbar"    # Landroid/widget/SeekBar;
    .param p4, "singleSeekbarTitle"    # Landroid/widget/TextView;
    .param p5, "singleSeekbarValue"    # Landroid/widget/TextView;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/SingleSeekBarViewBinding;->rootView:Landroid/widget/LinearLayout;

    .line 38
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/SingleSeekBarViewBinding;->motorBaseLayout:Landroid/widget/LinearLayout;

    .line 39
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/SingleSeekBarViewBinding;->singleSeekbarSeekbar:Landroid/widget/SeekBar;

    .line 40
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/SingleSeekBarViewBinding;->singleSeekbarTitle:Landroid/widget/TextView;

    .line 41
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/SingleSeekBarViewBinding;->singleSeekbarValue:Landroid/widget/TextView;

    .line 42
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/SingleSeekBarViewBinding;
    .locals 12
    .param p0, "rootView"    # Landroid/view/View;

    .line 71
    move-object v6, p0

    check-cast v6, Landroid/widget/LinearLayout;

    .line 73
    .local v6, "motorBaseLayout":Landroid/widget/LinearLayout;
    const v0, 0x7f0a05b7

    .line 74
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/SeekBar;

    .line 75
    .local v7, "singleSeekbarSeekbar":Landroid/widget/SeekBar;
    if-eqz v7, :cond_2

    .line 79
    const v0, 0x7f0a05b8

    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    .line 81
    .local v8, "singleSeekbarTitle":Landroid/widget/TextView;
    if-eqz v8, :cond_1

    .line 85
    const v9, 0x7f0a05b9

    .line 86
    .end local v0    # "id":I
    .local v9, "id":I
    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    .line 87
    .local v10, "singleSeekbarValue":Landroid/widget/TextView;
    if-eqz v10, :cond_0

    .line 91
    new-instance v11, Lorg/catrobat/catroid/databinding/SingleSeekBarViewBinding;

    move-object v1, p0

    check-cast v1, Landroid/widget/LinearLayout;

    move-object v0, v11

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/catroid/databinding/SingleSeekBarViewBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v11

    .line 88
    :cond_0
    move v0, v9

    goto :goto_0

    .line 82
    .end local v9    # "id":I
    .end local v10    # "singleSeekbarValue":Landroid/widget/TextView;
    .restart local v0    # "id":I
    :cond_1
    goto :goto_0

    .line 76
    .end local v8    # "singleSeekbarTitle":Landroid/widget/TextView;
    :cond_2
    nop

    .line 94
    .end local v6    # "motorBaseLayout":Landroid/widget/LinearLayout;
    .end local v7    # "singleSeekbarSeekbar":Landroid/widget/SeekBar;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/SingleSeekBarViewBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 52
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/SingleSeekBarViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/SingleSeekBarViewBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/SingleSeekBarViewBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 58
    const v0, 0x7f0d01d3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/SingleSeekBarViewBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/SingleSeekBarViewBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/SingleSeekBarViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/SingleSeekBarViewBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
