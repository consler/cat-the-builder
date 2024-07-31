.class public Lorg/catrobat/catroid/content/bricks/DronePlayLedAnimationBrick;
.super Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.source "DronePlayLedAnimationBrick.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private ledAnimationName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/DronePlayLedAnimationBrick;->ledAnimationName:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 81
    return-void
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 58
    const v0, 0x7f030002

    const v1, 0x1090008

    invoke-static {p1, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 60
    .local v1, "animationAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 61
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/DronePlayLedAnimationBrick;->view:Landroid/view/View;

    const v3, 0x7f0a00ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 62
    .local v2, "animationSpinner":Landroid/widget/Spinner;
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 63
    new-instance v3, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;

    new-instance v4, Lorg/catrobat/catroid/content/bricks/-$$Lambda$DronePlayLedAnimationBrick$Ob0JWlKofn65yGeuItZJE52CqXI;

    invoke-direct {v4, p0, p1}, Lorg/catrobat/catroid/content/bricks/-$$Lambda$DronePlayLedAnimationBrick$Ob0JWlKofn65yGeuItZJE52CqXI;-><init>(Lorg/catrobat/catroid/content/bricks/DronePlayLedAnimationBrick;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 68
    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/DronePlayLedAnimationBrick;->ledAnimationName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, "spinnerArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/DronePlayLedAnimationBrick;->ledAnimationName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 76
    .end local v0    # "spinnerArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/DronePlayLedAnimationBrick;->view:Landroid/view/View;

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 52
    const v0, 0x7f0d006d

    return v0
.end method

.method public synthetic lambda$getView$0$DronePlayLedAnimationBrick(Landroid/content/Context;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # Ljava/lang/Integer;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/DronePlayLedAnimationBrick;->ledAnimationName:Ljava/lang/String;

    .line 66
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
