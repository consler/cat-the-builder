.class public Lorg/catrobat/catroid/content/bricks/JumpingSumoAnimationsBrick;
.super Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.source "JumpingSumoAnimationsBrick.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/JumpingSumoAnimationsBrick$Animation;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private animationName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    .line 49
    sget-object v0, Lorg/catrobat/catroid/content/bricks/JumpingSumoAnimationsBrick$Animation;->SPIN:Lorg/catrobat/catroid/content/bricks/JumpingSumoAnimationsBrick$Animation;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/JumpingSumoAnimationsBrick$Animation;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/JumpingSumoAnimationsBrick;->animationName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/bricks/JumpingSumoAnimationsBrick$Animation;)V
    .locals 1
    .param p1, "animation"    # Lorg/catrobat/catroid/content/bricks/JumpingSumoAnimationsBrick$Animation;

    .line 52
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    .line 53
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/bricks/JumpingSumoAnimationsBrick$Animation;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/JumpingSumoAnimationsBrick;->animationName:Ljava/lang/String;

    .line 54
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
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 65
    const v0, 0x7f030003

    const v1, 0x1090008

    invoke-static {p1, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 67
    .local v0, "spinnerAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 69
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/JumpingSumoAnimationsBrick;->view:Landroid/view/View;

    const v2, 0x7f0a0146

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 70
    .local v1, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 71
    new-instance v2, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;

    new-instance v3, Lorg/catrobat/catroid/content/bricks/-$$Lambda$JumpingSumoAnimationsBrick$sxLqV5kgrghosaOS1JmQ4Z-woCI;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/content/bricks/-$$Lambda$JumpingSumoAnimationsBrick$sxLqV5kgrghosaOS1JmQ4Z-woCI;-><init>(Lorg/catrobat/catroid/content/bricks/JumpingSumoAnimationsBrick;)V

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 75
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/JumpingSumoAnimationsBrick;->animationName:Ljava/lang/String;

    invoke-static {v2}, Lorg/catrobat/catroid/content/bricks/JumpingSumoAnimationsBrick$Animation;->valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/JumpingSumoAnimationsBrick$Animation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/bricks/JumpingSumoAnimationsBrick$Animation;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 76
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/JumpingSumoAnimationsBrick;->view:Landroid/view/View;

    return-object v2
.end method

.method public getViewResource()I
    .locals 1

    .line 58
    const v0, 0x7f0d008c

    return v0
.end method

.method public synthetic lambda$getView$0$JumpingSumoAnimationsBrick(Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 2
    .param p1, "position"    # Ljava/lang/Integer;

    .line 72
    invoke-static {}, Lorg/catrobat/catroid/content/bricks/JumpingSumoAnimationsBrick$Animation;->values()[Lorg/catrobat/catroid/content/bricks/JumpingSumoAnimationsBrick$Animation;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/JumpingSumoAnimationsBrick$Animation;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/JumpingSumoAnimationsBrick;->animationName:Ljava/lang/String;

    .line 73
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
