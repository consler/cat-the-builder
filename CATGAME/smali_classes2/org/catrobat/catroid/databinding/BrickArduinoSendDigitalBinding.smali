.class public final Lorg/catrobat/catroid/databinding/BrickArduinoSendDigitalBinding;
.super Ljava/lang/Object;
.source "BrickArduinoSendDigitalBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final brickArduinoSendDigitalLayout:Lorg/catrobat/catroid/ui/BrickLayout;

.field public final brickArduinoSetDigitalPinEditText:Landroid/widget/TextView;

.field public final brickArduinoSetDigitalPinTextView:Landroid/widget/TextView;

.field public final brickArduinoSetDigitalValueEditText:Landroid/widget/TextView;

.field public final brickArduinoSetDigitalValueTextView:Landroid/widget/TextView;

.field public final brickCheckbox:Landroid/widget/CheckBox;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "brickArduinoSendDigitalLayout"    # Lorg/catrobat/catroid/ui/BrickLayout;
    .param p3, "brickArduinoSetDigitalPinEditText"    # Landroid/widget/TextView;
    .param p4, "brickArduinoSetDigitalPinTextView"    # Landroid/widget/TextView;
    .param p5, "brickArduinoSetDigitalValueEditText"    # Landroid/widget/TextView;
    .param p6, "brickArduinoSetDigitalValueTextView"    # Landroid/widget/TextView;
    .param p7, "brickCheckbox"    # Landroid/widget/CheckBox;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/BrickArduinoSendDigitalBinding;->rootView:Landroid/widget/LinearLayout;

    .line 48
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/BrickArduinoSendDigitalBinding;->brickArduinoSendDigitalLayout:Lorg/catrobat/catroid/ui/BrickLayout;

    .line 49
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/BrickArduinoSendDigitalBinding;->brickArduinoSetDigitalPinEditText:Landroid/widget/TextView;

    .line 50
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/BrickArduinoSendDigitalBinding;->brickArduinoSetDigitalPinTextView:Landroid/widget/TextView;

    .line 51
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/BrickArduinoSendDigitalBinding;->brickArduinoSetDigitalValueEditText:Landroid/widget/TextView;

    .line 52
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/BrickArduinoSendDigitalBinding;->brickArduinoSetDigitalValueTextView:Landroid/widget/TextView;

    .line 53
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/BrickArduinoSendDigitalBinding;->brickCheckbox:Landroid/widget/CheckBox;

    .line 54
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickArduinoSendDigitalBinding;
    .locals 17
    .param p0, "rootView"    # Landroid/view/View;

    .line 83
    move-object/from16 v0, p0

    const v1, 0x7f0a0069

    .line 84
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/ui/BrickLayout;

    .line 85
    .local v2, "brickArduinoSendDigitalLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    if-eqz v2, :cond_5

    .line 89
    const v1, 0x7f0a006e

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/TextView;

    .line 91
    .local v11, "brickArduinoSetDigitalPinEditText":Landroid/widget/TextView;
    if-eqz v11, :cond_4

    .line 95
    const v1, 0x7f0a006f

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/TextView;

    .line 97
    .local v12, "brickArduinoSetDigitalPinTextView":Landroid/widget/TextView;
    if-eqz v12, :cond_3

    .line 101
    const v1, 0x7f0a0070

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/TextView;

    .line 103
    .local v13, "brickArduinoSetDigitalValueEditText":Landroid/widget/TextView;
    if-eqz v13, :cond_2

    .line 107
    const v1, 0x7f0a0071

    .line 108
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    .line 109
    .local v14, "brickArduinoSetDigitalValueTextView":Landroid/widget/TextView;
    if-eqz v14, :cond_1

    .line 113
    const v1, 0x7f0a00a9

    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/CheckBox;

    .line 115
    .local v15, "brickCheckbox":Landroid/widget/CheckBox;
    if-eqz v15, :cond_0

    .line 119
    new-instance v16, Lorg/catrobat/catroid/databinding/BrickArduinoSendDigitalBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v16

    move-object v5, v2

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    invoke-direct/range {v3 .. v10}, Lorg/catrobat/catroid/databinding/BrickArduinoSendDigitalBinding;-><init>(Landroid/widget/LinearLayout;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/CheckBox;)V

    return-object v16

    .line 116
    :cond_0
    goto :goto_0

    .line 110
    .end local v15    # "brickCheckbox":Landroid/widget/CheckBox;
    :cond_1
    goto :goto_0

    .line 104
    .end local v14    # "brickArduinoSetDigitalValueTextView":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 98
    .end local v13    # "brickArduinoSetDigitalValueEditText":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 92
    .end local v12    # "brickArduinoSetDigitalPinTextView":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 86
    .end local v11    # "brickArduinoSetDigitalPinEditText":Landroid/widget/TextView;
    :cond_5
    nop

    .line 124
    .end local v2    # "brickArduinoSendDigitalLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/BrickArduinoSendDigitalBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/BrickArduinoSendDigitalBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickArduinoSendDigitalBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickArduinoSendDigitalBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 70
    const v0, 0x7f0d0036

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/BrickArduinoSendDigitalBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickArduinoSendDigitalBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/BrickArduinoSendDigitalBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/BrickArduinoSendDigitalBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
