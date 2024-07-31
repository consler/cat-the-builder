.class public final Lorg/catrobat/catroid/databinding/DialogLegoSensorConfigInfoBinding;
.super Ljava/lang/Object;
.source "DialogLegoSensorConfigInfoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final legoSensorConfigInfoDisableShowDialog:Landroid/widget/CheckBox;

.field public final legoSensorConfigInfoPort1Mapping:Landroid/widget/TextView;

.field public final legoSensorConfigInfoPort2Mapping:Landroid/widget/TextView;

.field public final legoSensorConfigInfoPort3Mapping:Landroid/widget/TextView;

.field public final legoSensorConfigInfoPort4Mapping:Landroid/widget/TextView;

.field public final legoSensorConfigInfoText:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "legoSensorConfigInfoDisableShowDialog"    # Landroid/widget/CheckBox;
    .param p3, "legoSensorConfigInfoPort1Mapping"    # Landroid/widget/TextView;
    .param p4, "legoSensorConfigInfoPort2Mapping"    # Landroid/widget/TextView;
    .param p5, "legoSensorConfigInfoPort3Mapping"    # Landroid/widget/TextView;
    .param p6, "legoSensorConfigInfoPort4Mapping"    # Landroid/widget/TextView;
    .param p7, "legoSensorConfigInfoText"    # Landroid/widget/TextView;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/DialogLegoSensorConfigInfoBinding;->rootView:Landroid/widget/ScrollView;

    .line 48
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/DialogLegoSensorConfigInfoBinding;->legoSensorConfigInfoDisableShowDialog:Landroid/widget/CheckBox;

    .line 49
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/DialogLegoSensorConfigInfoBinding;->legoSensorConfigInfoPort1Mapping:Landroid/widget/TextView;

    .line 50
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/DialogLegoSensorConfigInfoBinding;->legoSensorConfigInfoPort2Mapping:Landroid/widget/TextView;

    .line 51
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/DialogLegoSensorConfigInfoBinding;->legoSensorConfigInfoPort3Mapping:Landroid/widget/TextView;

    .line 52
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/DialogLegoSensorConfigInfoBinding;->legoSensorConfigInfoPort4Mapping:Landroid/widget/TextView;

    .line 53
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/DialogLegoSensorConfigInfoBinding;->legoSensorConfigInfoText:Landroid/widget/TextView;

    .line 54
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/DialogLegoSensorConfigInfoBinding;
    .locals 17
    .param p0, "rootView"    # Landroid/view/View;

    .line 83
    move-object/from16 v0, p0

    const v1, 0x7f0a0406

    .line 84
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 85
    .local v2, "legoSensorConfigInfoDisableShowDialog":Landroid/widget/CheckBox;
    if-eqz v2, :cond_5

    .line 89
    const v1, 0x7f0a0407

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/TextView;

    .line 91
    .local v11, "legoSensorConfigInfoPort1Mapping":Landroid/widget/TextView;
    if-eqz v11, :cond_4

    .line 95
    const v1, 0x7f0a0408

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/TextView;

    .line 97
    .local v12, "legoSensorConfigInfoPort2Mapping":Landroid/widget/TextView;
    if-eqz v12, :cond_3

    .line 101
    const v1, 0x7f0a0409

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/TextView;

    .line 103
    .local v13, "legoSensorConfigInfoPort3Mapping":Landroid/widget/TextView;
    if-eqz v13, :cond_2

    .line 107
    const v1, 0x7f0a040a

    .line 108
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    .line 109
    .local v14, "legoSensorConfigInfoPort4Mapping":Landroid/widget/TextView;
    if-eqz v14, :cond_1

    .line 113
    const v1, 0x7f0a040b

    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    .line 115
    .local v15, "legoSensorConfigInfoText":Landroid/widget/TextView;
    if-eqz v15, :cond_0

    .line 119
    new-instance v16, Lorg/catrobat/catroid/databinding/DialogLegoSensorConfigInfoBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    move-object/from16 v3, v16

    move-object v5, v2

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    invoke-direct/range {v3 .. v10}, Lorg/catrobat/catroid/databinding/DialogLegoSensorConfigInfoBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v16

    .line 116
    :cond_0
    goto :goto_0

    .line 110
    .end local v15    # "legoSensorConfigInfoText":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 104
    .end local v14    # "legoSensorConfigInfoPort4Mapping":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 98
    .end local v13    # "legoSensorConfigInfoPort3Mapping":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 92
    .end local v12    # "legoSensorConfigInfoPort2Mapping":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 86
    .end local v11    # "legoSensorConfigInfoPort1Mapping":Landroid/widget/TextView;
    :cond_5
    nop

    .line 124
    .end local v2    # "legoSensorConfigInfoDisableShowDialog":Landroid/widget/CheckBox;
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

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/DialogLegoSensorConfigInfoBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/DialogLegoSensorConfigInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/DialogLegoSensorConfigInfoBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/DialogLegoSensorConfigInfoBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 70
    const v0, 0x7f0d012f

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
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/DialogLegoSensorConfigInfoBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/DialogLegoSensorConfigInfoBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/DialogLegoSensorConfigInfoBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/DialogLegoSensorConfigInfoBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
