.class public Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "JumpingSumoSoundBrick.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private soundName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 50
    sget-object v0, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;->DEFAULT:Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick;->soundName:Ljava/lang/String;

    .line 51
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->JUMPING_SUMO_VOLUME:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0163

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;I)V
    .locals 2
    .param p1, "soundEnum"    # Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;
    .param p2, "volumeInPercent"    # I

    .line 55
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {p0, p1, v0}, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick;-><init>(Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "soundEnum"    # Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;
    .param p2, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 59
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick;-><init>()V

    .line 60
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick;->soundName:Ljava/lang/String;

    .line 61
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->JUMPING_SUMO_VOLUME:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 62
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 89
    return-void
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 73
    const v0, 0x7f030004

    const v1, 0x1090008

    invoke-static {p1, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 75
    .local v0, "spinnerAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 77
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick;->view:Landroid/view/View;

    const v2, 0x7f0a0165

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 78
    .local v1, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 79
    new-instance v2, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;

    new-instance v3, Lorg/catrobat/catroid/content/bricks/-$$Lambda$JumpingSumoSoundBrick$hDzovuapLe7ITlQOK4M68IxhJhc;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/content/bricks/-$$Lambda$JumpingSumoSoundBrick$hDzovuapLe7ITlQOK4M68IxhJhc;-><init>(Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick;)V

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 83
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick;->soundName:Ljava/lang/String;

    invoke-static {v2}, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;->valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 84
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick;->view:Landroid/view/View;

    return-object v2
.end method

.method public getViewResource()I
    .locals 1

    .line 66
    const v0, 0x7f0d0094

    return v0
.end method

.method public synthetic lambda$getView$0$JumpingSumoSoundBrick(Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 2
    .param p1, "position"    # Ljava/lang/Integer;

    .line 80
    invoke-static {}, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;->values()[Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick$Sounds;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick;->soundName:Ljava/lang/String;

    .line 81
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
