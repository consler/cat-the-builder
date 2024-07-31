.class public Lorg/catrobat/catroid/content/actions/SetInstrumentAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SetInstrumentAction.java"


# instance fields
.field selectedInstrument:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public setInstrument(Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;)V
    .locals 0
    .param p1, "selectedInstrument"    # Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 42
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetInstrumentAction;->selectedInstrument:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    .line 43
    return-void
.end method

.method protected update(F)V
    .locals 2
    .param p1, "percent"    # F

    .line 37
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetInstrumentAction;->selectedInstrument:Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/PickableMusicalInstrument;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;->getInstrumentFromProgram(I)Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    move-result-object v0

    .line 38
    .local v0, "instrument":Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->getInstance()Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->setInstrument(Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;)V

    .line 39
    return-void
.end method
