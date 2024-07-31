.class public Lorg/catrobat/catroid/content/actions/PlayDrumForBeatsAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "PlayDrumForBeatsAction.java"


# instance fields
.field private beats:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private selectedDrum:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected begin()V
    .locals 4

    .line 45
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PlayDrumForBeatsAction;->selectedDrum:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/note/Drum;->getDrumFromProgram(I)Lorg/catrobat/catroid/pocketmusic/note/Drum;

    move-result-object v0

    .line 46
    .local v0, "drum":Lorg/catrobat/catroid/pocketmusic/note/Drum;
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/PlayDrumForBeatsAction;->beats:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/PlayDrumForBeatsAction;->beats:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/PlayDrumForBeatsAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretFloat(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Float;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 47
    .local v1, "playedBeats":F
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->getInstance()Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/PlayDrumForBeatsAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->playDrumForBeats(Lorg/catrobat/catroid/pocketmusic/note/Drum;FLorg/catrobat/catroid/content/Sprite;)V

    .line 48
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->getInstance()Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->getDurationForBeats(F)J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-super {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->setDuration(F)V
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v0    # "drum":Lorg/catrobat/catroid/pocketmusic/note/Drum;
    .end local v1    # "playedBeats":F
    goto :goto_1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Formula interpretation for this specific Brick failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .end local v0    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_1
    return-void
.end method

.method public setBeats(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "beats"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 63
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PlayDrumForBeatsAction;->beats:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 64
    return-void
.end method

.method public setDrum(Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;)V
    .locals 0
    .param p1, "selectedDrum"    # Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    .line 59
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PlayDrumForBeatsAction;->selectedDrum:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableDrum;

    .line 60
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 55
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PlayDrumForBeatsAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 56
    return-void
.end method

.method protected update(F)V
    .locals 0
    .param p1, "percent"    # F

    .line 68
    return-void
.end method
