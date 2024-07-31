.class public final Lorg/catrobat/catroid/databinding/BrickEv3MotorTurnAngleBinding;
.super Ljava/lang/Object;
.source "BrickEv3MotorTurnAngleBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final brickCheckbox:Landroid/widget/CheckBox;

.field public final brickEv3MotorTurnAngle:Landroid/widget/TextView;

.field public final brickEv3MotorTurnDegree:Landroid/widget/TextView;

.field public final brickEv3MotorTurnLabel:Landroid/widget/TextView;

.field public final brickEv3MotorTurnLayout:Lorg/catrobat/catroid/ui/BrickLayout;

.field public final ev3MotorTurnAngleEditText:Landroid/widget/TextView;

.field public final legoEv3MotorTurnAngleSpinner:Landroid/widget/Spinner;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "brickCheckbox"    # Landroid/widget/CheckBox;
    .param p3, "brickEv3MotorTurnAngle"    # Landroid/widget/TextView;
    .param p4, "brickEv3MotorTurnDegree"    # Landroid/widget/TextView;
    .param p5, "brickEv3MotorTurnLabel"    # Landroid/widget/TextView;
    .param p6, "brickEv3MotorTurnLayout"    # Lorg/catrobat/catroid/ui/BrickLayout;
    .param p7, "ev3MotorTurnAngleEditText"    # Landroid/widget/TextView;
    .param p8, "legoEv3MotorTurnAngleSpinner"    # Landroid/widget/Spinner;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/BrickEv3MotorTurnAngleBinding;->rootView:Landroid/widget/LinearLayout;

    .line 51
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/BrickEv3MotorTurnAngleBinding;->brickCheckbox:Landroid/widget/CheckBox;

    .line 52
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/BrickEv3MotorTurnAngleBinding;->brickEv3MotorTurnAngle:Landroid/widget/TextView;

    .line 53
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/BrickEv3MotorTurnAngleBinding;->brickEv3MotorTurnDegree:Landroid/widget/TextView;

    .line 54
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/BrickEv3MotorTurnAngleBinding;->brickEv3MotorTurnLabel:Landroid/widget/TextView;

    .line 55
    iput-object p6, p0, Lorg/catrobat/catroid/databinding/BrickEv3MotorTurnAngleBinding;->brickEv3MotorTurnLayout:Lorg/catrobat/catroid/ui/BrickLayout;

    .line 56
    iput-object p7, p0, Lorg/catrobat/catroid/databinding/BrickEv3MotorTurnAngleBinding;->ev3MotorTurnAngleEditText:Landroid/widget/TextView;

    .line 57
    iput-object p8, p0, Lorg/catrobat/catroid/databinding/BrickEv3MotorTurnAngleBinding;->legoEv3MotorTurnAngleSpinner:Landroid/widget/Spinner;

    .line 58
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickEv3MotorTurnAngleBinding;
    .locals 19
    .param p0, "rootView"    # Landroid/view/View;

    .line 87
    move-object/from16 v0, p0

    const v1, 0x7f0a00a9

    .line 88
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 89
    .local v2, "brickCheckbox":Landroid/widget/CheckBox;
    if-eqz v2, :cond_6

    .line 93
    const v1, 0x7f0a010c

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/TextView;

    .line 95
    .local v12, "brickEv3MotorTurnAngle":Landroid/widget/TextView;
    if-eqz v12, :cond_5

    .line 99
    const v1, 0x7f0a010d

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/TextView;

    .line 101
    .local v13, "brickEv3MotorTurnDegree":Landroid/widget/TextView;
    if-eqz v13, :cond_4

    .line 105
    const v1, 0x7f0a010e

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    .line 107
    .local v14, "brickEv3MotorTurnLabel":Landroid/widget/TextView;
    if-eqz v14, :cond_3

    .line 111
    const v1, 0x7f0a010f

    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lorg/catrobat/catroid/ui/BrickLayout;

    .line 113
    .local v15, "brickEv3MotorTurnLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    if-eqz v15, :cond_2

    .line 117
    const v1, 0x7f0a0378

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/TextView;

    .line 119
    .local v16, "ev3MotorTurnAngleEditText":Landroid/widget/TextView;
    if-eqz v16, :cond_1

    .line 123
    const v1, 0x7f0a03ff

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/Spinner;

    .line 125
    .local v17, "legoEv3MotorTurnAngleSpinner":Landroid/widget/Spinner;
    if-eqz v17, :cond_0

    .line 129
    new-instance v18, Lorg/catrobat/catroid/databinding/BrickEv3MotorTurnAngleBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v18

    move-object v5, v2

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    invoke-direct/range {v3 .. v11}, Lorg/catrobat/catroid/databinding/BrickEv3MotorTurnAngleBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/catrobat/catroid/ui/BrickLayout;Landroid/widget/TextView;Landroid/widget/Spinner;)V

    return-object v18

    .line 126
    :cond_0
    goto :goto_0

    .line 120
    .end local v17    # "legoEv3MotorTurnAngleSpinner":Landroid/widget/Spinner;
    :cond_1
    goto :goto_0

    .line 114
    .end local v16    # "ev3MotorTurnAngleEditText":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 108
    .end local v15    # "brickEv3MotorTurnLayout":Lorg/catrobat/catroid/ui/BrickLayout;
    :cond_3
    goto :goto_0

    .line 102
    .end local v14    # "brickEv3MotorTurnLabel":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 96
    .end local v13    # "brickEv3MotorTurnDegree":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 90
    .end local v12    # "brickEv3MotorTurnAngle":Landroid/widget/TextView;
    :cond_6
    nop

    .line 133
    .end local v2    # "brickCheckbox":Landroid/widget/CheckBox;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/BrickEv3MotorTurnAngleBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/BrickEv3MotorTurnAngleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickEv3MotorTurnAngleBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/BrickEv3MotorTurnAngleBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 74
    const v0, 0x7f0d0076

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/BrickEv3MotorTurnAngleBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/BrickEv3MotorTurnAngleBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/BrickEv3MotorTurnAngleBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/BrickEv3MotorTurnAngleBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
