.class public final Lorg/catrobat/catroid/databinding/BrickSetInstrumentBinding;
.super Ljava/lang/Object;
.source "BrickSetInstrumentBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final brickCheckbox:Landroid/widget/CheckBox;

.field public final brickSetInstrumentLayout:Lorg/catrobat/catroid/ui/BrickLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final setInstrumentSpinner:Landroid/widget/Spinner;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "brickCheckbox"    # Landroid/widget/CheckBox;
    .param p3, "brickSetInstrumentLayout"    # Lorg/catrobat/catroid/ui/BrickLayout;
    .param p4, "setInstrumentSpinner"    # Landroid/widget/Spinner;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/BrickSetInstrumentBinding;->rootView:Landroid/widget/LinearLayout;

    .line 35
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/BrickSetInstrumentBinding;->brickCheckbox:Landroid/widget/CheckBox;

    .line 36
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/BrickSetInstrumentBinding;->brickSetInstrumentLayout:Lorg/catrobat/catroid/ui/BrickLayout;

    .line 37
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/BrickSetInstrumentBinding;->setInstrumentSpinner:Landroid/widget/Spinner;

    .line 38
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickSetInstrumentBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 67
    const v0, 0x7f0a00a9

    .line 68
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 69
    .local v1, "brickCheckbox":Landroid/widget/CheckBox;
    if-eqz v1, :cond_2

    .line 73
    const v0, 0x7f0a020f

    .line 74
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/ui/BrickLayout;

    .line 75
    .local v2, "brickSetInstrumentLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    if-eqz v2, :cond_1

    .line 79
    const v0, 0x7f0a05a6

    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 81
    .local v3, "setInstrumentSpinner":Landroid/widget/Spinner;
    if-eqz v3, :cond_0

    .line 85
    new-instance v4, Lorg/catrobat/catroid/databinding/BrickSetInstrumentBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-direct {v4, v5, v1, v2, v3}, Lorg/catrobat/catroid/databinding/BrickSetInstrumentBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/Spinner;)V

    return-object v4

    .line 82
    :cond_0
    goto :goto_0

    .line 76
    .end local v3    # "setInstrumentSpinner":Landroid/widget/Spinner;
    :cond_1
    goto :goto_0

    .line 70
    .end local v2    # "brickSetInstrumentLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    :cond_2
    nop

    .line 88
    .end local v1    # "brickCheckbox":Landroid/widget/CheckBox;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/BrickSetInstrumentBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/BrickSetInstrumentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickSetInstrumentBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickSetInstrumentBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 54
    const v0, 0x7f0d00d4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/BrickSetInstrumentBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickSetInstrumentBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/BrickSetInstrumentBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/BrickSetInstrumentBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
