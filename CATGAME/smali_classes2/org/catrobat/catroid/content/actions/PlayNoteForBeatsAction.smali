.class public Lorg/catrobat/catroid/content/actions/PlayNoteForBeatsAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "PlayNoteForBeatsAction.java"


# instance fields
.field private beats:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private midiValue:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected begin()V
    .locals 4

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "playedMidiValue":I
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/PlayNoteForBeatsAction;->midiValue:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/PlayNoteForBeatsAction;->midiValue:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/PlayNoteForBeatsAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v0, v1

    .line 47
    :cond_0
    const/4 v1, 0x0

    .line 48
    .local v1, "playedBeats":F
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/PlayNoteForBeatsAction;->beats:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v2, :cond_1

    .line 49
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/PlayNoteForBeatsAction;->beats:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/PlayNoteForBeatsAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretFloat(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move v1, v2

    .line 51
    :cond_1
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->getInstance()Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->playNoteForBeats(IF)V

    .line 52
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

    .line 55
    .end local v0    # "playedMidiValue":I
    .end local v1    # "playedBeats":F
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Formula interpretation for this specific Brick failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .end local v0    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_0
    return-void
.end method

.method public setBeats(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "beats"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 67
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PlayNoteForBeatsAction;->beats:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 68
    return-void
.end method

.method public setMidiValue(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "midiValue"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 63
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PlayNoteForBeatsAction;->midiValue:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 64
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 59
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PlayNoteForBeatsAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 60
    return-void
.end method

.method protected update(F)V
    .locals 0
    .param p1, "percent"    # F

    .line 72
    return-void
.end method
